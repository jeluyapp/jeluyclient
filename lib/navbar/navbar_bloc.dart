import 'navbar_data.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';

class HomePageBloc extends HydratedBloc<NavbarEvent, NavbarStore> {
  @override
  void onChange(Change<NavbarStore> change) {
    super.onChange(change);
  }

  HomePageBloc() : super(NavbarStore(true, false, false, false)) {
    on<NavbarHomePressed>(
        (event, emit) => emit(NavbarStore(true, false, false, false)));
    on<NavbarSearchPressed>(
        (event, emit) => emit(NavbarStore(false, true, false, false)));
    on<NavbarChatsPressed>(
        (event, emit) => emit(NavbarStore(false, false, true, false)));
    on<NavbarProfilePressed>(
        (event, emit) => emit(NavbarStore(false, false, false, true)));
  }

  @override
  NavbarStore fromJson(Map<String, dynamic> json) =>
      NavbarStore(json['home'], json['search'], json['chats'], json['profile']);

  @override
  Map<String, bool> toJson(NavbarStore state) => {
        "home": state.home,
        "search": state.search,
        "chats": state.chats,
        "profile": state.profile
      };
}
