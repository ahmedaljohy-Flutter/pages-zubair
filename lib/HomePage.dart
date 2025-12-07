import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: const SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: HomeContent(),
          ),
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        HeroCard(),
        SizedBox(height: 16),
        FeaturesRow(),
        SizedBox(height: 16),
        SectionsList(),
        SizedBox(height: 16),
        CTASection(),
      ],
    );
  }
}

class HeroCard extends StatelessWidget {
  const HeroCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'أحمد.فون — متجرك الموثوق للجوالات ومستلزماتها',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'نوفّر أحدث الهواتف الذكية، الإكسسوارات الأصلية، والأجهزة الإلكترونية بجودة عالية وأسعار تنافسية. تجربة شراء مريحة، شحن سريع، ودعم فني مميز.',
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: const [
                _FeatureChip(text: 'منتجات أصلية 100%'),
                _FeatureChip(text: 'ضمان معتمد'),
                _FeatureChip(text: 'شحن سريع'),
                _FeatureChip(text: 'دفع آمن'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _FeatureChip extends StatelessWidget {
  final String text;
  const _FeatureChip({required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(text),
      backgroundColor: Colors.blue.shade50,
    );
  }
}

class FeaturesRow extends StatelessWidget {
  const FeaturesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        _IconFeature(icon: Icons.phone_android, label: 'الهواتف'),
        _IconFeature(icon: Icons.headphones, label: 'سماعات'),
        _IconFeature(icon: Icons.power, label: 'شواحن'),
        _IconFeature(icon: Icons.support_agent, label: 'دعم فني'),
      ],
    );
  }
}

class _IconFeature extends StatelessWidget {
  final IconData icon;
  final String label;
  const _IconFeature({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.blue.shade100,
            child: Icon(icon, size: 28, color: Colors.blue.shade800),
          ),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class SectionsList extends StatelessWidget {
  const SectionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SectionTitle(title: 'أقسام المتجر'),
        const SizedBox(height: 8),
        Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 2,
          child: Column(
            children: const [
              _SectionTile(
                title: 'الهواتف الذكية',
                subtitle: 'أحدث الفلاجشيب والهواتف الاقتصادية',
                icon: Icons.smartphone,
              ),
              Divider(),
              _SectionTile(
                title: 'السماعات والأجهزة الصوتية',
                subtitle: 'سماعات بلوتوث وسماعات رأس عالية الجودة',
                icon: Icons.headphones,
              ),
              Divider(),
              _SectionTile(
                title: 'الشواحن والإكسسوارات',
                subtitle: ' كفرات، وستكرات شواحن أصلية',
                icon: Icons.battery_charging_full,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

class _SectionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  const _SectionTile({required this.title, required this.subtitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blue.shade50,
        child: Icon(icon, color: Colors.blue.shade800),
      ),
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text(subtitle),
      trailing: null,
      onTap: () {
      //  ScaffoldMessenger.of(context)
       //     .showSnackBar(SnackBar(content: Text('فتح: $title')));
      },
    );
  }
}

class CTASection extends StatelessWidget {
  const CTASection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.blue.shade700,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'عروض وخصومات حصرية',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'تابع أحدث العروض الأسبوعية واحصل على خصومات خاصة عند التسجيل في النشرة البريدية.',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('لازلنا قيد التطوير لعمل الاشتراكات')),
                      );
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Text('اشترك الآن', style: TextStyle(color: Colors.black)),
                  ),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('قيد التطوير لعمل طلبات عبر المتجر')));
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Colors.white),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('تسوق الآن'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
