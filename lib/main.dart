import 'package:flutter/material.dart';

import 'camp_detail.dart';

void main() {
  runApp(MaterialApp(
    title: 'By.u Camp',
    home: MyApp(),
  ));
}

class Camp {
  final int id;
  final String title;
  final String location;
  final String description;
  final String imglink;
  const Camp(
      {this.id, this.title, this.location, this.description, this.imglink});
}

List<Camp> data = const <Camp>[
  const Camp(
      id: 1,
      title: 'Gunung Mas',
      location: 'Bogor, Jawa Barat',
      description:
          'Gunung Mas ini merupakan lokasi agrowisata yang berada di ketinggian 800 – 1200 mdpl sehingga memiliki udara yang sejuk. Ketika Anda mengunjungi lokasi camping satu ini Anda akan disajikan denga pemandangan kebun teh yang luas. Tak hanya bisa menikmati keindahan perkebunan teh, pengunjung juga bisa menengok pengolahan teh di pabrik yang ada di sini.  Sementara untuk camping, bisa dilakukan untuk berbagai acara mulai dari gathering hingga family camping bisa untuk menikmati camping disini. Pembagian zona untuk campingnya juga cukup banyak, dimana zona atau blok ini disebut dengan Hole. Sarana dan prasana juga terbilang lengkap seperti misalnya toilet di masing masing blok hingga lahan parkir yang luas. Area campingnya juga terbilang bersih dan ada beberapa blok yang dekat dengan aliran sungai. Akan sangat menyenangkan untuk menghabiskan waktu bersama rombongan dengan bercamping di lokasi perkebunan teh ini.',
      imglink:
          'https://travelspromo.com/wp-content/uploads/2019/03/Kawasan-agrowisata-gunung-mas-Rika-Syarif.jpg'),
  const Camp(
      id: 2,
      title: 'Eagle Hill',
      location: 'Bogor, Jawa Barat',
      description:
          'Eagle Hill merupakan salah satu tempat untuk camping di Bogor yang menarik untuk dikunjungi. Eagle Hill berada dikawasan Al Barokah, Kec. Megamendung. Untuk lokasi perkemahan berada pada ketinggian 1000 mdpl dengan luas hingga 12 hektar. Tentunya membuat Anda bisa bebas untuk berkemah di sini. Apalagi untuk menuju lokasinya terbilang mudah, lokasinya yang strategis membuat Anda hanya butuh sekitar 40 menit untuk sampai dari Tol Ciawi. Eagle Hill menawarkan 7 camping groun dengan tingkat privasi tinggi untuk setiap groundnya. Untuk fasilitas penunjangnya juga terbilang lengkap mulai dari toilet hingga aula pertemuan yang memiliki kapasitas 200 hingga 300 orang. Agar liburan Anda semakin lengkap, aktivitas outdoor seperti river journey, jungle adventure hingga air terjun tersedia di rempat ini. Area parkirnya juga luas bisa menambung hingga 50 mobil lebih.',
      imglink:
          'https://lh3.googleusercontent.com/proxy/xs2jXW90bX8VdUC54nQRSjsw_QMrXaJI5_0iUNYdN1WLI-wU4yOLoSHbTfbA6am5-V3EsZgfq3vU1CJ2oSeZjpi0rcSj'),
  const Camp(
      id: 3,
      title: 'Gunung Bunder',
      location: 'Bogor, Jawa Barat',
      description:
          'Lokasi untuk berkemah yang tak juga harus Anda jajal adalah perkemahan Gunung Bunder. Gunung Bunder ini berada dalam kawasan Taman Nasional Gunung Halimum Salak. Ada banyak sekali titik perkembahan yang bisa dijadikan lokasi. Namun ada yang paling favorit yakni yang berada di Curug Cihurang. Menawarkan suasana air terjun yang asri membuat banyak yang menyukai lokasi satu ini untuk dijadikan tempat mendirikan tenda. Tak hanya Curug Cihurang, Anda juga bisa mengunjungi beberapa curug lain yang tak kalah mempesona. Untuk Anda yang gemar melakukan aktivitas hiking lokasi ini sangat cocok. Memiliki panorama alam yang indah dan juga berburu sunrise yang memikat, membuat Gunung Bunder dijadikan destinasi yang favorit. Berada di ketinggian 1050 mdpl membuat lokasi ini begitu dingin, sehingga penting bagi Anda untuk memperhatikan cuaca jika ingin berkemah.',
      imglink:
          'https://cdn.idntimes.com/content-images/community/2019/11/webpnet-resizeimage-f385f07fb065b8daab80004dbc2ee656_600x400.jpg'),
  const Camp(
      id: 4,
      title: 'Gunung Pancar',
      location: 'Kabupaten Bogor, Jawa Barat',
      description:
          'Gunung Pancar berada di daerah Sentul Bogor, sangat cocok untuk Anda yang ingin kemah namun tak ingin terjebak macet. Apalagi area perkemahannya sangat ramah untuk keluarga ataupun pemula. Berbagai kegiatan mulai dari gathering, outing perusahaan maupun aktivitas liburan bisa dilakukan di tempat satu ini. Fasilitasnya juga terbilang lengkap sehingga akan memudahkan Anda ketika berkemping di area Gunung Pancar, Berada di tengah tengah hutan pinus, Gunung Pancar menawarkan suasana asri yang sangat nyaman untuk berkemah. Berbagai aktivitas seru juga bisa dilakukan, mulai dari bersepeda, berkuda hingga tracking maupun hiking bisa dilakukan. Tak harus membawa tenda sendiri, di Gunung Pancar menawarkan cara berkemah dengan camping maupun glamping. Glamping sendiri merupakan cara camping praktis karena semuanya sudah disiapkan pengelola.',
      imglink:
          'https://cdn.statically.io/img/4.bp.blogspot.com/-Aflgyw8QAs4/XAeniS2imcI/AAAAAAAAbs4/dI4qLYx1Qt01M1Z4XhSrHm0hZxdRCFBLQCLcBGAs/s0-rw/gunung_1.jpg'),
  const Camp(
      id: 5,
      title: 'Taman Nasional Gunung Halimun Salak',
      location: 'Kabupaten Bogor, Jawa Barat',
      description:
          'Lokasi untuk camping satu ini tak hanya menawarkan suasana yang asri, namun juga pemandangan yang mengagumkan. Anda akan dihadirkan pemandangan gunung pinus dan juga megahnya lampu Kab. Bogor ketika malam hari. Inilah yang menjadi daya tarik dari area perkemahan yang berada di kawasan Taman Nasional Gunung Halimun salak ini. Selain bisa untuk membuat liburan berkesan, ada beberapa aktivitas yang juga bisa Anda lakukan. Seperti misalnya menyusuri hutan, membasuh diri dengan air pegunungan hingga memasak bersama. Ketika malam juga bisa dilakukan dengan berkumpul di depan api unggun. Saat pagi menjelang Anda akan disambut dengan ciutan burung dan sinar matahari yang perlahan muncul. Hal ini akan memberikan Anda panorama menggoda apalagi ditemani dengan secangkir kopi atau teh hangat di pagi hari. Pasti akan jadi liburan yang tak terlupakan.',
      imglink:
          'https://highlandcamp.co.id/wp-content/uploads/Camping-Ground-Gunung-Bunder-TNGHS.jpg'),
  const Camp(
      id: 6,
      title: 'Citamiang',
      location: 'Bogor, Jawa Barat',
      description:
          'Perkemahan satu ini berada di Kampung Pondok Rawa yang harus Anda jajal. Menyajikan pemandangan alam yang mempesona lengkap dengan hijaunya perkebunan teh. Anda bisa menyusuri hutan dan sekedar berjalan jalan di kebuh teh untuk jadi aktivitas yang seru. Fasilitas pendukung juga sudah tersedia sehingga dijamin akan membuat kegiatan camping Anda semakin menyenangkan. Hutan pinus dan juga sungai menjadi tambahan panorama yang memanjakan mata.',
      imglink:
          'https://petualang.travelingyuk.com/unggah/2019/03/1531768895582_2130.jpg'),
            const Camp(
      id: 7,
      title: 'Citra Alam Riverside',
      location: 'Bogor, Jawa Barat',
      description:
          'Ingin melakukan aktivitas camping? Citra Alam Riverside bisa menjadi tujuan anda. Tak hanya menyediakan camping ground lengkap dengan pemandangan indahnya, tapi juga bisa untuk outbond. Berada di tepian sungai membuat berkemah dikawasan ini begitu tak terlupakan. Ada banyak aktivitas seru yang bisa Anda jajal bersama rombongan, mulai dari berkuda, rafting, flying fox hingga outbond yang terbilang aman dan juga nyaman.',
      imglink:
          'https://highlandcamp.co.id/wp-content/uploads/citra-alam-riverside-camp-puncak.jpg'),
            const Camp(
      id: 8,
      title: 'Mandalawangi',
      location: 'Kabupaten Cianjur, Jawa Barat',
      description:
          'Mandalawangi tentunya tidak asing untuk Anda yang hobi melakukan aktivitas di luar ruangan. Sebab Mandalawangi tak hanya menawarkan camping ground saja namun juga ada jalur pendakian di Gunung Gede Pangrangko yang masih satu kawasan. Lokasinya yang mudah dijangkau juga membuat tempat satu ini selalu ramai pengunjung. Kondisi alamnya yang masih terjaga juga akan memberikan kelebihan dan juga pengalaman tersendiri.',
      imglink:
          'https://highlandcamp.co.id/wp-content/uploads/mandalawangi-camping-ground-cibodas.jpg'),
];

class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    final title = "By.u Camp";
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: new ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            children: List.generate(data.length, (index) {
              return Center(
                child: CampCard(campList: data[index], item: data[index]),
              );
            })));
  }
}

class CampCard extends StatelessWidget {
  const CampCard(
      {Key key,
      this.campList,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);
  final Camp campList;
  final VoidCallback onTap;
  final Camp item;
  final bool selected;
  @override

  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return FlatButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CampReadPage(index: data.indexOf(campList))));
      },
      child: Card(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              new Container(
                  padding: const EdgeInsets.all(0),
                  child: Image.network(campList.imglink)),
              new Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(campList.title,
                        style: Theme.of(context).textTheme.title),
                    Text(campList.location,
                        style: TextStyle(color: Colors.black.withOpacity(0.5))),
                    Text(campList.description.substring(0, 100) + '...'),
                  ],
                ),
              )
            ],
            crossAxisAlignment: CrossAxisAlignment.start,
          )),
    );
  }
}
