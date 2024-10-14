import 'package:flutter/material.dart';

class FlutterScreen extends StatefulWidget {
  const FlutterScreen({super.key});

  @override
  State<FlutterScreen> createState() => _FlutterScreenState();
}

class _FlutterScreenState extends State<FlutterScreen> {
  String videoUrl =
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'; // Sample video URL

  List<bool> boList = List.filled(10, false);
  bool showVideos = true;
  bool showDescription = false;
  bool isVideosSelect = true;
  bool isDescriptionSelect = false;
  bool bell = false;

  void _toggleBo(int index) {
    setState(() {
      for (int i = 0; i < boList.length; i++) {
        boList[i] =
            (i == index); // Set the selected index to true and others to false
      }
    });
  }

  void _onVideosPressed() {
    setState(() {
      showVideos = true;
      showDescription = false;
      isVideosSelect = true;
      isDescriptionSelect = false;
    });
  }

  void _onDescriptionPressed() {
    setState(() {
      showDescription = true; // Show description when button is pressed
      showVideos = false;
      isVideosSelect = false;
      isDescriptionSelect = true; // Hide videos
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Center(
              child: Text(
            "Flutter",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  bell = !bell;
                });
              },
              icon: Icon(
                bell == false
                    ? Icons.notifications
                    : Icons.notification_add_rounded,
                color: bell == false ? const Color(0xff6648f1) : Colors.red,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                width: 500,
                height: 200,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xfff5f3ff),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset("assets/png/Flutter.png"),
                        ),
                        const Center(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.play_arrow,
                              size: 30,
                              color: Color(0xff6648f1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 14, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutter Complete Course",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text("Created by Dear Programmer",
                      style: TextStyle(fontSize: 16, color: Colors.black54)),
                  Text("55 Videos",
                      style: TextStyle(fontSize: 16, color: Colors.black54)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                width: 500,
                height: 90,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xfff5f3ff),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        onPressed: _onVideosPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isVideosSelect == false
                              ? const Color(0xff6648f1)
                              : Colors.blue[400],
                          fixedSize: const Size(130, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Videos",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )),
                    ElevatedButton(
                        onPressed: _onDescriptionPressed,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isDescriptionSelect == true
                              ? Colors.blue[400]
                              : const Color(0xff6648f1),
                          fixedSize: const Size(170, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Description",
                          style: TextStyle(fontSize: 17, color: Colors.white),
                        )),
                  ],
                ),
              ),
            ),
            if (showVideos)
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        newMethod(
                            "Introduction to Flutter", "20 mins 50 sec", 0),
                        const SizedBox(
                          height: 20,
                        ),
                        newMethod("Installing Flutter to windows",
                            "20 mins 50 sec", 1),
                        const SizedBox(
                          height: 20,
                        ),
                        newMethod(
                            "Setup Emulator on Windows", "20 mins 50 sec", 2),
                        const SizedBox(
                          height: 20,
                        ),
                        newMethod(
                            "Creating Our First App", "20 mins 50 sec", 3),
                        const SizedBox(
                          height: 20,
                        ),
                        newMethod("Creating Our Flutter Template",
                            "20 mins 50 sec", 4),
                        const SizedBox(
                          height: 20,
                        ),
                        newMethod("Creating Our Flutter Template",
                            "20 mins 50 sec", 5),
                        const SizedBox(
                          height: 20,
                        ),
                        newMethod("Creating Our Flutter Template",
                            "20 mins 50 sec", 6),
                        const SizedBox(
                          height: 20,
                        ),
                        newMethod("Creating Our Flutter Template",
                            "20 mins 50 sec", 7),
                        const SizedBox(
                          height: 20,
                        ),
                        newMethod("Creating Our Flutter Template",
                            "20 mins 50 sec", 8),
                        const SizedBox(
                          height: 20,
                        ),
                        newMethod("Creating Our Flutter Template",
                            "20 mins 50 sec", 9),
                      ],
                    ),
                  ),
                ),
              ),
            if (showDescription) // Show description if showDescription is true
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "This Flutter Complete Course covers everything from the basics to advanced concepts. You'll learn how to create stunning apps for both Android and iOS platforms, including practical examples and hands-on exercises.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Row newMethod(
    String text1,
    String text2,
    int index,
  ) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor:
              boList[index] ? Colors.green : const Color(0xff6648f1),
          radius: 20,
          child: IconButton(
              onPressed: () {
                _toggleBo(index); // Toggle the boolean value for this index
              },
              icon: Icon(
                boList[index] ? Icons.pause : Icons.play_arrow,
                color: Colors.white,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(text2),
            ],
          ),
        ),
      ],
    );
  }
}
