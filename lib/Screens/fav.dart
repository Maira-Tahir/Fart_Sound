import 'package:fart_sounds/AppUtils/ColorConstant.dart';
import 'package:fart_sounds/Models/SoundModel.dart';
import 'package:flutter/material.dart';

class fav extends StatefulWidget {
  fav({Key? key}) : super(key: key);

  @override
  State<fav> createState() => _favState();
}

class _favState extends State<fav> {
  List<SoundModel> soundList = [];

  Color _favIconColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    setupList();
  }

  void setupList() {
    for (int i = 0; i < 5; i++) {
      soundList.add(SoundModel(name: 'fart $i', isFav: false, isShare: false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            shrinkWrap: true,
            itemCount: soundList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.13,
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: lightBlueColor,
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (soundList[index].isShare) {
                                      soundList[index].isShare = false;
                                    } else {
                                      soundList[index].isShare = true;
                                    }
                                  });
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: soundList[index].isShare
                                          ? Colors.green
                                          : Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(
                                    Icons.share,
                                    size: 14,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (soundList[index].isFav) {
                                      soundList[index].isFav = false;
                                    } else {
                                      soundList[index].isFav = true;
                                    }
                                  });
                                },
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: soundList[index].isFav
                                          ? Colors.green
                                          : Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    soundList[index].isFav
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    size: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage('assets/image.png'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(soundList[index].name)
                ],
              );
            }),
      ),
    );
  }
}
