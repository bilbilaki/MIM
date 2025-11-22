import 'package:du/providers/local_explorer_provider.dart';
import 'package:du/screens/local_explorer.dart';
import 'package:du/services/service_locator.dart';
import 'package:du/services/useDataService.dart';
import 'package:flutter/material.dart';
import 'package:media_kit/media_kit.dart';
import 'package:provider/provider.dart';

import 'utils/colors.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MediaKit.ensureInitialized();


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocalProvider()
        ),
                ChangeNotifierProvider(
          create: (context) => UserDataService(),
        ), // Add UserDataService
            ...ServiceLocator.getSingleProviders(),
    ...ServiceLocator.getProviders(),



          ],
      child:  MyApp(), // Use const if MyApp is stateless
    ),
  ); 

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
           theme: AppThemes.netflixDarkTheme,

    
      home: const LocalScreen(),
    );
  }
}

