import 'package:flutter/material.dart';
import 'package:odcflutterapp1/register.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.end,
        children: [
          WaveWidget(
            config: CustomConfig(
                gradients: [
                  [const Color(0xffd1152a), const Color(0xffe0215a)],
                  [const Color(0xffd1152a), const Color(0xffe0215a)],
                  [
                    const Color(0xffd1152a).withAlpha(50),
                    const Color(0xffe0215a).withAlpha(50)
                  ],
                  [
                    const Color(0xffd1152a).withAlpha(100),
                    const Color(0xffe0215a).withAlpha(100)
                  ],
                ],
                gradientBegin: Alignment.centerRight,
                gradientEnd: Alignment.centerLeft,
                durations: [3500, 3500, 10800, 6000],
                // heightPercentages: [1.5, -30, 1.5, -28, 1.5, -25, 1.5, -30],
                heightPercentages: [
                  1.4,
                  -1,
                  1.4,
                  1.4,
                  // 1.8,
                  // 0,
                ]),
            size: const Size(double.infinity, 150),
          ),
          const SizedBox(
            height: 120,
          ),
          // Text("Data ")
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello",
                        style: TextStyle(
                          color: Color(0xffb8b8b9),
                          fontSize: 73,
                          fontWeight: FontWeight.w500,
                        ),
                        // textAlign: TextAlign.start,
                      ),
                      Text(
                        "Sign in to your account",
                        style: TextStyle(
                          color: Color(0xffb8b8b9),
                          fontSize: 19,
                          // fontWeight: FontWeight.w500,
                        ),
                        // textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withAlpha(50),
                            offset: Offset(0, 10),
                            blurRadius: 10,
                            spreadRadius: 3)
                      ]),
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 20,
                  ),
                  padding: EdgeInsets.only(left: 20),
                  // color: Colors.grey,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Email"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withAlpha(20),
                            offset: Offset(0, 10),
                            blurRadius: 10,
                            spreadRadius: 3)
                      ]),
                  margin: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    bottom: 20,
                  ),
                  padding: EdgeInsets.only(left: 17),
                  // color: Colors.grey,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 17,
                        ),
                        border: InputBorder.none,
                        hintText: "password"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      )),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffea5282),
                            Color(0xffd1152a),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: Container(
                      width: 190,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Color(0xffb8b8b9),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Register()));
                      },
                      child: Text("Create",
                          style: TextStyle(
                            color: Color(0xffd1152a),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
