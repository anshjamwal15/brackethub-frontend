import 'package:brackethub_app/cubits/internet_cubit.dart';
import 'package:brackethub_app/screens/home/components/main_screen.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InternetCubit, InternetState>(
      builder: (context, state) {
        return Scaffold(
          // appBar: AppBar(
          //   backgroundColor: state == InternetState.gained
          //       ? kBackgroundColor
          //       : Colors.red[400],
          //   automaticallyImplyLeading: false,
          //   p
          // ),
          body: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: kBackground2Color,
                  child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: getIconVerticalSpacing(context),
                        ),
                        child: index == 0
                            ? iconContainer(
                                Icons.message_rounded,
                                context,
                                color: kPrimaryColor,
                              )
                            : iconContainer(
                                Icons.dangerous,
                                context,
                                color: kPrimaryColor,
                              ),
                      );
                    },
                  ),
                ),
              ),
              const Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: MainScreen(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Theme(
            data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            child: const CustomNavigationBar(),
          ),
        );
      },
    );
  }

  double getIconVerticalSpacing(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    const paddingPercentage = 0.01;
    return screenHeight * paddingPercentage;
  }
}

Widget iconContainer(IconData iconData, BuildContext context, {Color? color}) {
  final screenWidth = MediaQuery.of(context).size.width;
  final containerSize = screenWidth * 0.16;
  return Container(
    width: containerSize,
    height: containerSize,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    child: Center(
      child: Icon(
        iconData,
        color: Colors.white,
        size: containerSize * 0.5,
      ),
    ),
  );
}
