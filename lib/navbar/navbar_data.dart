abstract class NavbarEvent {}

class NavbarHomePressed extends NavbarEvent {}

class NavbarSearchPressed extends NavbarEvent {}

class NavbarChatsPressed extends NavbarEvent {}

class NavbarProfilePressed extends NavbarEvent {}

enum NavbarStates {
  home,
  search,
  chats,
  profile
}

class NavbarStore {
  NavbarStates substate;

  NavbarStore({required this.substate});
}
