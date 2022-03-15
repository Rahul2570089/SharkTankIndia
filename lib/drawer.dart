import 'package:flutter/material.dart';
import 'package:sharktank/colors.dart';
import 'package:sharktank/episodes.dart';
import 'package:sharktank/productdetails.dart';
import 'package:sharktank/profiles.dart';
import 'package:flutter_svg/flutter_svg.dart';


// ignore: camel_case_types
class drawer extends StatelessWidget {
  const drawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: background,
        child: ListView(
          children: [
            const SizedBox(height: 44,),
            Center(child: Text("Menu",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: textColor),)),
            const SizedBox(height: 200,),
            Lists(
                text: "Sharks Profiles",
                icon: Icons.people,
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profiles()));
                }
            ),
            const SizedBox(height: 21,),
            lists(
                text: "Episodes",
                svg: "assets/images/episodeicon.svg",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Episodes()));
                }
            ),
            const SizedBox(height: 21,),
            lists(
                text: "Product Details",
                svg: "assets/images/producticon.svg",
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProductDetails()));
                }
            ),
            const SizedBox(height: 230,),
            Divider(color: textColor,),
            const SizedBox(height: 15,),
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("SoleDeveloper",style: TextStyle(fontWeight: FontWeight.bold,color: textColor),),
                 ),
                 Image.asset("assets/images/logo.png",width: 30,height: 30,),
               ],
            )
          ],
        ),
      ),
    );
  }
}

Widget lists({required String text, required String svg, required VoidCallback onTap}) {
  return ListTile(
      leading: SvgPicture.asset(svg,height: 23,width: 23,color: appbaricon,),
      title: Text(text,style: TextStyle(color: textColor),),
      onTap: onTap,
  );
}

// ignore: non_constant_identifier_names
Widget Lists({required String text,required IconData icon,required VoidCallback onTap}) {
  return ListTile(
      leading: Icon(icon,color: appbaricon),
      title: Text(text,style: TextStyle(color: textColor),),
      onTap: onTap,
  );
}

  
  