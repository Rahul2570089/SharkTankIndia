import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sharktank/colors.dart';
import 'package:sharktank/drawer.dart';
import 'package:sharktank/profiles.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
            "Product Details",
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
                  if (iconData == Icons.dark_mode) {
                    background = Colors.black;
                    textColor = Colors.white;
                    appbaricon = Colors.white;
                    boxdecoration = const Color.fromARGB(255, 27, 27, 27);
                    boxdecorationshadow = Colors.black;
                    iconData = Icons.light_mode;
                    details = Colors.white;
                  } else {
                    background = Colors.blueGrey[50];
                    textColor = Colors.black;
                    appbaricon = Colors.black;
                    boxdecoration = const Color(0xFFF9F8FD);
                    boxdecorationshadow =
                        const Color.fromARGB(255, 211, 211, 212).withOpacity(1);
                    details = const Color.fromARGB(255, 105, 101, 101);
                    iconData = Icons.dark_mode;
                  }
                });
              },
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
              alignment: Alignment.topCenter,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: textColor!,
                    )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: textColor!,
                    )),
                    prefixIcon: Icon(
                      Icons.search,
                      color: textColor,
                    ),
                    hintText: "Some of the top products featured",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: textColor),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: textColor!))),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: textColor),
              )),
        ),
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    card(
                        img: "assets/products/yankiez.webp",
                        name: "Yankiez",
                        url: "https://yangkiez.com/"),
                    card(
                        img: "assets/products/ketoindia.webp",
                        name: "Keto India",
                        url: "https://www.ketoindia.fit/"),
                    card(
                        img: "assets/products/get-a-whey.jpg",
                        name: "Get-a-Whey",
                        url: "https://getawhey.in/"),
                    card(
                        img: "assets/products/skippi.jpg",
                        name: "Skippi",
                        url: "https://skippi.in/"),
                    card(
                        img: "assets/products/beyondwater.webp",
                        name: "Beyond Water",
                        url: "https://drinkbeyond.co.in/"),
                    card(
                        img: "assets/products/inacan.jpg",
                        name: "In a can",
                        url: "https://inacan.in/"),
                    card(
                        img: "assets/products/beyondsnacks.jpg",
                        name: "Beyond Snacks",
                        url: "https://www.beyondsnack.in/"),
                    card(
                        img: "assets/products/bambooindia.jpg",
                        name: "Bamboo India",
                        url: "https://www.bambooindia.com/"),
                    card(
                        img: "assets/products/fardaclothing.webp",
                        name: "Farda Clothing",
                        url: "https://fardaclothing.com/"),
                    card(
                        img: "assets/products/thinkerbell.png",
                        name: "Annie - Braille Literary Device : Tinkerbell Labs",
                        url: "https://www.thinkerbelllabs.com/"),
                    card(
                        img: "assets/products/yarnbazaar.jpeg",
                        name: "The Yarn Bazaar - Yarn Trading App",
                        url: "https://theyarnbazaar.com/"),
                    card(
                        img: "assets/products/bummer.jpg",
                        name: "Bummer",
                        url: "https://bummer.in/"),
                    card(
                        img: "assets/products/hammer.jpg",
                        name: "Hammer Lifestyle - Smart Audio Products",
                        url: "https://hammeronline.in/"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget card(
      {required String img, required String name, required String url}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 270,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: boxdecoration,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: boxdecorationshadow,
                offset: const Offset(0, 1),
                blurRadius: 30,
                blurStyle: BlurStyle.normal)
          ]),
      child: Stack(children: [
        Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  img,
                  width: 394,
                  height: 230,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 13,
            ),
            InkWell(
                child: Text(
                  name,
                  style: TextStyle(
                      color: textColor,
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
                })
          ],
        ),
      ]),
    );
  }
}
