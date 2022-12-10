import 'package:fart_sounds/AppUtils/ColorConstant.dart';
import 'package:fart_sounds/Screens/Fart.dart';
import 'package:fart_sounds/Screens/Settings.dart';
import 'package:fart_sounds/Screens/Symphony.dart';
import 'package:fart_sounds/Screens/fav.dart';
import 'package:fart_sounds/Screens/soundboard.dart';
import 'package:flutter/material.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({Key? key}) : super(key: key);

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.animateTo(0);
  }

  @override
  var isPlaying = false;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            child: Padding(
              padding: EdgeInsets.only(top: 0, right: 10, bottom: 10),
              child: IconButton(
                  // alignment: Alignment.topCenter,
                  icon: isPlaying
                      ? Icon(
                          Icons.pause,
                          size: 40.0,
                        )
                      : Icon(Icons.play_arrow, size: 40.0),
                  onPressed: () {
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                  }),
            ),
            onPressed: () {}),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            tabs: const [
              Tab(
                child: Text("Soundboard",
                    style: TextStyle(fontSize: 10, color: Colors.black)),
              ),
              Tab(
                child: Text("Symphony of Farts",
                    style: TextStyle(fontSize: 10, color: Colors.black)),
              ),
              Tab(
                child: Text("Fart-o-mizer",
                    style: TextStyle(fontSize: 10, color: Colors.black)),
              ),
              Tab(
                child: Text("Fave-o-fart",
                    style: TextStyle(fontSize: 10, color: Colors.black)),
              ),
            ],
          ),
          title: const Text('500+ Fart Sounds',
              style: TextStyle(
                  color: textColor, fontSize: 25, fontWeight: FontWeight.bold)),
          actions: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Icon(
                  Icons.settings,
                  color: textColor,
                  size: 25,
                ),
              ),
            )
          ],
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            SoundBoard(),
            Symphony(),
            fart(),
            fav(),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 60.0,
          child: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 58.0),
                    child: IconButton(
                      icon: Icon(Icons.shopping_cart, size: 30),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 58.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite,
                        size: 30,
                        color: selectedIndex == 3 ? textColor : Colors.black,
                      ),
                      onPressed: () {
                        _tabController.animateTo(3);
                        setState(() {
                          selectedIndex = 3;
                        });
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => fav()));
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
