import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gharib/core/SharedWidgets/simple_snackbar.dart';
import 'package:gharib/src/home/presentation/bloc/search_bloc.dart';
import 'package:gharib/src/home/presentation/bloc/search_event.dart';
import 'package:gharib/src/home/presentation/bloc/search_state.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: Builder(
        builder: (context) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Enter hadith : '),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(width: 1),
                      ),
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(hintText: 'Search ...'),
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        final query = controller.text.trim();

                        if (query.isEmpty) {
                          showSnackbar(context, 'خطأ', 'يرجى إدخال نص للبحث');
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
                        padding: EdgeInsets.all(10),
                        color: Colors.blue,
                        child: Center(child: Text('Press')),
                      ),
                    ),
                    SizedBox(height: 20),
                    BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, state) {
                        if (state is SearchInitial) {
                          return ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 8,
                            separatorBuilder: (_, __) => SizedBox(height: 20),
                            //  itemBuilder: (_, _) => OrderItemShimmer(),
                            itemBuilder: (context, index) => SizedBox.shrink(),
                          );
                        }

                        if (state is NoInternet) {
                          return Text('No internet');
                        }

                        if (state is Error) {
                          return Text('Error');
                        }
                        if (state is SearchSeccess) {
                          final Hadiths = state.result;

                          if (Hadiths != null) {
                            if (Hadiths.hadiths.isEmpty) {
                              return Text('Empty');
                            }

                            return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: Hadiths.hadiths.length,
                              separatorBuilder: (_, __) => SizedBox(height: 10),
                              itemBuilder: (context, index) {
                                final hadith = Hadiths.hadiths[index];
                                return Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(hadith.text),
                                      Text(hadith.grade),
                                      Text(hadith.scholar),
                                      Text(hadith.source.name),
                                      Text(hadith.book),
                                    ],
                                  ),
                                );
                              },
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
          );
        },
      ),
    );
  }
}
