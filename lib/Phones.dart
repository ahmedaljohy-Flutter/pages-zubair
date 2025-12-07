import 'package:flutter/material.dart';
import 'product_details_page.dart';

class Phones extends StatelessWidget {
  const Phones({super.key});

  final List<Map<String, String>> products = const [
    {
      'name': "Xi 12 pro",
      'subtitle': "نظام حديث ذو ميزات اضافية ممتعة للمستخدم",
      'image': "images/661870-01.jpg",
      'price': "1700 ر.س",
      'details': "• شحن سريع\n• كابل طويل 1 متر\n• حماية من الشحن الزائد",
    },
    {
      'name': "Google Pixel 7 Pro",
      'subtitle': "Flagship Google",
      'image': "images/pear.png",
      'price': "1500 ر.ي",
      'details': "• شحن سريع\n• معالج G4\n• شاشة AMOLED 6.7",
    },
    {
      'name': "Samsung s24 ultra",
      'subtitle': "احترف التصوير وتمتع باداء عالي ورائع",
      'image': "images/ultra.webp",
      'price': "2000 ر.س",
      'details': "• شحن سريع\n• حجم مناسب لليد\n• حماية من الشحن الزائد",
    },
    {
      'name': "Iphone 15 pro",
      'subtitle': "كن من مستخدمي الجيل الجديد لشركة apple",
      'image': "images/iphone.jpg",
      'price': "2500 ر.s",
      'details': "• شحن سريع\n• مقاوم للصدمات\n• بطارية طويلة الأمد",
    },
    {
      'name': "Samsung Note 10",
      'subtitle': "خازن بطارية 10000 مللي أمبير",
      'image': "images/ultra.webp",
      'price': "25 ر.ي",
      'details': "• شحن سريع\n• مقاوم للصدمات\n• بطارية طويلة الأمد",
    },
    {
      'name': "Iphone 14",
      'subtitle': "تميز باختيارك لموبايلك",
      'image': "images/iphone.jpg",
      'price': "1600 ر.س",
      'details': "• شحن سريع\n• كابل طويل 1 متر\n• حماية من الشحن الزائد",
    },
    {
      'name': "xi7",
      'subtitle': "جوال ردمي مختلف الاصدارات",
      'image': "images/661870-01.jpg",
      'price': "45 ر.س",
      'details': "• شحن سريع\n• ملفت وذو منظر يعكس فخامة حاملة",
    },
    {
      'name':  " Iphone 12",
      'subtitle': "نظام ios ذو اداء عالي",
      'image': "images/iphone.jpg",
      'price': "1400 ر.س",
      'details': "• شحن سريع\n• مقاوم للصدمات\n• بطارية طويلة الأمد",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text("الهواتف الذكية")),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  product['subtitle']!,
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsPage(product: product),
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
