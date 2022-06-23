import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
// import 'package:bloc_test/bloc_test.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:replay_bloc/replay_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_chat_ui/flutter_chat_ui.dart';

// import 'package:cardano_wallet_sdk/cardano_wallet_sdk.dart';

import 'navbar/navbar_ui/navbar_page.dart';

void main() async {
  HydratedBlocOverrides.runZoned(() => runApp(const App()),
      createStorage: () async {
    WidgetsFlutterBinding.ensureInitialized();
    return HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorage.webStorageDirectory
            : await getTemporaryDirectory());
  });
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Jeluy: Fucking Platinum',
        theme: ThemeData(
            primarySwatch: Colors.purple,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text("Jeluy"),
        ),
        // body: ,
        bottomNavigationBar: NavbarPage());
  }
}
