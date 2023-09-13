import 'package:flutter/material.dart';
import 'package:food/data/colors.dart';
import 'package:food/data/image_path.dart';

class AuthStackWidget extends StatelessWidget {
  AuthStackWidget({super.key, required this.headText, required this.subText,required this.childWidget});
  String headText;
  String subText;
  Widget childWidget;

  @override
  Widget build(BuildContext context) {
    double _deviceHeight = MediaQuery.of(context).size.height;
    double _deviceWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Positioned(
          top: 0,
          child: Stack(
            children: [
              imageView(context),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                top: 0,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: TextAlign.center,
                          headText,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          subText,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          top: ((_deviceHeight * 2) / 7),
          left: 0,
          right: 0,
          bottom: 0,
          child: SizedBox(
            height: _deviceHeight,
            width: _deviceWidth,
            child: Card(
              color: WidgetsColor().authCardBackground,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: PageRadius().cardRoundedRectangleBorder,
                  topRight: PageRadius().cardRoundedRectangleBorder,
                ),
              ),
              margin: EdgeInsets.zero,
              child: childWidget ,
            ),
          ),
        )
      ],
    );
  }

  Image imageView(BuildContext context) {
    return Image.asset(
      alignment: Alignment.topCenter,
      width: MediaQuery.of(context).size.width,
      ImagesPath.authImage,
    );
  }
}

class PageRadius {
  Radius cardRoundedRectangleBorder = const Radius.circular(20);
}
