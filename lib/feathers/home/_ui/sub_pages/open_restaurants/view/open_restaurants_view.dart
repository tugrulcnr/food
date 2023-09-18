import 'package:flutter/material.dart';
import 'package:food/data/image_path.dart';
import 'package:food/feathers/home/_ui/sub_pages/open_restaurants/view_model/open_restaurants_view_model.dart';
import 'package:provider/provider.dart';

class OpenRestaurants extends StatelessWidget {
  const OpenRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    OpenRestaurantsViewModel();
    return Consumer<OpenRestaurantsViewModel>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: (deviceHeight * 0.33) * value.listBusiness.length,
            child: ListView.builder(
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
                                value.listBusiness[index].imageUrl ??
                                    "http://via.placeholder.com/350x150",
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
                                            value.listBusiness[index]
                                                .categories!.last.title
                                        ? "   "
                                        : "  -  "),
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w200),
                              );
                            }),
                        ],
                      ),

                      Row(
                        children: [
                          Image.asset(ImagesPath.starIcon)
                        ],
                      )

                      /*
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          textAlign: TextAlign.start,
                          value.listBusiness[index].categories?[0].title ??
                              "bos",
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w200),
                        ),
                      ),
                      */
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
