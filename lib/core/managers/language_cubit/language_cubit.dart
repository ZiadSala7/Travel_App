import 'package:flutter_bloc/flutter_bloc.dart';

import '../../databases/cach_helper.dart';
import '../../di/injection.dart';
import 'language_states.dart';

class LanguageCubit extends Cubit<LanguageStates> {
  LanguageCubit() : super(EnglishLanguage());

  final prefs = getIt.get<CacheHelper>();
  Future initLanguage() async {
    final isArabic = prefs.getBool('language') ?? false;
    emit(isArabic ? ArabicLanguage() : EnglishLanguage());
  }

  Future changeLanguage() async {
    var isArabic = prefs.getBool('language') ?? false;
    isArabic = !isArabic;
    prefs.setBool('language', isArabic);
    emit(isArabic ? ArabicLanguage() : EnglishLanguage());
  }
}
