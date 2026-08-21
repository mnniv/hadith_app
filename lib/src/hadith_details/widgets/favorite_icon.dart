import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gharib/core/Theming/Colors/colors.dart';
import 'package:gharib/src/favorite/data/datasources/local_data_source.dart';
import 'package:gharib/src/favorite/presentation/addBloc/add_favorite_bloc.dart';
import 'package:gharib/src/favorite/presentation/addBloc/add_favorite_event.dart';
import 'package:gharib/src/favorite/presentation/delete%20bloc/delete_favorite_bloc.dart';
import 'package:gharib/src/favorite/presentation/delete%20bloc/delete_favorite_event.dart';
import 'package:gharib/src/home/domin/entity/hadith_entity.dart';

class FavoriteIconButton extends StatefulWidget {
  final HadithEntity hadith;

  const FavoriteIconButton({super.key, required this.hadith});

  @override
  State<FavoriteIconButton> createState() => _FavoriteIconButtonState();
}

class _FavoriteIconButtonState extends State<FavoriteIconButton> {
  bool isFavorite = false;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _checkFavoriteStatus();
  }

  Future<void> _checkFavoriteStatus() async {
    final status = await LocalDataFavoritePage().isHadithFavorited(
      widget.hadith.text,
    );
    if (mounted) {
      setState(() {
        isFavorite = status;
        isLoading = false;
      });
    }
  }

  Future<void> _toggleFavorite() async {
    // Optimistically update UI
    setState(() {
      isFavorite = !isFavorite;
    });

    if (!isFavorite) {
      // Remove from favorites
       context.read<DeleteFavoriteBloc>().add(
        DeleteFavorite(hadithText: widget.hadith.text, context: context),
      );
      //await LocalDataFavoritePage().removeCachedHadith(widget.hadith.text);
    } else {
      // Add to favorites via BLoC or helper directly
      context.read<AddFavoriteBloc>().add(
        AddFavorite(hadith: widget.hadith, context: context),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: SizedBox(
          width: 24.sp,
          height: 24.sp,
          child: const CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    return InkWell(
      onTap: _toggleFavorite,
      borderRadius: BorderRadius.circular(16.r),
      child: Container(
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: isFavorite ? Colors.red : AppColors.foreground,
          size: 24.sp,
        ),
      ),
    );
  }
}
