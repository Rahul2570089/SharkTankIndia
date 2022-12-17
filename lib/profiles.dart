import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sharktank/colors.dart';
import 'package:sharktank/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class Profiles extends StatefulWidget {
  const Profiles({Key? key}) : super(key: key);

  @override
  State<Profiles> createState() => _ProfilesState();
}

IconData iconData = Icons.dark_mode;

class _ProfilesState extends State<Profiles> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      drawer: const drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: appbaricon),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Profiles",
            style: TextStyle(color: textColor),
          ),
        ),
        elevation: 0.0,
        backgroundColor: background,
        actions: [
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: GestureDetector(
              child: Icon(iconData),
              onTap: () {
                  setState(() {
                    if(iconData==Icons.dark_mode) {
                      background = Colors.black;
                      textColor = Colors.white;
                      appbaricon = Colors.white;
                      boxdecoration = const Color.fromARGB(255, 27, 27, 27);
                      boxdecorationshadow = Colors.black;
                      iconData = Icons.light_mode;
                      details = Colors.white;
                    }
                    else {
                      background = background = Colors.blueGrey[50];
                      textColor = Colors.black;
                      appbaricon = Colors.black;
                      boxdecoration = const Color(0xFFF9F8FD);
                      boxdecorationshadow = const Color.fromARGB(255, 211, 211, 212).withOpacity(1);
                      details = const Color.fromARGB(255, 105, 101, 101);
                      iconData = Icons.dark_mode;
                    }
                });
              },  
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              card(img: "assets/images/ashneergrover.webp.jpg", text: "Ashneer Grover (ex-MD and co-founder of BharatPe)", url: 'https://wikibio.in/ashneer-grover/'),
              card(img: "assets/images/amangupta.jpg", text: "Aman Gupta (Co-founder and CMO at boAt Lifestyle)", url: 'https://wikiwiki.in/miscellaneous/aman-gupta/'),
              card(img: "assets/images/anupammittal.jpg", text: "Anupam Mittal (Founder of People Group at shaadi.com)", url: 'https://wikitia.com/wiki/Anupam_Mittal'),
              card(img: "assets/images/piyushbansal.webp.jpg", text: "Peyush Bansal (Co-founder and CEO at Lenskart.com)", url: 'https://wikiwiki.in/miscellaneous/peyush-bansal/'),
              card(img: "assets/images/namitathapar.webp", text: "Namita Thapar (CEO of Emcure Pharmaceuticals)", url: 'https://wikiwiki.in/miscellaneous/namita-thapar/'),
              card(img: "assets/images/vineetasingh.jpg", text: "Vineeta Singh (Co-founder and CEO of Sugar Cosmetics)", url: 'https://wikibio.in/vineeta-singh/'),
              card(img: "assets/images/ghazalalagh.jpg", text: "Ghazal Alagh (Co-founder of MamaEarth)", url: 'https://wikiwiki.in/miscellaneous/ghazal-alagh/'),
            ],
          ),
        ),
      ),
    );
  }

  Widget card({required String img, required String text, required String url}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 320,
      decoration: BoxDecoration(
          color: boxdecoration,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: boxdecorationshadow,
                offset: const Offset(0, 1),
                blurRadius: 30,
                blurStyle: BlurStyle.normal)
          ]
      ),
      child: Stack(children: [
        Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 25,
            ),
            Text(
              text,
              style:
                  TextStyle(color: textColor, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 13,
            ),
            InkWell(
              child: Text(
                "Details",
                style: TextStyle(
                    color: details,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                try {
                  launchUrl(Uri.parse(url));
                } catch (e) {
                  Fluttertoast.showToast(msg: e.toString());
                } 
              }
            ),            
          ],
        ),
      ]),
    );
  }
}
