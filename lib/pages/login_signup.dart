import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_base/services/api_client.dart';

class LoginSignUpPage extends StatelessWidget {
  LoginSignUpPage({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void loginUser() async {
    var email = emailController.text;
    var password = passwordController.text;
    await ApiClient().login(email, password);
  }

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
              color: const Color.fromARGB(255, 255, 255, 255),
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
            cursorHeight: 20.0,
            controller: emailController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(15),
                labelText: 'Email',
                labelStyle: const TextStyle(
                  color: Colors.blueGrey,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
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
            controller: passwordController,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.all(15),
                labelText: 'Password',
                labelStyle: const TextStyle(
                  color: Colors.blueGrey,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
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
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: ElevatedButton(
            onPressed: loginUser,
            child: const Text('Sign Up'),
          ),
        )
      ],
    );
  }
}
