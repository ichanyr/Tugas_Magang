import 'package:flutter/material.dart';
import 'package:onboarding/widget/custom_elevated_button.dart';
import 'package:onboarding/widget/custom_outlined_button.dart';
import 'package:onboarding/widget/custom_row_widget.dart.dart';
import 'package:onboarding/widget/onboarding_content_widget.dart.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;

  // kontroller untuk nextSlide ketika textbutton 'lewati' diklik
  PageController nextSlideController = PageController();

  List<OnBoardingContent> onBoardingContent = [
    OnBoardingContent(
      imagePath: "images/Group 11454.png",
      title: 'Selamat Datang di RoxyNet!',
      description:
          'Kesehatan dalam genggamanmu! Aplikasi kami siap membantu atasi masalah kesehatanmu, kapanpun, di manapun.',
    ),
    OnBoardingContent(
      imagePath: "images/_0028.png",
      title: 'Apotek Online',
      description:
          'Pesan Obat atau Produk kesehatan, Nikmati berbagai diskon dan promo menarik yang kami tawarkan hanya untuk kamu!',
    ),
    OnBoardingContent(
      imagePath: "images/_0033.png",
      title: '''Kirim ke alamatmu atau 
      ambil obat diapotek''',
      description:
          'ingin kami antar pesanan langsung ke depan pintumu atau ambil diapotek tanpa repot antri?',
    ),
    OnBoardingContent(
      imagePath: "images/_0040.png",
      title: 'Konsultasi Online',
      description:
          'Konsultasi dengan dokter atau apoteker kami, dapatkan jawaban tentang keluhan kesehatanmu. Gratiss !!!',
    ),
    OnBoardingContent(
      imagePath: "images/Group 1.png",
      title: 'Apotek Terdekat',
      description: '''
Kami akan membatumu menemukan apotek terdekat 
dari lokasimu, dengan memastikan lokasi akurat dan Jam opersional yang sesuai''',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: nextSlideController,
        itemCount: 5,
        onPageChanged: (i) {
          setState(() {
            currentIndex = i;
          });
        },
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                RowCustomWidget(
                  pageCount: onBoardingContent.length,
                  currentIndex: currentIndex,
                  onSkipPressed: () {
                    nextSlideController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     AnimatedSmoothIndicator(
                //       activeIndex: currentIndex,
                //       count: 5,
                //       effect: ExpandingDotsEffect(
                //         activeDotColor: Colors.blue,
                //         dotHeight: 10,
                //         dotWidth: 10,
                //       ),
                //     ),
                //     Text(
                //       'Lewati',
                //       style: TextStyle(
                //           fontWeight: FontWeight.w700, fontSize: 16),
                //     ),
                //   ],
                // ),
                SizedBox(height: 42),
                onBoardingContent[i],
                // OnBoardingContent(
                //     imagePath: "images/Group 11454.png",
                //     title: 'Selamat Datang di RoxyNet!',
                //     description:
                //         'Kesehatan dalam genggamanmu! Aplikasi kami siap membantu atasi masalah kesehatanmu, kapanpun, di manapun.'),
//                   Image.asset("images/Group 11454.png"),
//                   SizedBox(height: 48),
//                   Text(
//                     'Selamat Datang di RoxyNet!',
//                     style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
//                   ),
//                   SizedBox(height: 16),
//                   Text(
//                     '''
// Kesehatan dalam genggamanmu! Aplikasi kami siap
// membantu atasi masalah kesehatanmu, kapanpun, di
// manapun.''',
//                     textAlign: TextAlign.center,
//                   ),
                SizedBox(height: 48),
                CustomElevatedButton(onPressed: () {}, label: 'Masuk'),
                SizedBox(height: 16),
                CustomOutlinedButton(
                    onPressed: () {}, label: 'Belum ada akun? Daftar dulu')
                // ElevatedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //     primary: Colors.blue, // Warna latar belakang
                //     minimumSize: Size(double.infinity,
                //         48.0), // Lebar tombol menjadi infinity, tinggi 48.0
                //     shape: RoundedRectangleBorder(
                //       borderRadius:
                //           BorderRadius.circular(50), // Radius sudut tombol
                //     ),
                //   ),
                //   child: Text(
                //     'Masuk',
                //     style: TextStyle(color: Colors.white),
                //   ),
                // ),
                // SizedBox(height: 16),
                // OutlinedButton(
                //   onPressed: () {},
                //   style: ElevatedButton.styleFrom(
                //     minimumSize: Size(double.infinity,
                //         48.0), // Lebar tombol menjadi infinity, tinggi 48.0
                //     shape: RoundedRectangleBorder(
                //       borderRadius:
                //           BorderRadius.circular(50), // Radius sudut tombol
                //     ),
                //   ),
                //   child: Text(
                //     'Belum ada akun? Daftar dulu',
                //     style: TextStyle(color: Colors.black),
                //   ),
                // )
              ],
            ),
          );
        },
      ),
    );
  }
}
