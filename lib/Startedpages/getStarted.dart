// ignore: file_names
import 'package:designfyp/Dashboard/dashboard.dart';
import 'package:designfyp/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class getStarted extends StatefulWidget {
  const getStarted({super.key});

  @override
  State<getStarted> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<getStarted> {
  PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    Constants myConstants = Constants();

    Size size = MediaQuery.of(context)
        .size; //hum sidha sidha media query vaha bhi use kr skte hain jaha width dete hain yaha hum ne ik variable liya ha jis ko size k naam sa store kia ha
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = (index == 3);
                });
              },
              children: [
                Container(
                  width: size.width,
                  height: size.height,
                  // color: Color.fromARGB(255, 114, 177, 206),
                  color: myConstants.primaryColor.withOpacity(.5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/1.png'),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyDashboard()));
                          },
                          child: Container(
                            //height: 50,
                            // width: size.width * 0.7,
                            decoration: const BoxDecoration(
                              // color: myConstants.primaryColor,
                              //  color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                '',
                                //'Get started',
                                // style: TextStyle(
                                //    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.height,
                  // color: Color.fromARGB(255, 114, 177, 206),
                  color: myConstants.primaryColor.withOpacity(.5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/2.png'),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyDashboard()));
                          },
                          child: Container(
                            //height: 50,
                            // width: size.width * 0.7,
                            decoration: const BoxDecoration(
                              // color: myConstants.primaryColor,
                              //   color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                '',
                                //'Get started',
                                style: TextStyle(
                                    //color: Colors.white, fontSize: 18
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.height,
                  // color: Color.fromARGB(255, 114, 177, 206),
                  color: myConstants.primaryColor.withOpacity(.5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/3.png'),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyDashboard()));
                          },
                          child: Container(
                            height: 50,
                            width: size.width * 0.7,
                            decoration: const BoxDecoration(
                              // color: myConstants.primaryColor,
                              //color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                '',
                                //   style: TextStyle(
                                //  color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.height,
                  // color: Color.fromARGB(255, 114, 177, 206),
                  color: myConstants.primaryColor.withOpacity(.5),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/4.png'),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyDashboard()));
                          },
                          child: Container(
                            height: 50,
                            width: size.width * 0.7,
                            decoration: const BoxDecoration(
                              // color: myConstants.primaryColor,
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                'Get started',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
          Container(
              alignment: Alignment(0, 0.80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip
                  GestureDetector(
                    onTap: () {
                      _controller.jumpTo(2);
                    },
                    child: Text("skip"),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 4,
                  ),

                  //next or done

                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MyDashboard();
                            }));
                          },
                          child: Text("done"),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text("next"),
                        )
                ],
              ))
        ],
      ),
    );
  }
}
