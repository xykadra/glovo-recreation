import "package:flutter/material.dart";
import 'package:glovo_recreation/pages/Profile/profile_page.dart';
import "package:glovo_recreation/pages/coupons_page.dart";
import "package:google_fonts/google_fonts.dart";

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Container(
              child: ListView(children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ProfilePage())));
                    },
                    child: Container(
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 72, 72, 72),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Icon(
                          Icons.person_2_outlined,
                          color: Color.fromARGB(255, 255, 204, 0),
                          weight: 2,
                        )),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Container(
                        //I can't make it centered ##Mirza Kadrić
                        //padding: EdgeInsets.all(),
                        height: 40,

                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 72, 72, 72),
                            borderRadius: BorderRadius.circular(40)),
                        // ignore: prefer_const_constructors

                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.yellow,
                          // ignore: prefer_const_constructors
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // ignore: prefer_const_constructors
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            hintText: "Šta želi da ti donsesemo?",
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => CouponsPage())));
                    },
                    child: Container(
                        height: 35,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 72, 72, 72),
                            borderRadius: BorderRadius.circular(35)),
                        child: Icon(
                          Icons.ios_share_outlined,
                          color: Color.fromARGB(255, 255, 204, 0),
                          weight: 3,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Stupska , 19, B',
                  style: GoogleFonts.inter(color: Colors.white, fontSize: 18),
                ),
                Icon(
                  Icons.arrow_drop_down_rounded,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                height: 420,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  "Kategorije",
                  style: GoogleFonts.sourceCodePro(
                      color: Colors.white, fontSize: 32),
                )),
              ),
            ),
          ])),
        ),
      ),
    );
  }
}
