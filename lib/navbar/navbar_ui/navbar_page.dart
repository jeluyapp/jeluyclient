import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../navbar_bloc.dart';
import 'navbar_view.dart';

class NavbarPage extends StatelessWidget {
  const NavbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocProvider(
        create: (_) => HomePageBloc(),
        child: NavbarView(),
      ),
    );
  }
}
