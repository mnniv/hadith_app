import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/SharedWidgets/simple_snackbar.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/favorite/presentation/widgets/error_state.dart';
import 'package:gharib/src/home/presentation/bloc/search_bloc.dart';
import 'package:gharib/src/home/presentation/bloc/search_event.dart';
import 'package:gharib/src/home/presentation/bloc/search_state.dart';
import 'package:gharib/src/home/presentation/widgets/container_card.dart';
import 'package:gharib/src/home/presentation/widgets/hadith_card.dart';
import 'package:gharib/src/home/presentation/widgets/hadith_card_shimmer.dart';
import 'package:gharib/src/home/presentation/widgets/no_resault.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return BlocProvider(
      create: (context) => SearchBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            backgroundColor: AppColors.background,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),

                      Image.asset('assets/img/home.png', height: 170.h),
                      SizedBox(height: 20.h),

                      Text(
                        'منصة علمية للتحقق من صحة الأحاديث النبوية',
                        style: TextStyleManger.BlackTitle.copyWith(
                          color: AppColors.gold,
                          fontSize: 16.sp,
                          fontFamily: GoogleFonts.cairo().fontFamily,
                        ),
                      ),
                      SizedBox(height: 60.h),

                      ContainerCard(
                        child: Column(
                          children: [
                            TextField(
                              controller: controller,
                              maxLines: 5,
                              style: TextStyleManger.BlackTitle.copyWith(
                                color: ColorManger.whiteColor,
                                fontSize: 14.sp,
                                fontFamily: GoogleFonts.amiri().fontFamily,
                              ),
                              textDirection: TextDirection.rtl,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                hint: Text(
                                  'ادخل نص الحديث هنا ...',
                                  style: TextStyleManger.BlackTitle.copyWith(
                                    color: ColorManger.whiteColor,
                                    fontSize: 20.sp,
                                    fontFamily: GoogleFonts.amiri().fontFamily,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),

                            InkWell(
                              onTap: () {
                                final query = controller.text.trim();

                                if (query.isEmpty) {
                                  showSnackbar(
                                    context,
                                    'خطأ',
                                    'يرجى إدخال نص للبحث',
                                  );
                                  return;
                                }

                                final arabicRegex = RegExp(
                                  r'^[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF\s،؛؟!,.:\-]+$',
                                );

                                if (!arabicRegex.hasMatch(query)) {
                                  showSnackbar(
                                    context,
                                    'خطأ',
                                    ' يرجى إدخال نص باللغة العربية فقط',
                                  );

                                  return;
                                }

                                context.read<SearchBloc>().add(
                                  SearchHadith(query: query),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                  vertical: 10.h,
                                ),
                                width: 130.w,
                                decoration: BoxDecoration(
                                  color: AppColors.chart1,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'تحقق',
                                      textDirection: TextDirection.rtl,
                                      style: TextStyleManger
                                          .BlackTitle.copyWith(fontSize: 14.sp),
                                    ),
                                    SizedBox(width: 6.w),
                                    Icon(CupertinoIcons.search, size: 17.sp),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),

                      BlocBuilder<SearchBloc, SearchState>(
                        builder: (context, state) {
                          if (state is SearchLoading) {
                            return ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 8,
                              separatorBuilder: (_, __) => SizedBox(height: 20),
                              itemBuilder: (_, _) => HadithCardShimmer(),
                            );
                          }

                          if (state is NoInternet) {
                            return Text('No internet');
                          }

                          if (state is Error) {
                            return ErrorFavorite(
                              errorMessage:
                                  'حدثت مشكلة أثناء عرض النتائج , يرجى إعادة المحاولة .',
                              onRetry: () => context.read<SearchBloc>().add(
                                SearchHadith(query: controller.text.trim()),
                              ),
                            );
                          }
                          if (state is SearchSeccess) {
                            final Hadiths = state.result;

                            if (Hadiths != null) {
                              if (Hadiths.hadiths.isEmpty) {
                                return NoResaultFound();
                              }

                              return Column(
                                children: [
                                  Text(
                                    'وجدنا ${Hadiths.hadiths.length} نتيجة مشابهة، معروضة حسب نسبة المطابقة.',
                                    style: TextStyleManger.BlackTitle.copyWith(
                                      color: AppColors.foreground,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 20.h),
                                  ListView.separated(
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: Hadiths.hadiths.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 10),
                                    itemBuilder: (context, index) {
                                      final hadith = Hadiths.hadiths[index];
                                      return HadithCard(hadith: hadith);
                                    },
                                  ),
                                ],
                              );
                            }
                          }
                          return SizedBox();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
