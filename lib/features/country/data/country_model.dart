import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

final List<String> arabCountryCodes = [
  "DZ", // الجزائر
  "BH", // البحرين
  "KM", // جزر القمر
  "DJ", // جيبوتي
  "EG", // مصر
  "IQ", // العراق
  "JO", // الأردن
  "KW", // الكويت
  "LB", // لبنان
  "LY", // ليبيا
  "MR", // موريتانيا
  "MA", // المغرب
  "OM", // عُمان
  "PS", // فلسطين
  "QA", // قطر
  "SA", // السعودية
  "SO", // الصومال
  "SD", // السودان
  "SY", // سوريا
  "TN", // تونس
  "AE", // الإمارات
  "YE", // اليمن
];

Map<String, String> arabCountriesMap(BuildContext context) => {
  "DZ": S.of(context).country_DZ,
  "BH": S.of(context).country_BH,
  "KM": S.of(context).country_KM,
  "DJ": S.of(context).country_DJ,
  "EG": S.of(context).country_EG,
  "IQ": S.of(context).country_IQ,
  "JO": S.of(context).country_JO,
  "KW": S.of(context).country_KW,
  "LB": S.of(context).country_LB,
  "LY": S.of(context).country_LY,
  "MR": S.of(context).country_MR,
  "MA": S.of(context).country_MA,
  "OM": S.of(context).country_OM,
  "PS": S.of(context).country_PS,
  "QA": S.of(context).country_QA,
  "SA": S.of(context).country_SA,
  "SO": S.of(context).country_SO,
  "SD": S.of(context).country_SD,
  "SY": S.of(context).country_SY,
  "TN": S.of(context).country_TN,
  "AE": S.of(context).country_AE,
  "YE": S.of(context).country_YE,
};
