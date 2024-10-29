import 'package:flutter/material.dart';
import 'package:got_api_app/features/main_screen/view_model/api_provider.dart';
import 'package:provider/provider.dart';

import 'core/routes/router.dart';
import 'core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => ApiProvider())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: AppRoutes.mainScreen,
        onGenerateRoute: onGenerate,
      ),
    );
  }
}


