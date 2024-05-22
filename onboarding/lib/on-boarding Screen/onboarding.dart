import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/Home/dashboardscreen.dart';
import 'package:onboarding/constants/images.dart';
import 'package:onboarding/on-boarding%20Screen/content.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentindex = 0;
  PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: pageViewContent.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentindex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Image.asset(
                            pageViewContent[index].image,
                            height: 400,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40, right: 40),
                            child: Text(
                              pageViewContent[index].title,
                              style: const TextStyle(
                                fontFamily: "Josef",
                                fontSize: 28,
                                letterSpacing: -0.5,
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(right: 40, left: 40),
                            child: Text(
                              pageViewContent[index].text,
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              height: 200,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    pageViewContent.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Container(
                        margin: EdgeInsets.only(right: 3),
                        height: 10,
                        width: currentindex == index ? 30 : 10,
                        decoration: BoxDecoration(
                            color: currentindex == index
                                ? Colors.redAccent[700]
                                : Colors.redAccent[100],
                            //
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 92,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => dashboard(),
                    ),
                  );
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 75,
                right: 20,
                child: currentindex == pageViewContent.length - 1
                    ? ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.red[50]),
                            shape: MaterialStatePropertyAll(CircleBorder())),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => dashboard(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.arrow_right_alt_rounded,
                          color: Colors.redAccent[700],
                        ),
                      )
                    : SizedBox()),
          ],
        ),
      ),
    );
  }
}
