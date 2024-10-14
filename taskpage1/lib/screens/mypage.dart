import 'package:flutter/material.dart';
import 'package:taskpage1/screens/bottomnavigation_screen.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height; //to show entire height
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.60,
              width: width,
              decoration: const BoxDecoration(
                color: Color(0xff6649ef),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(100)),
                image:
                    DecorationImage(image: AssetImage("assets/png/images.png")),
              ),
            ),
            Container(
              color: const Color(0xff6649ef),
              child: Container(
                height: height * 0.40,
                width: width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100)),
                ),
                child: Center(
                  child: Column(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(height: 60),
                      const Text(
                        "Learning is Everything",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Text("Learning with pleasure with Dear"),
                          Text("Programmer Wherever you are"),
                        ],
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        width: 200,
                        child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff6649ef),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5))),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const BottomNavigationScreen()),
                                  );
                                },
                                child: const Text(
                                  "Get Start",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
