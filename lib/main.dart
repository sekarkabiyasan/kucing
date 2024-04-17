import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Petshop Kucing';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'img/kucing1.png',
              ),
              TitleSection(
                  name: 'Petshop Kucing',
                  location: 'Kasihan Bantul'),
              ButtonSection(),
              TextSection(
                description:
                  'Terima kasih telah mengunjungi petshop kucing kami, tempat terbaik untuk menemukan berbagai perlengkapan dan makanan kucing berkualitas tinggi!'

'Kami menyediakan produk-produk kucing terbaik yang dipilih dengan teliti, termasuk makanan kucing, mainan, tempat tidur, dan aksesori lainnya. Kesehatan, kenyamanan, dan kebahagiaan kucing Anda adalah prioritas utama kami.'

'Di petshop kami, Anda akan menemukan berbagai jenis makanan kucing, baik makanan kering maupun basah, dari merek-merek terkenal. Kami juga menyediakan mainan interaktif, tempat tidur yang nyaman, dan aksesori lainnya untuk memenuhi kebutuhan hiburan dan kenyamanan kucing kesayangan Anda.'

'Selain itu, kami juga menyediakan layanan konsultasi tentang perawatan dan nutrisi kucing bagi pelanggan yang ingin memberikan perawatan terbaik untuk kucing mereka.'

'Kunjungi petshop kami hari ini dan berikan kucing Anda pengalaman berbelanja yang menyenangkan dan bermanfaat!'


              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Color.fromARGB(255, 74, 211, 47),
          ),
          const Text('100'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});
  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
