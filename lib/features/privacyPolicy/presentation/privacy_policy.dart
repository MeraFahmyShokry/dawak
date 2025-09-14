// import 'package:clean_arc/core/presentation/component/CustomAppBar.dart';
// import 'package:flutter/material.dart';

// class PrivacyPolicyView extends StatelessWidget {
//   String title;

//   PrivacyPolicyView({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(title: title),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             children: [
//               Text('''1. المعلومات التي نقوم بجمعها:
// معلومات شخصية: مثل الاسم، رقم الهاتف، البريد الإلكتروني، وغيرها من المعلومات التي تقدمها عند التسجيل أو التواصل معنا.

// معلومات استخدام: مثل الصفحات التي تزورها، الوقت الذي تقضيه داخل التطبيق، نوع الجهاز، عنوان IP، وغيرها من البيانات التقنية.

// موقعك الجغرافي (إن وجد): إذا قمت بالسماح بذلك، نقوم بجمع موقعك لتحسين تجربتك في التطبيق.

// 2. كيفية استخدام المعلومات:
// لتقديم وتحسين خدماتنا.

// للتواصل معك بشأن التحديثات أو الدعم الفني أو العروض الخاصة.

// لتحليل استخدام التطبيق وتحسين الأداء.

// لحماية أمان التطبيق ومنع الاحتيال.

// 3. مشاركة المعلومات:
// نحن لا نشارك معلوماتك الشخصية مع أطراف ثالثة إلا في الحالات التالية:

// إذا كان ذلك مطلوبًا بموجب القانون.

// مع مزودي الخدمات المعتمدين الذين يساعدوننا في تشغيل التطبيق (بموجب اتفاقيات تحمي خصوصيتك).

// في حال دمج أو بيع التطبيق لكيان آخر، مع إعلامك بذلك.

// 4. أمان المعلومات:
// نستخدم تدابير أمنية مناسبة لحماية معلوماتك من الوصول أو الاستخدام أو التعديل أو الإتلاف غير المصرح به.

// 5. حقوقك:
// لك الحق في الوصول إلى معلوماتك الشخصية أو تعديلها أو حذفها.

// يمكنك سحب موافقتك في أي وقت فيما يتعلق بجمع أو استخدام بياناتك.

// 6. ملفات تعريف الارتباط (Cookies):
// قد نستخدم ملفات تعريف الارتباط لتحسين تجربة الاستخدام. يمكنك تعطيلها من إعدادات المتصفح الخاص بك.

// 7. تعديلات سياسة الخصوصية:
// قد نقوم بتحديث هذه السياسة من وقت لآخر. سيتم إعلامك بأي تغييرات مهمة، ويُفضل مراجعتها بشكل دوري.

// 8. الاتصال بنا:
// إذا كان لديك أي أسئلة أو استفسارات بشأن سياسة الخصوصية، يرجى التواصل معنا عبر:

// 📧 البريد الإلكتروني: [ضع بريدك هنا]
// 📞 رقم الهاتف: [ضع رقمك هنا]''')
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/app_dimensions.dart';
import 'package:clean_arc/core/presentation/util/style/fonts/font_weight_helper.dart';
import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyView extends StatelessWidget {
  final String title;

  PrivacyPolicyView({super.key, required this.title});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sectionTitle(
              context,
              context.translate.title + " :",
            ),
            sectionParagraph(context),
            const SizedBox(height: 16),
            sectionTitle(
              context,
              context.translate.title + " :",
            ),
            sectionBulletPoints(context),
            const SizedBox(height: 16),
            sectionTitle(context, "استثناء قد يحدث في بعض الأحيان:"),
            sectionParagraph(context),
            const SizedBox(height: 16),
            sectionTitle(
              context,
              context.translate.title + " :",
            ),
            sectionBulletPoints(context),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(BuildContext context, String title) {
    return TextApp(
      title,
      style: TextStyle(
        fontWeight: FontWeightHelper.bold,
        fontSize: AppDimensions.fontSizeDefault,
        color: context.color.titleColor,
      ),
    );
  }

  Widget sectionParagraph(BuildContext context) {
    return TextApp(
      'لوريم إيبسوم هو نص شكلي يُستخدم في صناعة الطباعة والتنضيد. '
      'يُستخدم كنص تعبئة افتراضي منذ القرن الخامس عشر. '
      'عند استخدام هذا النص، يُمكن للقارئ التركيز على التصميم دون تشتيت الانتباه بالمحتوى الفعلي. '
      'هذا النص يُظهر شكل النص في الصفحة، لكنه لا يحمل أي معنى.',
      style: TextStyle(
          fontSize: AppDimensions.fontSizeDefault,
          color: context.color.primaryColor,
          height: 1.4),
    );
  }

  Widget sectionBulletPoints(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        bulletPoint(context, "لوريم إيبسوم هو نص شكلي يُستخدم في التصميم."),
        bulletPoint(
            context, "يتم استخدامه لتعبئة النصوص في الصفحات التجريبية."),
        bulletPoint(
            context, "يساعد في إظهار شكل النص الحقيقي بدون محتوى فعلي."),
      ],
    );
  }

  static Widget bulletPoint(BuildContext context, String text) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextApp("• ", style: TextStyle(fontSize: 16)),
          Expanded(
            child: TextApp(
              text,
              style: TextStyle(
                  fontSize: AppDimensions.fontSizeDefault,
                  color: context.color.primaryColor,
                  height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
