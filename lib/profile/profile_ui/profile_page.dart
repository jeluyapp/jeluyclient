import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../profile_bloc.dart';
import 'profile_view.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocProvider(
        create: (_) => ProfilePageBloc(),
        child: ProfileView(),
      ),
    );
  }
}
