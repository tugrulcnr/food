import 'package:flutter/material.dart';
import 'package:food/data/colors.dart';
import 'package:food/data/image_path.dart';
import 'package:food/feathers/home/_ui/sub_pages/all_catagories/viev_model/all_catagories_view_model.dart';
import 'package:provider/provider.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AllCategoriesViewModel>(builder: (context, value, child) {
      return SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: value.catagoriesName.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap:(){value.changeSelectedIndex(index);} ,
              child: Card(
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                color: index == value.selectedIndex ?ColorWidgets().selectedCardBackground : ColorWidgets().authCardBackground,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                        height: 80,
                        child: Padding(
                          padding: const EdgeInsets.only(left:6.0,top: 6.0,bottom: 6.0),
                          child: CircleAvatar(
                              radius: 29,
                              backgroundColor:  ColorWidgets().textfieldBackground,
                              child: Image.asset(value.catagoriesImagePath[index])),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0, left: 18),
                      child: Text(value.catagoriesName[index],
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                          textAlign: TextAlign.center,
                          ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
