import 'package:flutter/material.dart';
import '../../../data/colors.dart';
import '../../../data/image_path.dart';
import '../view_model/home_view_model.dart';
import '../widget/searchTextField.dart';
import '../widget/sub_pages/all_catagories/view/all_catagories_view.dart';
import '../../../localisation/en/strings.dart';
import 'package:provider/provider.dart';

import '../widget/RestaurantList.dart';

class HomeView extends StatefulWidget {
   const HomeView({super.key});


  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, value, child) {
        return Scaffold(
          backgroundColor: ColorWidgets().authCardBackground,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  topRowWidget(),
                  const SizedBox(height: 28),
                  hiMasajText(),
                  const SizedBox(height: 14),
                  const Padding(padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 10, bottom: 20),child: SearchTextFieldWidget()),
                  allCatagoriesRowWidget(),
                  const SizedBox(height: 24),
                  const AllCategories(),
                  openRestaurantsRowWidget(),
                   OpenRestaurants(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Padding openRestaurantsRowWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        top: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringName().openRestaurants,
            style: TextStyle(
              color: ColorWidgets().textColorFaded,
              fontSize: 22,
            ),
          ),
          Text(
            StringName().seeAll,
            style: TextStyle(
              color: ColorWidgets().textColorFaded,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Padding allCatagoriesRowWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            StringName().homeAllCategories,
            style: TextStyle(
              color: ColorWidgets().textColorFaded,
              fontSize: 22,
            ),
          ),
          Text(
            StringName().seeAll,
            style: TextStyle(
              color: ColorWidgets().textColorFaded,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Padding hiMasajText() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
      ),
      child: RichText(
        text: TextSpan(
            text: "Hey Halal,  ",
            style:
                TextStyle(color: ColorWidgets().textColorFaded, fontSize: 20),
            children: [
              TextSpan(
                  text: "Good Afternoon!",
                  style: TextStyle(
                      color: ColorWidgets().textColorFaded,
                      fontWeight: FontWeight.bold)),
            ]),
      ),
    );
  }

  Padding topRowWidget() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        top: 10,
      ),
      child: Row(
        children: [
          CircleAvatar(
              radius: 30,
              backgroundColor: ColorWidgets().textfieldBackground,
              child: Image.asset(ImagesPath.menuIcon)),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DELİVER TO",
                  style: TextStyle(
                      color: ColorWidgets().buttonBackground,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Halal Lab office",
                  style: TextStyle(color: ColorWidgets().textColorFaded),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(height: 60, child: Image.asset(ImagesPath.notificationIcon))
        ],
      ),
    );
  }
}



