import 'package:flutter/material.dart';
import 'package:sharktank/colors.dart';
import 'package:sharktank/drawer.dart';
import 'package:sharktank/profiles.dart';

class Episodes extends StatefulWidget {
  const Episodes({Key? key}) : super(key: key);

  @override
  State<Episodes> createState() => _EpisodesState();
}

class _EpisodesState extends State<Episodes> {
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
            "Episodes",
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
                      hintText: "Episodes",
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
                child: Column(
              children: [
                card(img: "assets/episodesthumbnail/ep1.webp", epnum: 1, name: "Badlegi Business Ki Tasveer"),
                card(img: "assets/episodesthumbnail/ep2.webp", epnum: 2, name: "Insaan, Ideas Aur Sapne"),
                card(img: "assets/episodesthumbnail/ep3.webp", epnum: 3, name: "Aam Aadmi Ke Business Ideas"),
                card(img: "assets/episodesthumbnail/ep4.webp", epnum: 4, name: "Entrepreneurship Ki Wave"),
                card(img: "assets/episodesthumbnail/ep5.webp", epnum: 5, name: "Hunt For Interesting Businesses"),
                card(img: "assets/episodesthumbnail/ep6.webp", epnum: 6, name: "New Week, New Ideas"),
                card(img: "assets/episodesthumbnail/ep7.webp", epnum: 7, name: "A Never Give Up Spirit"),
                card(img: "assets/episodesthumbnail/ep8.webp", epnum: 8, name: "Shark Ko Impress Karne Waale Ideas"),
                card(img: "assets/episodesthumbnail/ep9.webp", epnum: 9, name: "Defining Innovations"),
                card(img: "assets/episodesthumbnail/ep10.webp", epnum: 10, name: "Passion About Entrepreneurship"),
                card(img: "assets/episodesthumbnail/ep11.webp", epnum: 11, name: "Investment Paane Ka Sapna"),
                card(img: "assets/episodesthumbnail/ep12.webp", epnum: 12, name: "Ek Idea Aur Uske Do Sides"),
                card(img: "assets/episodesthumbnail/ep13.webp", epnum: 13, name: "Ideas By Young Entrepreneurs"),
                card(img: "assets/episodesthumbnail/ep14.webp", epnum: 14, name: "Naye Aur Nayab Pitchers"),
                card(img: "assets/episodesthumbnail/ep15.webp", epnum: 15, name: "It's Time To Change"),
                card(img: "assets/episodesthumbnail/ep16.jpg", epnum: 16, name: "Winning The Sharks' Trust"),
                card(img: "assets/episodesthumbnail/ep17.webp", epnum: 17, name: "A Wave Of StartUps"),
                card(img: "assets/episodesthumbnail/ep18.webp", epnum: 18, name: "Investing In Profitable Businesses"),
                card(img: "assets/episodesthumbnail/ep19.jpg", epnum: 19, name: "Forming An Idea And Bagging A Deal"),
                card(img: "assets/episodesthumbnail/ep20.webp", epnum: 20, name: "A Variety Of Ideas"),
                card(img: "assets/episodesthumbnail/ep21.webp", epnum: 21, name: "Game-Changing Ideas"),
                card(img: "assets/episodesthumbnail/ep22.webp", epnum: 22, name: "Turning Ideas Into Businesses"),
                card(img: "assets/episodesthumbnail/ep23.jpg", epnum: 23, name: "Investing In Innovation"),
                card(img: "assets/episodesthumbnail/ep24.webp", epnum: 24, name: "A Decade Of Indian Entrepreneurship"),
                card(img: "assets/episodesthumbnail/ep25.jpg", epnum: 25, name: "An Ocean Of Opportunities"),
                card(img: "assets/episodesthumbnail/ep26.jpg", epnum: 26, name: "Revolutionary Ideas"),
                card(img: "assets/episodesthumbnail/ep27.jpg", epnum: 27, name: "Investing In The Future Of India"),
                card(img: "assets/episodesthumbnail/ep28.jpg", epnum: 28, name: "Meeting The New Indian Minds"),
                card(img: "assets/episodesthumbnail/ep29.webp", epnum: 29, name: "Businesses Of Tomorrow"),
                card(img: "assets/episodesthumbnail/ep30.webp", epnum: 30, name: "Sharks Ki Expertise"),
                card(img: "assets/episodesthumbnail/ep31.webp", epnum: 31, name: "Entrepreneurship Ki Raah"),
                card(img: "assets/episodesthumbnail/ep32.webp", epnum: 32, name: "The Road To Succcess"),
                card(img: "assets/episodesthumbnail/ep33.jpg", epnum: 33, name: "Life-Changing Ideas"),
                card(img: "assets/episodesthumbnail/ep34.webp", epnum: 34, name: "Scaling Ambitions"),
                card(img: "assets/episodesthumbnail/ep35.jpg", epnum: 35, name: "The Final Destination"),
                card(img: "assets/episodesthumbnail/ep36.webp", epnum: 36, name: "Gateway To Shark Tank India"),
              ],
            )),
          ),
        ],
      ),
    );
  }

  Widget card({required String img, required int epnum, required String name}) {
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
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Episode $epnum",
              style: TextStyle(fontWeight: FontWeight.bold, color: textColor),
            ),
            const SizedBox(
              height: 4,
            ),
            InkWell(
              child: Text(
                name,
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
              ),
              onTap: () {},
            )
          ],
        ),
      ]),
    );
  }
}
