import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
//import 'package:flutter_switch/flutter_switch.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  List<bool> boList = List.filled(6, false);

  void _toggleBo(int index) {
    setState(() {
      for (int i = 0; i < boList.length; i++) {
        boList[i] =
            (i == index); // Set the selected index to true and others to false
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: appbar(),
        ),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        "assets/jpg/man.jpg",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75, top: 75, bottom: 20),
                  child: Container(
                    width: 15,
                    height: 15,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 13,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Title(
                      color: Colors.black,
                      child: const Text(
                        "Andrew Ainsley",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 9,
                  ),
                  const Text("andrew_ainsley@gmail.com"),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Flexible(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20, left: 8, right: 8),
                      child: Container(
                        width: 390,
                        height: 220,
                        decoration: BoxDecoration(
                          color: Colors.red[600],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Enjoy All Benefits!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                "Enjoy listening songs & packages with",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              const Text(
                                "better audio quality without",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              const Text(
                                "restrictions, and without ads.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: Size(180, 50),
                                ),
                                child: Text(
                                  'Get Premium',
                                  style: TextStyle(
                                      color: Colors.red[600], fontSize: 17),
                                ),
                                onPressed: () {
                                  // _showFullScreenDialog(context);
                                  openFullscreenDialog(context);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -10,
                      right: 12,
                      left: 200,
                      bottom: 0,
                      child: Image.asset(
                        "assets/jpg/music.png", fit: BoxFit.fitHeight,
                        // width: 100,
                        //width: MediaQuery.of(context).size.width *  0.10, // Width of the image
                        height: MediaQuery.of(context).size.height *
                            0.6, // Height of the image
                        // fit: BoxFit.fitHeight, // Adjust the fit as needed
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      newMethod(Icons.person_3_outlined, "Profile",
                          Icons.navigate_next, 0),
                      newMethod(Icons.notifications_outlined, "Notification",
                          Icons.navigate_next, 1),
                      newMethod(Icons.mic_none, "Audio & Video",
                          Icons.navigate_next, 2),
                      newMethod(Icons.play_circle_outline_outlined, "Playback",
                          Icons.navigate_next, 3),
                      newMethod(Icons.check_box_outlined,
                          "Data Saver & Storage", Icons.navigate_next, 4),
                      newMethod(Icons.security_outlined, "Security",
                          Icons.navigate_next, 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.image_aspect_ratio_outlined),
                                SizedBox(
                                  width: 35,
                                ),
                                Text("Language"),
                              ],
                            ),
                            Row(
                              children: [
                                const Text("English (Us)"),
                                Container(
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.navigate_next)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.remove_red_eye_outlined),
                                SizedBox(
                                  width: 35,
                                ),
                                Text("Dark Mode"),
                              ],
                            ),
                            CupertinoSwitch(
                              value: false,
                              onChanged: (bool value) {},
                            ),
                            // FlutterSwitch(
                            //     height: 25.0,
                            //     width: 40.0,
                            //     padding: 4.0,
                            //     toggleSize: 15.0,
                            //     borderRadius: 15.0,
                            //     value: isToggled,
                            //     onToggle: (value) {
                            //       setState(() {
                            //         isToggled = value;
                            //       });
                            //     }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  AppBar appbar() {
    return AppBar(
      forceMaterialTransparency: true,
      flexibleSpace: const Image(
        image: AssetImage('assets/png/logo.png'),
        width: 40,
        height: 50,
      ),
      automaticallyImplyLeading: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 45),
        child: Text("Profile"),
      ),
      actions: [
        CircleAvatar(
          radius: 15,
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_horiz_rounded,
                size: 15,
              )),
        )
      ],
    );
  }

  Row newMethod(
    IconData icons,
    String text,
    IconData next,
    int index,
  ) {
    //bool isSelected = selectedIndex == index;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  _toggleBo(index); // Toggle the boolean value for this index
                },
                icon: Icon(
                  icons,
                  color: boList[index] ? Colors.blue : Colors.black,
                )),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                _toggleBo(index); // Handle tap event for the text
              },
              child: Text(
                text,
                style: TextStyle(
                  color: boList[index]
                      ? Colors.blue
                      : Colors.black, // Change color based on selection
                ),
              ),
            ),
          ],
        ),
        Container(
          child: IconButton(onPressed: () {}, icon: Icon(next)),
        ),
      ],
    );
  }

  void _showFullScreenDialog(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      fullscreenDialog: true,
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Subscribe To Premium",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
            leading: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          body: Container(
            child: Center(
              child: Column(
                children: [
                  Text("Books have been scientifically proven to"),
                  Text("improve vocabulary."),
                  SizedBox(
                    height: 20,
                  ),
                  Flexible(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: 350,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: Lottie.asset('assets/json/crown.json'),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: 350,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ));
  }

  void openFullscreenDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => Dialog.fullscreen(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Scaffold(
            appBar: AppBar(
              title: Text("Subscribe To Premium",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
              leading: IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            body: Container(
              child: Center(
                child: Column(
                  children: [
                    Text("Books have been scientifically proven to"),
                    Text("improve vocabulary."),
                    SizedBox(
                      height: 20,
                    ),
                    Flexible(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: 350,
                              height: 300,
                              decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                ),
                                child: Lottie.asset('assets/json/crown.json'),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 350,
                              height: 300,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
