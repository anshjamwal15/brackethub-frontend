import 'package:brackethub_app/logic/cubits/internet_cubit.dart';
import 'package:brackethub_app/screens/home/screens/friends_list.dart';
import 'package:brackethub_app/utils/app_style.dart';
import 'package:brackethub_app/widgets/bottom_navigation_bar.dart';
import 'package:brackethub_app/widgets/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocListener<InternetCubit, InternetState>(
      listener: (context, state) {
        switch (state) {
          case InternetState.lost:
            showSnackBar(context, "Please connect to the internet");
            break;
          default:
            break;
        }
      },
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: kBackground2Color,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: getIconVerticalSpacing(context),
                      ),
                      child: index == 0
                          ? IconContainer(
                              kPrimaryColor,
                              Icons.message_rounded,
                              size.width * 0.09,
                              size.width * 0.16,
                            )
                          : const _UserContainer(
                              "assets/images/male_avatar.png",
                            ),
                    );
                  },
                ),
              ),
            ),
            const Expanded(
              flex: 7,
              child: FriendsList(),
            )
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: const CustomNavigationBar(),
        ),
      ),
    );
  }

  double getIconVerticalSpacing(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    const paddingPercentage = 0.01;
    return screenHeight * paddingPercentage;
  }
}

class _UserContainer extends StatelessWidget {
  const _UserContainer(this.imageURL);
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerSize = screenWidth * 0.16;
    return Container(
      width: containerSize,
      height: containerSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imageURL),
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, String content) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
      backgroundColor: Colors.red[400],
      behavior: SnackBarBehavior.floating,
      showCloseIcon: true,
      duration: const Duration(seconds: 10),
    ),
  );
}
