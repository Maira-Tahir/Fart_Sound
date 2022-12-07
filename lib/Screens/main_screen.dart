import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.animateTo(2);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          backgroundColor: BackgroundColor,
          items: const <Widget>[
            Icon(Icons.shopping_cart, size: 30, color: Colors.grey),
            Icon(Icons.play_circle_fill_outlined, size: 30, color: Colors.blue),
            Icon(Icons.favorite, size: 30, color: Colors.grey),
          ],
          onTap: (index) {
            //Handle button tap
          },
        ),
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            controller: _tabController,
            tabs: const [
              Tab(
                text: "Soundboard",
              ),
              Tab(
                text: "Symphony of Farts",
              ),
              Tab(
                text: "Fart-o-mizer",
              ),
              Tab(
                text: "Fave-o-fart",
              ),
            ],
          ),
          title: Text('500+ Fart Sounds',
              style: TextStyle(
                  color: textColor, fontSize: 30, fontWeight: FontWeight.bold)),
          actions: [
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Settings()),
              ),
              child: Icon(
                Icons.settings,
                color: textColor,
                size: 40,
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
            Fart(),
            Fav(),
            // Put widgets here
          ],
        ),
      ),
    );
  }
}
