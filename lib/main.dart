import 'package:flutter/material.dart';
import 'package:food/feathers/auth/forget_password/view_model/forgot_password_view_model.dart';
import 'package:food/feathers/auth/login/_ui/pasword_view_model.dart/passwordWidget_view_model.dart';
import 'package:food/feathers/auth/login/view_model/login_view_model.dart';
import 'package:food/feathers/auth/sipnUp/view_model/sign_up_view_mode.dart';
import 'package:food/feathers/home/_ui/sub_pages/all_catagories/viev_model/all_catagories_view_model.dart';
import 'package:food/feathers/home/_ui/sub_pages/open_restaurants/view_model/open_restaurants_view_model.dart';
import 'package:food/feathers/home/view/home_view.dart';
import 'package:food/feathers/home/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

import 'product/router/router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
        ChangeNotifierProvider(create: (_) => ForgotPasswordViewModel()),
        ChangeNotifierProvider(create: (_) => SignUpViewModel()),
        ChangeNotifierProvider(create: (_) => PasswordTextFieldWidgetViewModel()),
        ChangeNotifierProvider(create: (_) => HomeViewModel()),
        ChangeNotifierProvider(create: (_) => AllCategoriesViewModel()),
        ChangeNotifierProvider(create: (_) => OpenRestaurantsViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: generateRoute,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            inputDecorationTheme: const InputDecorationTheme(filled: true)),
        home: HomeView());
  }
}
