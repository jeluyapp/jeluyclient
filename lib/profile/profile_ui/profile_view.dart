import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../profile_bloc.dart';
import '../profile_data.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(102, 213, 27, 1),
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: BlocBuilder<ProfilePageBloc, ProfileStore>(
          builder: (context, state) {
            if (state.substate == null) {
              return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const []);
            } else {
              return Row();
            }
          },
        ));
  }
}