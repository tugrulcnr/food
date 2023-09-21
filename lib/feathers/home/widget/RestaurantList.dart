import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/image_path.dart';
import '../view_model/home_view_model.dart';

class OpenRestaurants extends StatelessWidget {
  const OpenRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    HomeViewModel();

    return Consumer<HomeViewModel>(
      builder: (context, value, child) {
        value.searchController.addListener(value.filterRestaurants);
        return Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: (deviceHeight * 0.35) * value.listBusiness.length,
            child: value.searchController.text == ""
                ? ifNotFiltered(value, deviceHeight, deviceWidth)
                : ifFiltered(value, deviceHeight, deviceWidth),
          ),
        );
      },
    );
  }

  ListView ifNotFiltered(
      HomeViewModel value, double deviceHeight, double deviceWidth) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: value.listBusiness.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                      height: deviceHeight * 0.22,
                      width: deviceWidth,
                      child: Image.network(
                        fit: BoxFit.cover,
                        value.listBusiness[index].imageUrl != ""
                            ? value.listBusiness[index].imageUrl ??
                                "http://via.placeholder.com/350x150"
                            : "http://via.placeholder.com/350x150",
                      ))),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  textAlign: TextAlign.start,
                  value.listBusiness[index].name ?? "bos",
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  if (value.listBusiness[index].categories != null)
                    ...value.listBusiness[index].categories!.map((e) {
                      return Text(
                        e.title.toString() +
                            (e.title ==
                                    value.listBusiness[index].categories!.last
                                        .title
                                ? "   "
                                : "  -  "),
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w200),
                      );
                    }),
                ],
              ),
              SizedBox(
                height: deviceHeight * 0.038,
                child: Row(
                  children: [
                    Image.asset(ImagesPath.starIcon),
                    Text(
                      " " + value.listBusiness[index].rating.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(ImagesPath.busIcon),
                    const Text("  Free"),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(ImagesPath.timeIcon),
                    const Text("  20 min"),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  ListView ifFiltered(
      HomeViewModel value, double deviceHeight, double deviceWidth) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: value.filteredBusinesses.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                          height: deviceWidth * 0.15,
                          width: deviceWidth * 0.15,
                          child: Image.network(
                            fit: BoxFit.cover,
                            value.filteredBusinesses[index].imageUrl != ""
                                ? value.filteredBusinesses[index].imageUrl ??
                                    "http://via.placeholder.com/350x150"
                                : "http://via.placeholder.com/350x150",
                          ))),
                          SizedBox(width: 10,),
                  Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          textAlign: TextAlign.start,
                          value.filteredBusinesses[index].name ?? "bos",
                          style: const TextStyle(
                              fontSize: 15,),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 20,
                            child: Image.asset(ImagesPath.starIcon)),
                          Text(
                            " " +
                                value.filteredBusinesses[index].rating
                                    .toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
