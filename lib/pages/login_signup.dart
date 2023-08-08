import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginSignUpPage extends StatelessWidget {
  const LoginSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: const Color.fromRGBO(117, 121, 123, 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  emailAndPassword(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            // child: Image.asset('images/school.png'),
            child: Image.asset(
              'images/school.png',
              fit: BoxFit.fill,
              height: 1000,
            ),
          )
        ],
      ),
    );
  }

  Column emailAndPassword() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(
            top: 40,
            left: 70,
            right: 70,
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: const Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0)
          ]),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(15),
                hintText: 'Email',
                hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 113, 109, 109), fontSize: 14),
                // prefixIcon: Padding(
                //   padding: const EdgeInsets.all(12),
                //   child: SvgPicture.asset('assets/icons/Search.svg'),
                // ),
                suffixIcon: SizedBox(
                  width: 100,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // const VerticalDivider(
                        //   color: Colors.black,
                        //   indent: 10,
                        //   endIndent: 10,
                        //   thickness: 0.1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/Filter.svg'),
                        ),
                      ],
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none)),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 40,
            left: 70,
            right: 70,
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: const Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0)
          ]),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(15),
                hintText: 'Password',
                hintStyle: const TextStyle(
                    color: Color.fromARGB(255, 113, 109, 109), fontSize: 14),
                // prefixIcon: Padding(
                //   padding: const EdgeInsets.all(12),
                //   child: SvgPicture.asset('assets/icons/Search.svg'),
                // ),
                suffixIcon: SizedBox(
                  width: 100,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // const VerticalDivider(
                        //   color: Colors.black,
                        //   indent: 10,
                        //   endIndent: 10,
                        //   thickness: 0.1,
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset('assets/icons/Filter.svg'),
                        ),
                      ],
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none)),
          ),
        ),
      ],
    );
  }
}
