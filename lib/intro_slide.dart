import 'package:flutter/material.dart';
import 'package:smart_polnes/intro_model.dart';
import 'package:smart_polnes/intro_screen.dart';
import 'package:smart_polnes/dot_indicator.dart';

class IntroSlide extends StatefulWidget {
  const IntroSlide({Key? key}) : super(key: key);

  @override
  State<IntroSlide> createState() => _IntroSlideState();
}

class _IntroSlideState extends State<IntroSlide> {
  late PageController _pageController;

  int _indexPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      _pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 24,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    _indexPage = index;
                  });
                },
                itemCount: intromodel_data.length,
                controller: _pageController,
                itemBuilder: (context, index) => IntroScreen(
                    image: intromodel_data[index].image,
                    title: intromodel_data[index].title,
                    description: intromodel_data[index].description),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  intromodel_data.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: DotIndicator(isActive: index == _indexPage),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40, left: 40),
              child: InkWell(
                onTap: () {
                  _pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease);
                },
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      _indexPage == intromodel_data.length - 1
                          ? "Get Started"
                          : "Next",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 85,
            ),
          ],
        ),
      ),
    );
  }
}
