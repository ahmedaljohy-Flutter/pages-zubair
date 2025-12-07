import 'package:flutter/material.dart';

class Tec_Sup_page extends StatelessWidget {
  const Tec_Sup_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.support_agent, size: 40, color: Colors.blue),
                      SizedBox(width: 12),
                      Text(
                        "الدعم الفني",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "نحن في متجر أحمد.فون نسعى لتقديم أفضل خدمة دعم فني لعملائنا الكرام. "
                        "يمكنك التواصل معنا لأي استفسار، مشكلة، أو شكوى بخصوص منتجاتنا من الهواتف الذكية، "
                        "الإكسسوارات، والسماعات. فريقنا المتخصص متواجد لمساعدتك على مدار الساعة "
                        "لضمان تجربة شراء سلسة ومريحة . \n"
                        "كما نود اشعاركم ان متجرنا لازال قيد التطوير والى الان لم نوفر خدمة الطلبات عبر المتجر بل لازال للعرض فقط .",
                    style: TextStyle(fontSize: 16, height: 1.6),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "طرق التواصل:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "• البريد الإلكتروني : [support@ahmedphone.com](mailto:support@ahmedphone.com)\n"
                        "• رقم الهاتف : 777-123-456\n"
                        "• واتساب : 777-654-321\n"
                        "• الموقع : حضرموت - القطن",
                    style: TextStyle(fontSize: 16, height: 1.5),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "ساعات العمل: من الأحد إلى الخميس، من الساعة 9 صباحًا حتى 6 مساءً",
                    style: TextStyle(fontSize: 16, height: 1.5),
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
