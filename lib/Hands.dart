import 'package:flutter/material.dart';
import 'product_details_page.dart'; // تأكد من المسار الصحيح

class Hands extends StatelessWidget {
  const Hands({super.key});

  final List<Map<String, String>> audioProducts = const [
    {
      'name': "سماعات AirPods Pro",
      'subtitle': "إلغاء ضوضاء • شحن MagSafe",
      'image': "images/hand2.webp",
      'price': "249\$",
      'details': "• إلغاء الضوضاء النشط\n• وضع الشفافية\n• مقاومة التعرّق\n• بطارية 6 ساعات",
    },
    {
      'name': "سماعات SAM ",
      'subtitle': "إلغاء ضوضاء • شحن MagSafe",
      'image': "images/hands.png",
      'price': "249\$",
      'details': "• إلغاء الضوضاء النشط\n• وضع الشفافية\n• مقاومة التعرّق\n• بطارية 6 ساعات",
    },
    {
      'name': "سماعات Iphone Pro",
      'subtitle': "إلغاء ضوضاء • شحن MagSafe",
      'image': "images/hands.png",
      'price': "249\$",
      'details': "• إلغاء الضوضاء النشط\n• وضع الشفافية\n• مقاومة التعرّق\n• بطارية 6 ساعات",
    },
    {
      'name': "سماعات Xime Pro",
      'subtitle': "إلغاء ضوضاء • شحن MagSafe",
      'image': "images/hands.png",
      'price': "249\$",
      'details': "• إلغاء الضوضاء النشط\n• وضع الشفافية\n• مقاومة التعرّق\n• بطارية 6 ساعات",
    },
    {
      'name': "Sony WH-1000XM5",
      'subtitle': "سماعات رأس احترافية",
      'image': "images/hands.png",
      'price': "379\$",
      'details': "• أفضل إلغاء ضوضاء\n• صوت Hi-Res\n• بطارية 30 ساعة\n• شحن USB-C",
    },
    {
      'name': "JBL Charge 5",
      'subtitle': "سبيكر محمول قوي",
      'image': "images/hands.png",
      'price': "159\$",
      'details': "• صوت قوي\n• بطارية 20 ساعة\n• ضد الماء IP67\n• شحن للهاتف",
    },
    {
      'name': "Beats Studio Buds",
      'subtitle': "سماعات رياضية",
      'image': "images/hands.png",
      'price': "149\$",
      'details': "• إلغاء ضوضاء\n• خفيفة ومريحة\n• تدعم Apple و Android\n• بطارية 8 ساعات",
    },
    {
      'name': "Xi SS-1000XM5",
      'subtitle': "سماعات رأس احترافية مريحة",
      'image': "images/hands.png",
      'price': "379\$",
      'details': "• أفضل إلغاء ضوضاء\n• صوت Hi-Res\n• بطارية 30 ساعة\n• شحن USB-C",
    },
  ];

  @override
  Widget build(BuildContext context) {
    // إذا تطبيقك في مكان آخر محاط بالفعل بـ Directionality/MaterialApp، هذا السطر اختياري.
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text("سماعات ومنتجات صوتية")),
        body: ListView.builder(
        //  padding: const EdgeInsets.all(16),
          itemCount: audioProducts.length,
          itemBuilder: (context, index) {
            final product = audioProducts[index];
            return Card(
             // margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    product['image']!,
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.image_not_supported, size: 56);
                    },
                  ),
                ),

                title: Text(
                  product['name']!,
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  product['subtitle']!,
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailsPage(product: product),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
