class FAQ {
  final String question;
  final String answer;

  FAQ({required this.question, required this.answer});
}

// نموذج القسم
class FAQSection {
  final String title;
  final List<FAQ> faqs;

  FAQSection({required this.title, required this.faqs});
}

final List<FAQSection> sections = [
  FAQSection(
    title: "الحجوزات",
    faqs: [
      FAQ(
        question: "كيف أحجز رحلة؟",
        answer:
            "يمكنك حجز الرحلة من خلال اختيار الرحلة وإدخال بياناتك والدفع مباشرة عبر التطبيق.",
      ),
      FAQ(
        question: "كيف أغير أو ألغي الحجز؟",
        answer:
            "يمكنك تعديل أو إلغاء الحجز من خلال صفحة 'حجوزاتي' قبل موعد الرحلة وفقًا لشروط الحجز.",
      ),
    ],
  ),
  FAQSection(
    title: "الدفع والكوبونات",
    faqs: [
      FAQ(
        question: "ما هي طرق الدفع المتاحة؟",
        answer:
            "يدعم التطبيق الدفع بواسطة بطاقة الائتمان، التحويل البنكي، والمحافظ الإلكترونية.",
      ),
      FAQ(
        question: "كيف أستخدم الكوبونات أو الخصومات؟",
        answer:
            "يمكنك إدخال رمز الخصم أثناء الدفع لتطبيق التخفيض مباشرة على السعر.",
      ),
    ],
  ),
  FAQSection(
    title: "الإلغاء والاسترداد",
    faqs: [
      FAQ(
        question: "هل يمكن استرداد المبلغ إذا ألغيت الحجز؟",
        answer:
            "يعتمد على سياسة شركة الطيران أو الفندق، يرجى مراجعة شروط الحجز قبل الإلغاء.",
      ),
    ],
  ),
];
