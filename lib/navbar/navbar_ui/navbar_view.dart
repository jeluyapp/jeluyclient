import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../navbar_bloc.dart';
import '../navbar_data.dart';

class NavbarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(102, 213, 27, 1),
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: BlocBuilder<HomePageBloc, NavbarStore>(
          builder: (context, state) {
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavbarElement(
                      "Home", const Icon(Icons.home, color: Colors.white), () {
                    context.read<HomePageBloc>().add(NavbarHomePressed());
                  }, state.home, Colors.white),
                  NavbarElement(
                      "Search", const Icon(Icons.search, color: Colors.white),
                      () {
                    context.read<HomePageBloc>().add(NavbarSearchPressed());
                  }, state.search, Colors.white),
                  NavbarElement(
                      "Chats", const Icon(Icons.message, color: Colors.white),
                      () {
                    context.read<HomePageBloc>().add(NavbarChatsPressed());
                  }, state.chats, Colors.white),
                  NavbarElement(
                      "Profile", const Icon(Icons.person, color: Colors.white),
                      () {
                    context.read<HomePageBloc>().add(NavbarProfilePressed());
                  }, state.profile, Colors.white)
                ].map((item) => Expanded(child: item)).toList());
          },
        ));
  }
}

class NavbarElement extends StatefulWidget {
  final String tag;
  final Icon icon;
  final Color color;
  final bool opened;
  final Function() press;

  const NavbarElement(this.tag, this.icon, this.press, this.opened, this.color,
      {Key? key})
      : super(key: key);

  @override
  _NavbarElementState createState() => _NavbarElementState();
}

class _NavbarElementState extends State<NavbarElement> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          widget.press();
        },
        child: SizedBox(
            height: 75,
            child: Stack(children: [
              AnimatedPositioned(
                  right: 0,
                  left: 0,
                  top: widget.opened ? -50 : 0,
                  bottom: 0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: AnimatedOpacity(
                      curve: Curves.easeInOut,
                      opacity: widget.opened ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: 300),
                      child: widget.icon)),
              AnimatedPositioned(
                  right: 0,
                  left: 0,
                  bottom: widget.opened ? 0 : -50,
                  top: 0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: AnimatedOpacity(
                      curve: Curves.easeInOut,
                      opacity: widget.opened ? 1.0 : 0.0,
                      duration: const Duration(milliseconds: 300),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(widget.tag,
                                style: TextStyle(
                                    color: widget.color,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold)),
                            Container(
                                margin: const EdgeInsets.all(5.0),
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: widget.color,
                                    borderRadius: BorderRadius.circular(2.5)))
                          ])))
            ])));
  }
}
