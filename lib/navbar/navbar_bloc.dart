import 'navbar_data.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';

class HomePageBloc extends HydratedBloc<NavbarEvent, NavbarStore> {
  @override
  void onChange(Change<NavbarStore> change) {
    super.onChange(change);
  }

  HomePageBloc() : super(NavbarStore(substate: NavbarStates.home)) {
    on<NavbarHomePressed>(
        (event, emit) => emit(NavbarStore(substate: NavbarStates.home)));
    on<NavbarSearchPressed>(
        (event, emit) => emit(NavbarStore(substate: NavbarStates.search)));
    on<NavbarChatsPressed>(
        (event, emit) => emit(NavbarStore(substate: NavbarStates.chats)));
    on<NavbarProfilePressed>(
        (event, emit) => emit(NavbarStore(substate: NavbarStates.profile)));
  }

  String stateToString(NavbarStates state) {
    if (state == NavbarStates.home) {
      return "home";
    } else if (state == NavbarStates.search) {
      return "search";
    } else if (state == NavbarStates.chats) {
      return "chats";
    } else if (state == NavbarStates.profile) {
      return "profile";
    } else {
      throw Exception("Navbar State not Retrieved Successfully.");
    }
  }

  NavbarStates stringToState(String state) {
    if (state == "home") {
      return NavbarStates.home;
    } else if (state == "search") {
      return NavbarStates.search;
    } else if (state == "chats") {
      return NavbarStates.chats;
    } else if (state == "profile") {
      return NavbarStates.profile;
    } else {
      throw Exception("Navbar State not Retrieved Successfully.");
    }
  }

  @override
  NavbarStore fromJson(Map<String, dynamic> json) =>
      NavbarStore(substate: stringToState(json['state']));

  @override
  Map<String, String> toJson(NavbarStore state) => {
        "state": stateToString(state.substate)
      };
}
