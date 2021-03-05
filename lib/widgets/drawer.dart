import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

import 'package:material_kit_flutter/constants/Theme.dart';

import 'package:material_kit_flutter/widgets/drawer-tile.dart';
import 'package:material_kit_flutter/components/custom_expansion_tile.dart' as custom;

class MaterialDrawer extends StatelessWidget {
  final String currentPage;

  MaterialDrawer({this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          decoration: new BoxDecoration(
              color: Color.fromRGBO(16, 22, 58, 1.0),
          ),
          child: Column(
              children: [
                Container(
                  height: 120.0,
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0),
                  child: DrawerHeader(
                    child: Container(
                      child: Row(
                        /*mainAxisAlignment: MainAxisAlignment.start, //change here don't //worked
                        crossAxisAlignment: CrossAxisAlignment.center,*/
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                                "assets/img/logo.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Tontine.Plus',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color.fromRGBO(113, 102, 239, 1.0),
                              ),
                            ),
                          ),
                          new Spacer(),
                          IconButton(
                              icon: Icon(Icons.close,
                                  color: Color.fromRGBO(113, 102, 239, 1.0),
                                  size: 22.0),
                              onPressed: () => Navigator.of(context).pop(null)
                          ),
                        ],
                      ),
                    )),
                ),
                Expanded(
                    child: ListView(
                    padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                    children: <Widget>[
                      /*custom.ExpansionTile(
                        headerBackgroundColor: Colors.transparent,
                        iconColor: Colors.white,
                        title: Text("Expansion Title", style: TextStyle(color: Colors.white)),
                        children: <Widget>[
                          Text("children 1"),
                          Text("children 2")
                        ],
                      ),*/
                      DrawerTile(
                          icon: Icons.home,
                          onTap: () {
                            if (currentPage != "Accueil")
                              Navigator.pushReplacementNamed(context, '/home');
                          },
                          iconColor: Colors.black,
                          title: "Tableau de bord",
                          isSelected: currentPage == "Accueil" ? true : false
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'ADMINISTRATION',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),

                      DrawerTile(
                          icon: Icons.perm_identity,
                          onTap: () {
                            if (currentPage != "Utilisateurs")
                              Navigator.pushReplacementNamed(context, '/users');
                          },
                          iconColor: Colors.black,
                          title: "Utilisateurs",
                          isSelected: currentPage == "Utilisateurs" ? true : false
                      ),
                      DrawerTile(
                          icon: Icons.description,
                          onTap: () {
                            if (currentPage != "Factures")
                              Navigator.pushReplacementNamed(context, '/billing');
                          },
                          iconColor: Colors.black,
                          title: "Factures",
                          isSelected: currentPage == "Factures" ? true : false
                      ),
                      DrawerTile(
                          icon: Icons.local_offer_sharp,
                          onTap: () {
                            if (currentPage != "Réductions")
                              Navigator.pushReplacementNamed(context, '/discounts');
                          },
                          iconColor: Colors.black,
                          title: "Réductions",
                          isSelected: currentPage == "Réductions" ? true : false
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'GESTION',
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      DrawerTile(
                          icon: Icons.group,
                          onTap: () {
                            if (currentPage != "Associations")
                              Navigator.pushReplacementNamed(context, '/associations');
                          },
                          iconColor: Colors.black,
                          title: "Associations",
                          isSelected: currentPage == "Associations" ? true : false
                      ),
                    ],
                ))
              ]
          )
      ),
    );
  }
}
