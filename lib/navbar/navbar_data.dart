abstract class NavbarEvent {}

class NavbarHomePressed extends NavbarEvent {}

class NavbarSearchPressed extends NavbarEvent {}

class NavbarChatsPressed extends NavbarEvent {}

class NavbarProfilePressed extends NavbarEvent {}

class NavbarStore {
  bool home = false;
  bool search = false;
  bool chats = false;
  bool profile = false;

  NavbarStore(bool homeActive, bool searchActive, bool chatsActive,
      bool profileActive) {
    home = homeActive;
    search = searchActive;
    chats = chatsActive;
    profile = profileActive;
  }
}
