import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final Map<String, dynamic> product; // بيانات المنتج

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(product['name']),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // صورة المنتج (اختيارية)
              if (product['image'] != null && product['image'].isNotEmpty)
                Center(
                  child: Image.asset(
                    product['image'],  // يستخدم الآن المسار المحلي
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
              const SizedBox(height: 20),

              // الاسم
              Text(
                product['name'],
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // السعر (اختياري)
              if (product['price'] != null && product['price'].isNotEmpty)
                Text(
                  "السعر: ${product['price']} ر.ي",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
              const SizedBox(height: 20),

              // المواصفات / الوصف
              if (product['details'] != null && product['details'].isNotEmpty)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "المواصفات:",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product['details'],
                      style: const TextStyle(fontSize: 16, height: 1.6),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
