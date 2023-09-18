import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:food/data/colors.dart';
import 'package:food/data/image_path.dart';
import 'package:food/feathers/home/_ui/searchTextField.dart';
import 'package:food/feathers/home/_ui/sub_pages/all_catagories/view/all_catagories_view.dart';
import 'package:food/feathers/home/_ui/sub_pages/open_restaurants/view/open_restaurants_view.dart';
import 'package:food/localisation/en/strings.dart';
import 'package:food/product/network/network_manager.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  /*
    final Dio _networkManager = ProjectNetworkManager.instance.service;

  @override
  void initState() {
    super.initState();
  nagetDatame();
    
  }
  Future<void> nagetDatame() async {
    final response = await _networkManager.get("search?location=ANKARA");
    if(response.statusCode == 200){
      print(response.data);
    }else{
      print("sorun oldu ---"*10);
    }
  }
  */
  
  @override
  Widget build(BuildContext context) {
    return Consumer(
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
