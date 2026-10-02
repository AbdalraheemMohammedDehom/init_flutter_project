// lib/core/theme/app_colors.dart

import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // اللون الأساسي مأخوذ مباشرة من اللوقو (كوفة التخرج + القلم)
  static const Color primary = Color(0xFF1F4E79);
  static const Color primaryLight = Color(
    0xFF3B7EA1,
  ); // درجة أفتح: hover/secondary buttons
  static const Color primaryDark = Color(
    0xFF15374F,
  ); // درجة أغمق: pressed states/شريط علوي داكن

  // درجات الخلفية الداكنة (Dark Surfaces) مشتقة من نفس درجة الأزرق
  static const Color ink = Color(0xFF0F2A3F);
  static const Color ink2 = Color(0xFF16324A);

  // الخلفية الفاتحة (Light Surfaces) — أبيض بارد يتماشى مع برودة الأزرق
  static const Color paper = Color(0xFFF6F8FA);
  static const Color border = Color(0xFFDCE3EA);

  // النصوص
  static const Color textDark = Color(
    0xFF15243A,
  ); // شبه كحلي، أدفأ قليلاً من الأسود الصرف
  static const Color slate = Color(
    0xFF64748B,
  ); // رمادي بلمسة زرقاء بدل الرمادي المحايد

  // لون الإنجاز/XP — ذهبي كلاسيكي يقابل الأزرق الأكاديمي (نفس ثنائية الأزرق/الذهبي الشائعة
  // في شعارات الجامعات وشرائط التخرج)
  static const Color gold = Color(0xFFC98A2E);

  // إجابة صحيحة / نجاح — أخضر بميلان بارد ليبقى منسجم مع برودة الأزرق الأساسي
  static const Color success = Color(0xFF1E8E5A);

  // إجابة خاطئة / خطر
  static const Color danger = Color(0xFFC0392B);
}
