import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/SharedWidgets/alert_exit_dialog.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/core/Theming/Fonts/TextStyleManger.dart';
import 'package:gharib/src/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:gharib/src/favorite/presentation/bloc/favorite_event.dart';
import 'package:gharib/src/favorite/presentation/bloc/favorite_state.dart';
import 'package:gharib/src/favorite/presentation/delete%20bloc/delete_favorite_bloc.dart';
import 'package:gharib/src/favorite/presentation/delete%20bloc/delete_favorite_event.dart';
import 'package:gharib/src/favorite/presentation/widgets/Empty_favorite.dart';
import 'package:gharib/src/favorite/presentation/widgets/error_state.dart';
import 'package:gharib/src/favorite/presentation/widgets/favorite_card.dart';
import 'package:gharib/src/favorite/presentation/widgets/favorite_card_shimmer.dart';
import 'package:go_router/go_router.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FavoriteBloc()..add(GetFavorites())),
        BlocProvider(create: (context) => DeleteFavoriteBloc()),
      ],
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'المفضلة',
                    style: TextStyleManger.BlackTitle.copyWith(
                      color: AppColors.foreground,
                      fontSize: 22.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'محفوظة على جهازك فقط .',
                    style: TextStyleManger.BlackTitle.copyWith(
                      color: AppColors.gold,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),

                  BlocBuilder<FavoriteBloc, FavoriteState>(
                    builder: (context, state) {
                      if (state is GetFavoriteInitial) {
                        return ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: 8,
                          separatorBuilder: (_, __) => SizedBox(height: 20),
                          itemBuilder: (_, _) => FavoriteCardShimmer(),
                        );
                      }

                      if (state is FavoriteError) {
                        return ErrorFavorite(
                          onRetry: () =>
                              context.read<FavoriteBloc>().add(GetFavorites()),
                        );
                      }
                      if (state is FavoriteSeccess) {
                        final Hadiths = state.favorites;

                        if (Hadiths.isEmpty) {
                          return EmptyFavorite();
                        }

                        return ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: Hadiths.length,
                          separatorBuilder: (_, __) => SizedBox(height: 10),
                          itemBuilder: (context, index) {
                            final hadith = Hadiths[index];
                            return FavoriteCard(
                              hadith: hadith,
                              onDelete: () {
                                showExitConfirmationDialog(
                                  context: context,
                                  title: 'إزالة الحديث من المفضلة',
                                  content:
                                      'هل أنت متأكد من إازالة الحديث من المفضلة ؟',
                                  confirmText: 'إزالة',
                                  cancelText: 'إلغاء',
                                  bottonFunctionCansled: () {
                                    context.pop();
                                  },
                                  bottonFunctionConfirmation: () {
                                    context.read<DeleteFavoriteBloc>().add(
                                      DeleteFavorite(
                                        hadithText: hadith.text,
                                        context: context,
                                      ),
                                    );

                                    context.pop();
                                  },
                                );
                              },
                            );
                          },
                        );
                      }
                      return SizedBox();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
