import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:infynitybox/view/loginpage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:infynitybox/view/homepage.dart';
import 'package:infynitybox/view/Batch Creation.dart';
import 'package:infynitybox/view/ordercreation.dart';
import 'package:infynitybox/view/collectionagent.dart';
import 'package:infynitybox/view/receivedcontainer.dart';
import 'package:infynitybox/viewmodel/database.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => DataNotifier(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            title: 'Flutter Demo',
            theme: Theme.of(context).copyWith(
              colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: const Color(0xFF4EFF10),
            ),
),
      initialRoute: "/",
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/batch_creation': (context) => const BatchCretion(),
        '/order_creation': (context) => const OrderCreation(),
        '/agent': (context) => CollectionAgent(),
        '/received_container': (context) => const ReceivedContainer(),
      },
    ),
    );
  }
}

