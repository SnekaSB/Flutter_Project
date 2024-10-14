import 'package:flutter/material.dart';
import 'package:taskpage1/screens/flutterscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Fixed Header
        Container(
          height: 180,
          decoration: const BoxDecoration(
            color: Color(0xff6649ef),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.dashboard),
                      color: Colors.white,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.notifications, color: Colors.white),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: Row(
                    children: [
                      Text(
                        "Hi, Programmer",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      labelText: 'Search here...',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        // SizedBox(height: 30),
        // Scrollable content
        Flexible(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    newMethod(Colors.yellow, "Category", Icons.category),
                    newMethod(Colors.lightGreen, "Classes", Icons.class_),
                    newMethod(Colors.lightBlue, "Free Course",
                        Icons.padding_outlined),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    newMethod(Colors.red, "BookStore", Icons.store),
                    newMethod(Colors.purple, "Live Course",
                        Icons.play_circle_fill_outlined),
                    newMethod(Colors.lightGreenAccent, "LeaderBoard",
                        Icons.emoji_events),
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Courses",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      Text("See All",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple)),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardMethod(
                        image: "assets/png/Flutter.png",
                        label1: "Flutter",
                        label2: "55 Videos",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FlutterScreen()),
                          );
                        }),
                    cardMethod(
                      image: "assets/png/React.png",
                      label1: "React Native",
                      label2: "50 Videos",
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    cardMethod(
                        image: "assets/png/Python.png",
                        label1: "Python",
                        label2: "45 Videos"),
                    cardMethod(
                        image: "assets/png/CSharp.png",
                        label1: "C Sharp",
                        label2: "57 Videos"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget cardMethod({
    required String image,
    required String label1,
    required String label2,
    void Function()? onPressed,
  }) {
    return Container(
      width: 170,
      height: 210,
      decoration: const BoxDecoration(
        color: Color(0xfff5f3ff),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                image,
                width: 100,
                height: 100,
              ),
            ),
            Column(
              children: [
                Text(
                  label1,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                const SizedBox(
                  height: 7,
                ),
                Text(
                  label2,
                  style: const TextStyle(color: Colors.black38),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Column newMethod(Color color, String label, IconData img) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: IconButton(
            onPressed: () {},
            icon: Icon(img),
            iconSize: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        Text(label, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}
