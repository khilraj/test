import 'package:first_app/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBardingScreenView extends StatefulWidget {
  const OnBardingScreenView ({super.key});

  @override
  State<OnBardingScreenView> createState() => _OnBardingScreenViewState();
}

class _OnBardingScreenViewState extends State<OnBardingScreenView> {
    // controller to keep track of pages
  final PageController _controller = PageController();

  // keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              // ScreenPage1(),
              // ScreenPage2(),
              // ScreenPage3(),
            ],
          ),

          // dot indicator
          Container(
            alignment: const Alignment(0,0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: const Text("Skip", style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  ),

                SmoothPageIndicator(controller: _controller, count: 3),

                // next or done
                onLastPage?
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context, 
                      AppRoute.loginRoute
                    );
                    // Navigator.push(
                    //   context, 
                    //   MaterialPageRoute(
                    //     builder: (context){
                    //       return LoginScreen();
                    //     },
                    //     ),
                    //   );
                  },
                  child: const Text("Done", style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                )
                : GestureDetector(
                    onTap: () {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500), 
                      curve: Curves.easeIn,
                      );
                    },
                  child: const Text("Next", style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}  