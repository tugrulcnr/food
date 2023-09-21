import 'package:flutter/material.dart';
import '../model/home_model.dart';
import '../service/home_swervice.dart';

class HomeViewModel with ChangeNotifier {
  HomeViewModel() {
    getData();
  }

  final HomeViewService openRestaurantsService = HomeViewService();
  List<Business> listBusiness = [];
  late HomeModel? openRestaurantsModel;

  final TextEditingController searchController = TextEditingController();
  List<Business> filteredBusinesses = []; // Yeni bir liste oluşturun

  Future<void> getData() async {
    openRestaurantsModel = await openRestaurantsService.fetchData();
    listBusiness = openRestaurantsModel?.businesses ?? [];

    notifyListeners();
  }

  // Metin girişi değiştiğinde bu fonksiyon çağrılır ve restoranları filtreler
  void filterRestaurants() {
    final searchText = searchController.text.toLowerCase();

    // Tüm işletmeleri filtrelemek için bir filtreleme kriteri uygulayın
    filteredBusinesses = listBusiness.where((business) {
      final name = business.name?.toLowerCase() ?? "boş";
      return name.contains(searchText);
    }).toList();

    // State'i güncelleyin ve yeni sonuçları gösterin
    //setState(() {});
    notifyListeners();
  }

  
}
