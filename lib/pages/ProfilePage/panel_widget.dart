import 'package:flutter/material.dart';
import 'package:glovo_recreation/pages/ProfilePage/util.dart';
import 'package:google_fonts/google_fonts.dart';

class PanelWidget extends StatelessWidget {
  final ScrollController controller;

  const PanelWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Text(
            'Account',
            style: GoogleFonts.inter(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),

          //categories
          SizedBox(height: 20,),
          Category(
              name: "My orders",
              // ignore: prefer_const_constructors
              iconOfCategory: Icon(
                Icons.alternate_email,
                color: Colors.orange,
              )),
          const SizedBox(
            height: 20,
          ),

          Category(
              name: "My information",
              iconOfCategory: const Icon(
                Icons.person_2_outlined,
                color: Colors.orange,
              )),
          const SizedBox(
            height: 40,
          ),
          Category(
              name: "Share and earn!",
              iconOfCategory: const Icon(
                Icons.card_giftcard,
                color: Colors.orange,
              )),
          const SizedBox(
            height: 20,
          ),

          Category(
              name: "Promocodes",
              iconOfCategory: const Icon(
                Icons.receipt,
                color: Colors.orange,
              )),
          const SizedBox(
            height: 20,
          ),

          Category(
              name: "F.A.Q.",
              iconOfCategory: const Icon(
                Icons.question_mark,
                color: Colors.orange,
              )),
          const SizedBox(
            height: 20,
          ),

          Category(
              name: "Notifications",
              iconOfCategory: const Icon(
                Icons.notifications,
                color: Colors.orange,
              )),
          const SizedBox(
            height: 20,
          ),

          Category(
              name: "Delete my account and data",
              iconOfCategory: const Icon(
                Icons.person_off_outlined,
                color: Colors.orange,
              )),
          const SizedBox(
            height: 20,
          ),
          Category(
              name: "Log out",
              iconOfCategory: const Icon(
                Icons.logout,
                color: Colors.orange,
              )),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              "Version 1.1",
              style: GoogleFonts.inter(color: Colors.grey),
            ),
          )
        ],
      );
}
