import 'package:flutter/material.dart';
import 'package:galleryimage/galleryimage.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ServiceDetailsPage extends StatelessWidget {
  const ServiceDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rent a Man"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  minRadius: 50,
                  foregroundImage: NetworkImage("https://picsum.photos/700"),
                ),
                Column(
                  children: [
                    Text(
                      "Kosacica",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    Chip(
                      avatar: const Icon(Icons.location_on),
                      label: Text(
                        "Doboj",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: double.infinity,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Theme.of(context).colorScheme.primary),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Opis posla",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        decoration: TextDecoration.underline),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      "Osnovan 2010. godine, naša kompanija \"Kosacica\" posvećena je pružanju vrhunske usluge košenja trave. S ponosom nudimo profesionalno održavanje travnjaka koje će vaš vrt ili dvorište učiniti očaravajućim i njegovanima. Koristimo najnoviju opremu i tehnike kako bismo osigurali da svaki detalj bude besprijekorno izveden. Naš tim stručnjaka posvećen je vašem zadovoljstvu, pružajući pouzdanost i kvalitetu koja se vidi u svakom zelenom kvadratu.")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GalleryImage(
              numOfShowImages: 6,
              imageUrls: const [
                "https://cosmosmagazine.com/wp-content/uploads/2020/02/191010_nature.jpg",
                "https://scx2.b-cdn.net/gfx/news/hires/2019/2-nature.jpg",
                "https://wallpapers.com/images/featured/2ygv7ssy2k0lxlzu.jpg",
                "https://upload.wikimedia.org/wikipedia/commons/7/77/Big_Nature_%28155420955%29.jpeg",
                "https://www.rd.com/wp-content/uploads/2020/04/GettyImages-1093840488-5-scaled.jpg",
                "https://media.cntraveller.com/photos/611bf0b8f6bd8f17556db5e4/1:1/w_2000,h_2000,c_limit/gettyimages-1146431497.jpg",
                "https://img.freepik.com/premium-photo/fantastic-view-kirkjufellsfoss-waterfall-near-kirkjufell-mountain-sunset_761071-868.jpg",
                "https://www.travelandleisure.com/thmb/KLPvXakEKLGE5AY2jVyovl3Md1k=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/iceland-BEAUTCONT1021-b1aeafa7ac2847a484cbca48d3172b6c.jpg",
                "https://w0.peakpx.com/wallpaper/265/481/HD-wallpaper-nature.jpg",
                "https://e0.pxfuel.com/wallpapers/163/906/desktop-wallpaper-beautiful-nature-with-girl-beautiful-girl-with-nature-and-moon-high-resolution-beautiful.jpg",
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
              onPressed: () => launchUrlString("tel://0603269778"),
              label: const Text("POZOVI"),
              icon: const Icon(Icons.phone),
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer),
            ),
          ],
        ),
      ),
    );
  }
}
