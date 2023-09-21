import 'package:flutter/material.dart';
import 'feathers/auth/forget_password/view_model/forgot_password_view_model.dart';
import 'feathers/auth/login/_ui/pasword_view_model.dart/passwordWidget_view_model.dart';
import 'feathers/auth/login/view_model/login_view_model.dart';
import 'feathers/auth/sipnUp/view_model/sign_up_view_mode.dart';
import 'feathers/home/widget/sub_pages/all_catagories/viev_model/all_catagories_view_model.dart';
import 'feathers/home/view_model/home_view_model.dart';
import 'feathers/home/view/home_view.dart';
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
        ChangeNotifierProvider(create: (_) => AllCategoriesViewModel())
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
         // useMaterial3: true,
            primarySwatch: Colors.blue,
            inputDecorationTheme: const InputDecorationTheme(filled: true)),
        home: HomeView());
  }
}
