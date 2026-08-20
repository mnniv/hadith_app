import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/utils.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/src/favorite/presentation/screens/favorite_page.dart';
import 'package:gharib/src/home/presentation/main_bloc/main_bloc.dart';
import 'package:gharib/src/home/presentation/main_bloc/main_state.dart';
import 'package:gharib/src/home/presentation/screens/home_page.dart';
import 'package:gharib/src/home/presentation/widgets/custom_bnvb.dart';
import 'package:gharib/src/verfiy/presentation/screens/verify_page.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/SharedWidgets/alert_exit_dialog.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  late final pages = [HomePage(), VerifyPage(), FavoritePage()];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavBarBloc(),
      child: BlocBuilder<NavBarBloc, NavBarState>(
        builder: (context, state) {
          return PopScope(
            canPop: false,
            onPopInvokedWithResult: (didPop, result) async {
              if (didPop) return;

              final shouldExit = await showExitConfirmationDialog(
                context: context,
                title: 'quit_registration_title'.tr,
                content: 'quit_registration_content'.tr,
                confirmText: 'confirm_quit'.tr,
                cancelText: 'annuler'.tr,
                bottonFunctionConfirmation: () {
                  context.pop(true);
                },
                bottonFunctionCansled: () {
                  context.pop(false);
                },
              );
              if (shouldExit && context.mounted) {
                context.pop();
              }
            },
            child: Scaffold(
              backgroundColor: AppColors.background,
              body: pages[state.selectedIndex],
              bottomNavigationBar: CustomBnvb(),
            ),
          );
        },
      ),
    );
  }
}
