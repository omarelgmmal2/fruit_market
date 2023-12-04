import 'package:flutter/material.dart';
import 'package:fruit_market/onboarding/model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../auth/login/view.dart';


class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginView(),
                  ),
                      (route) => false);
            },
            child: const Text(
              "Skip",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(
                  0xff898989,
                ),
              ),
            ),
          ),
        ],
      ),
      body: PageView.builder(
        itemBuilder: (context, index) => _Item(
          model: list[index],
        ),
        itemCount: list.length,
        controller: onBoardingController,
        onPageChanged: (value) {
          if (value == list.length - 1) {
            isLast = true;
            setState(() {});
          } else {
            isLast = false;
            setState(() {});
          }
        },
      ),
    );
  }
}

List<PresentionModel> list = [
  PresentionModel(
    title: "E Shopping",
    body: "Explore  top organic fruits & grab them",
    image: "assets/images/presention1.png",
  ),
  PresentionModel(
    title: "Delivery on the way",
    body: "Get your order by speed delivery",
    image: "assets/images/presention2.png",
  ),
  PresentionModel(
    title: "Delivery Arrived",
    body: "Order is arrived at your Place",
    image: "assets/images/presention3.png",
  ),
];

var onBoardingController = PageController();
bool isLast = false;

class _Item extends StatelessWidget {
  final PresentionModel model;

  const _Item({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            model.image,
            height: 250,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            model.title,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Color(0xff2F2E41)),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            model.body,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff78787C)),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmoothPageIndicator(
                controller: onBoardingController,
                count: list.length,
                effect: const ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  dotHeight: 10,
                  dotWidth: 10,
                  expansionFactor: 4,
                  spacing: 5.0,
                  activeDotColor: Color(0xff6AA03B),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: const Color(0xff69A03A),
              padding: const EdgeInsets.symmetric(horizontal: 50),
              fixedSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {
              if (isLast) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                        (route) => false);
              } else {
                onBoardingController.nextPage(
                    duration: const Duration(
                      milliseconds: 750,
                    ),
                    curve: Curves.fastLinearToSlowEaseIn
                );
              }
            },
            child: const Text(
              "Next",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
