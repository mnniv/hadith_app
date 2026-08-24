import 'package:equatable/equatable.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object?> get props => [];
}

/// يبدأ بحثًا جديدًا من الصفحة الأولى
class SearchHadith extends SearchEvent {
  final String query;

  const SearchHadith({
    required this.query,
  });

  @override
  List<Object?> get props => [query];
}

/// تحميل الصفحة التالية من نفس البحث
class LoadMoreHadiths extends SearchEvent {
  const LoadMoreHadiths();
}