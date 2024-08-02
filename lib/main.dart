import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();

    PaintingBinding.instance.imageCache.maximumSize = 10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Card(child: Text(index.toString())),
                SizedBox(
                  width: 300,
                  height: 400,
                  child: CachedNetworkImage(
                      // errorListener: (_) {},
                      imageUrl: imageList[index],
                      fadeInDuration: Duration(seconds: 0)),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


final imageList = [
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx1-CXtrrkMpJ8Zq.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx5-NozHwXWdNLCz.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx6-Zzun7PHNNgPt.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx7-6uh1fPvbgS9t.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b8-ReS3TwSgrDDi.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx15-A4F2t0TgWoi4.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx16-5fJZ2Sy2ThRA.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx17-6kqIbdUk3dgi.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b18-r7IirVmwP89u.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx19-8Iz8KB1pJNil.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx20-LxrhhIQyiE60.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx21-YCDoj1EkAxFn.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx22-8Qg3NZXH6asP.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx23-OwtP69d9B9kg.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx24-InbFkgWGvqIK.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx25-H1etX7IgfFtQ.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx26-u2SawALYH3w3.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx27-MOAaiBHHLfOY.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx28-QuKcZpUjTXzV.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx29-0PsnJVadMG7k.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx30-wmNoX3m2qTzz.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx31-3zRThtzQH62E.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx32-PMmJBerdDSma.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx33-CTtcRjqe7UnM.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx43-LMGXobx4D6in.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx44-MG5I672UbWAy.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx45-DEFgZRCxiGmF.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx46-Steq4sQpA6fq.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx47-Sjkc8RDBjqwT.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx48-YKktSuM10DRK.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx49-jv1G7rSP4lxg.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx50-OdzAFLX6X6Hf.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b51-qkm7PDhQr1jS.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx52-i6aTXaa4w1QA.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx53-GPDXGvbhg4w5.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx54-EIMIUlH3FuJb.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx55-uG26UwIxEJkJ.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b56-u0q9CHIgtbQG.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx57-HhnvbHS4ujea.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b58-2KarB5N1dB0P.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx59-0J95ZHgt4uyP.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx60-N28VFNCZyvhI.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/61.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx62-llr25zE9LOm1.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx63-2EYTwbAK4CLR.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx64-i0zBn241OD2x.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx65-SnVu0Txb00nV.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx66-1LTNhVTnttZv.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx67-aBz3s2hBTtdH.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx68-DKUkbrlNTPSy.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx69-OiowxBQs5McP.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx71-Fi08vs7xNBMW.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx72-dalTPVFKaOuZ.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx73-UgXDGEMBPGle.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b74-QZI9kO7eesrb.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx75-ZE4KQgvN8qRs.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx76-wRwZobrx9MPj.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx77-SwBCj7R1enWi.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx79-I1ODM0WcMlsn.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx80-3KmhnWRJiNwE.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx81-qBgqd932d9lW.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx82-hMPzHSx8il8Z.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx83-hMXIY88V9UDO.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx84-4wiZSMDFwFCN.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx85-Ds1SJjiy7kfw.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b86-vaOa1TaV0T0K.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx87-SCCIlaJZjSvz.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx88-A0p5JsI46tsX.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx89-EO7MAGUTwqRz.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/b90-umBjF3yaeIdo.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx91-YkrzbtuWZThG.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx92-QICvHYE9HKyq.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx93-pp8SI0zpA8EJ.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx94-tng83ksiXm5E.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx95-5okHk1B0VKro.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx96-YZuRuVza9Qgc.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx97-Loi1Ppy4quXy.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx98-rGddbbtcCuYP.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx99-NOVuOiWoqpMb.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/100.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/nx101-x3YmfrzYZ9kM.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx102-nacpPTHmjvXJ.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx103-v029gLfcQajN.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx104-fUBucj3ywYzH.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/105.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/n106-KgEGNWhC9XLR.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx107-w685twC2xgyr.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/108.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx109-WfAppfDHUpBf.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx110-KB2VJ8Qp3WD6.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx111-DxnHYJUnO4Dd.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/112.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx113-LVBTWnBDpKb1.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx114-VqL7lYKqdBR6.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx115-tHn79Q8ITmBN.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx116-JdDCxwMpLRQV.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx117-GUF1ulwYZWsk.png",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/medium/118.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx119-OitBgnCg8T7c.jpg",
  "https://s4.anilist.co/file/anilistcdn/media/anime/cover/large/bx120-Z5i1sw1xboQP.jpg"
];
