import 'package:fart_sounds/AppUtils/ColorConstant.dart';
import 'package:fart_sounds/Screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Main_Screen()),
                ),
            child: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        title: const Text('Settings',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
      ),
      backgroundColor: BackgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10, top: 20),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                print("Contianer is tapped.");
              },
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  leading: Image(
                    width: 35,
                    height: 35,
                    image: AssetImage('assets/1.png'),
                  ),
                  title: Text('Premium Version',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text('No Ads'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                print("Contianer is tapped.");
              },
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  leading: Image(
                    width: 35,
                    height: 35,
                    image: AssetImage('assets/2.jpg'),
                  ),
                  title: Text('Restore Purchase',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text('Restore past purchase'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                print("Contianer is tapped.");
              },
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  leading: Image(
                    width: 35,
                    height: 35,
                    image: AssetImage('assets/rate.png'),
                  ),
                  title: Text('Rate Us',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text('Tell us what you think'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                print("Contianer is tapped.");
              },
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  leading: Image(
                    width: 35,
                    height: 35,
                    image: AssetImage('assets/more.png'),
                  ),
                  title: Text('More Apps',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  subtitle: Text('Look our other apps'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text('Copyright', style: TextStyle(fontSize: 15)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                print("Contianer is tapped.");
              },
              child: Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const ListTile(
                  leading: Image(
                    width: 40,
                    height: 40,
                    image: AssetImage('assets/copy.png'),
                  ),
                  title: Text('Sound effects abtained from',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
