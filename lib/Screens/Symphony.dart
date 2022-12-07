import 'package:fart_sounds/AppUtils/ColorConstant.dart';
import 'package:flutter/material.dart';

class Symphony extends StatefulWidget {
  const Symphony({Key? key}) : super(key: key);

  @override
  State<Symphony> createState() => _SymphonyState();
}

class _SymphonyState extends State<Symphony> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
                shrinkWrap: true,
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: (MediaQuery.of(context).size.width / 1.2) /
                      (MediaQuery.of(context).size.height / 1.9),
                  mainAxisSpacing: 6.0,
                  crossAxisSpacing: 6.0,
                ),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.13,
                          width: MediaQuery.of(context).size.width * 0.23,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: lightBlueColor,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5.0, top: 5),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Image(
                                          image: AssetImage('assets/snd.png'),
                                        ),
                                      )),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Container(
                                        height: 25,
                                        width: 25,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: const Image(
                                          image: AssetImage('assets/like.png'),
                                        ),
                                      )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage('assets/image.png'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text('Fart ${index + 1}')
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
