import 'package:flutter/material.dart';
import 'package:food/feathers/home/_ui/sub_pages/open_restaurants/view_model/open_restaurants_view_model.dart';
import 'package:provider/provider.dart';

class OpenRestaurants extends StatelessWidget {
  const OpenRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<OpenRestaurantsViewModel>(
        builder: (context, value, child) {
          return Padding(
            padding: const EdgeInsets.all(25.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                itemCount: value.openRestaurantsName.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                                value.openRestaurantsImagePath[index])),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            textAlign: TextAlign.start,
                            value.openRestaurantsName[index],
                            style: const TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
