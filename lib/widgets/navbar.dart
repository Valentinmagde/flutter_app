import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:material_kit_flutter/constants/Theme.dart';

// import 'package:material_kit_flutter/screens/categories.dart';
// import 'package:material_kit_flutter/screens/best-deals.dart';
// import 'package:material_kit_flutter/screens/search.dart';
// import 'package:material_kit_flutter/screens/cart.dart';
// import 'package:material_kit_flutter/screens/chat.dart';

class Navbar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String categoryOne;
  final String categoryTwo;
  final bool searchBar;
  final bool backButton;
  final bool transparent;
  final bool rightOptions;
  final List<String> tags;
  final Function getCurrentPage;
  final bool isOnSearch;
  final TextEditingController searchController;
  final Function searchOnChanged;
  final bool searchAutofocus;
  final bool noShadow;
  final Color bgColor;

  Navbar(
      {this.title = "Home",
      this.categoryOne = "",
      this.categoryTwo = "",
      this.tags,
      this.transparent = false,
      this.rightOptions = true,
      this.getCurrentPage,
      this.searchController,
      this.isOnSearch = false,
      this.searchOnChanged,
      this.searchAutofocus = false,
      this.backButton = false,
      this.noShadow = false,
      this.bgColor = Colors.white,
      this.searchBar = false});

  final double _prefferedHeight = 180.0;

  @override
  _NavbarState createState() => _NavbarState();

  @override
  Size get preferredSize => Size.fromHeight(_prefferedHeight);
}

class _NavbarState extends State<Navbar> {
  String activeTag;

  ItemScrollController _scrollController = ItemScrollController();

  void initState() {
    if (widget.tags != null && widget.tags.length != 0) {
      activeTag = widget.tags[0];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bool categories =
        widget.categoryOne.isNotEmpty && widget.categoryTwo.isNotEmpty;
    final bool tagsExist =
        widget.tags == null ? false : (widget.tags.length == 0 ? false : true);

    return Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(16, 22, 58, 1.0),
        ),
        child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Row(
                  children: [
                      IconButton(
                          icon: Icon(
                              !widget.backButton
                                  ? Icons.menu
                                  : Icons.arrow_back_ios,
                              color: !widget.transparent
                                  ? (widget.bgColor == Colors.white
                                      ? Colors.black
                                      : Colors.white)
                                  : Colors.white,
                              size: 24.0),
                          onPressed: () {
                            if (!widget.backButton)
                              Scaffold.of(context).openDrawer();
                            else
                              Navigator.pop(context);
                          }),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(widget.title,
                              style: TextStyle(
                                  color: !widget.transparent
                                      ? (widget.bgColor == Colors.white
                                          ? Colors.black
                                          : Colors.white)
                                      : Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0)),
                        ),
                      ],
                    ),
                  if (widget.rightOptions)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Text('Valentin Magde', style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white
                            ),
                            ),
                        ),
                        CircleAvatar(
                            radius: 17.0,
                            backgroundImage: AssetImage(
                                "assets/img/profil.JPG"),
                          ),
                        ],
                      )
                  ],
                ),
          ),
        ));
  }
}
