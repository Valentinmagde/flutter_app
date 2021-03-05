import 'package:flutter/material.dart';

// screens
import 'package:material_kit_flutter/screens/main_page.dart';
import 'package:material_kit_flutter/screens/profile.dart';
import 'package:material_kit_flutter/screens/settings.dart';
import 'package:material_kit_flutter/screens/components.dart';
import 'package:material_kit_flutter/screens/onboarding.dart';
import 'package:material_kit_flutter/screens/pro.dart';
import 'package:material_kit_flutter/screens/users.dart';
import 'package:material_kit_flutter/screens/billing.dart';
import 'package:material_kit_flutter/screens/associations.dart';
import 'package:material_kit_flutter/screens/discounts.dart';

void main() => runApp(MaterialKitPROFlutter());

class MaterialKitPROFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Material Kit PRO Flutter",
        debugShowCheckedModeBanner: false,
        initialRoute: "/home",
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/pro": (BuildContext context) => new Pro(),
          "/home": (BuildContext context) => new MainPage(),
          "/components": (BuildContext context) => new Components(),
          "/profile": (BuildContext context) => new Profile(),
          "/settings": (BuildContext context) => new Settings(),
          "/users": (BuildContext context) => new UsersPage(),
          "/billing": (BuildContext context) => new BillingPage(),
          "/discounts": (BuildContext context) => new DiscountsPage(),
          "/associations": (BuildContext context) => new AssociationsPage(),
        }
        );
  }
}
