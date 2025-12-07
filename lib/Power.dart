import 'package:flutter/material.dart';
import 'product_details_page.dart';

class Power extends StatelessWidget {
  const Power({super.key});

  final List<Map<String, String>> products = const [
    {
      'name': "شاحن سريع جدا",
      'subtitle': "شاحن سريع للهاتف مع كابل USB-C",
      'image': "images/power.jpg",
      'price': "15 ر.ي",
      'details': "• شحن سريع\n• كابل طويل 1 متر\n• حماية من الشحن الزائد",
    },
    {
      'name': "شاحن فائق",
      'subtitle': "شاحن سريع للهاتف مع كابل USB-C",
      'image': "images/power.jpg",
      'price': "15 ر.ي",
      'details': "• شحن سريع\n• كابل طويل 1 متر\n• حماية من الشحن الزائد",
    },
    {
      'name': "شاحن سريع",
      'subtitle': "شاحن سريع للهاتف مع كابل USB-C",
      'image': "images/power.jpg",
      'price': "15 ر.ي",
      'details': "• شحن سريع\n• كابل طويل 1 متر\n• حماية من الشحن الزائد",
    },
    {
      'name': "خازن بطارية",
      'subtitle': "خازن بطارية 10000 مللي أمبير",
      'image': "images/power.jpg",
      'price': "25 ر.ي",
      'details': "• شحن سريع\n• مقاوم للصدمات\n• بطارية طويلة الأمد",
    },
    {
      'name': "شاحن USB",
      'subtitle': "شاحن سريع للهاتف مع كابل USB-C",
      'image': "images/power.jpg",
      'price': "15 ر.ي",
      'details': "• شحن سريع\n• كابل طويل 1 متر\n• حماية من الشحن الزائد",
    },
    {
      'name': "ستيكر",
      'subtitle': "جوال ردمي مختلف الاصدارات",
      'image': "images/stekr.jpg",
      'price': "45 ر.س",
      'details': "• ملفت وذو منظر يعكس فخامة حاملة",
    },
    {
      'name': "فريم Iphone",
      'subtitle': "جميع اصدارات الايفون الجديد بعد 12",
      'image': "images/freem.jpg",
      'price': "15 ر.س",
      'details': "• لمظهر رائع وجذب وملفت",
    },
    {
      'name': "خازن 10th",
      'subtitle': "خازن بطارية 10000 مللي أمبير",
      'image': "images/power.jpg",
      'price': "25 ر.ي",
      'details': "• شحن سريع\n• مقاوم للصدمات\n• بطارية طويلة الأمد",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text("الشواحن والاكسسوارات")),
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
