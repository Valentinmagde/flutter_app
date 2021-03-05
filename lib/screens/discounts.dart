import 'package:flutter/material.dart';

//widgets
import 'package:material_kit_flutter/widgets/navbar.dart';
import 'package:material_kit_flutter/widgets/drawer.dart';

class DiscountsPage extends StatefulWidget
{
  @override
  _DiscountsPageState createState() => _DiscountsPageState();
}

class _DiscountsPageState extends State<DiscountsPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      appBar: Navbar(
        title: "Reductions",
        searchBar: true,
        categoryOne: "Categories",
        categoryTwo: "Best Deals",
        bgColor: Colors.transparent,
      ),
      backgroundColor: Color.fromRGBO(38, 44, 73, 1.0),
      drawer: MaterialDrawer(currentPage: "Reductions"),
      body: CustomScrollView
        (
        slivers: <Widget>
        [
          SliverList
            (
            delegate: SliverChildListDelegate
              (
                <Widget>
                [
                  Divider(),
                  /// Review
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Material
                      (
                      elevation: 12.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only
                        (
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),

                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row
                          (
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          /*crossAxisAlignment: CrossAxisAlignment.end,*/
                          children: <Widget>
                          [
                            Expanded(
                              child: Column(
                                  children: [
                                    ListTile
                                      (
                                      leading: CircleAvatar
                                        (
                                        backgroundColor: Colors.purple,
                                        child: Text('LM'),
                                      ),
                                      title: Text('Louis Guiamatsia', style: TextStyle()),
                                      subtitle: Text(
                                          '''
                                          lm@intekor.ca
                                          +18472712357
                                          ''',
                                          style: TextStyle(
                                            height: 0.7,
                                            /*fontSize: 12.0,*/
                                          )
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            Padding
                              (
                              padding: EdgeInsets.only(top: 0.0, right: 10.0),
                              child: FlatButton.icon
                                (
                                  onPressed: () {},
                                  icon: Icon(Icons.fiber_manual_record, color: Colors.green),
                                  label: Text(
                                      'Admin',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  /*Divider(),*/
                  /// Review
                  Padding
                    (
                      padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                      child: Material
                        (
                        elevation: 12.0,
                        color: Colors.white,
                        borderRadius: BorderRadius.only
                          (
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Row
                            (
                            /*mainAxisSize: MainAxisSize.min,*/
                            /*mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,*/
                            children: <Widget>
                            [
                              Expanded(
                                child: Column(
                                    children: [
                                      ListTile
                                        (
                                        leading: CircleAvatar
                                          (
                                          backgroundColor: Colors.purple,
                                          child: Text('DN'),
                                        ),
                                        title: Text('Darel Ngogang', style: TextStyle()),
                                        subtitle: Text(
                                            '''
                                            darel.n@intekor.ca
                                            +237696321632
                                            ''',
                                            style: TextStyle(
                                              height: 0.7,
                                              /*fontSize: 12.0,*/
                                            )
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                              Padding
                                (
                                padding: EdgeInsets.only(top: 0.0, right: 10.0),
                                child: FlatButton.icon
                                  (
                                    onPressed: () {},
                                    icon: Icon(Icons.fiber_manual_record, color: Colors.green),
                                    label: Text(
                                        'Admin',
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16.0
                                        )
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                  ),
                  /* Divider(),*/
                  /// Review
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Material
                      (
                      elevation: 12.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only
                        (
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row
                          (
                          /*mainAxisSize: MainAxisSize.min,*/
                          /*mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,*/
                          children: <Widget>
                          [
                            Expanded(
                              child: Column(
                                  children: [
                                    ListTile
                                      (
                                      leading: CircleAvatar
                                        (
                                        backgroundColor: Colors.purple,
                                        child: Text('GF'),
                                      ),
                                      title: Text('Ghislain Fanchey', style: TextStyle()),
                                      subtitle: Text(
                                          '''
                                            gf@intekor.ca
                                            +15142582001
                                            ''',
                                          style: TextStyle(
                                            height: 0.7,
                                            /*fontSize: 12.0,*/
                                          )
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            Padding
                              (
                              padding: EdgeInsets.only(top: 0.0, right: 10.0),
                              child: FlatButton.icon
                                (
                                  onPressed: () {},
                                  icon: Icon(Icons.fiber_manual_record, color: Colors.green),
                                  label: Text(
                                      'Admin',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  /*Divider(),*/
                  /// Review
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Material
                      (
                      elevation: 12.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only
                        (
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row
                          (
                          /*mainAxisSize: MainAxisSize.min,*/
                          /*mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,*/
                          children: <Widget>
                          [
                            Expanded(
                              child: Column(
                                  children: [
                                    ListTile
                                      (
                                      leading: CircleAvatar
                                        (
                                        backgroundColor: Colors.purple,
                                        child: Text('KN'),
                                      ),
                                      title: Text('Keline Ngambou', style: TextStyle()),
                                      subtitle: Text(
                                          '''
                                          keline.n@intekor.ca
                                          +237655039804
                                          ''',
                                          style: TextStyle(
                                            height: 0.7,
                                            /*fontSize: 12.0,*/
                                          )
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            Padding
                              (
                              padding: EdgeInsets.only(top: 0.0, right: 10.0),
                              child: FlatButton.icon
                                (
                                  onPressed: () {},
                                  icon: Icon(Icons.fiber_manual_record, color: Colors.green),
                                  label: Text(
                                      'Admin',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  /* Divider(),*/
                  /// Review
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Material
                      (
                      elevation: 12.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only
                        (
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row
                          (
                          /*mainAxisSize: MainAxisSize.min,*/
                          /*mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,*/
                          children: <Widget>
                          [
                            Expanded(
                              child: Column(
                                  children: [
                                    ListTile
                                      (
                                      leading: CircleAvatar
                                        (
                                        backgroundColor: Colors.purple,
                                        child: Text('VM'),
                                      ),
                                      title: Text('Valentin Magde', style: TextStyle()),
                                      subtitle: Text(
                                          '''
                                            valentinmagde@gmail.com
                                            +237698782873
                                            ''',
                                          style: TextStyle(
                                            height: 0.7,
                                            /*fontSize: 12.0,*/
                                          )
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            Padding
                              (
                              padding: EdgeInsets.only(top: 0.0, right: 10.0),
                              child: FlatButton.icon
                                (
                                  onPressed: () {},
                                  icon: Icon(Icons.fiber_manual_record, color: Colors.green),
                                  label: Text(
                                      'Admin',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  /*Divider(),*/
                  /// Review
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Material
                      (
                      elevation: 12.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only
                        (
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row
                          (
                          /*mainAxisSize: MainAxisSize.min,*/
                          /*mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,*/
                          children: <Widget>
                          [
                            Expanded(
                              child: Column(
                                  children: [
                                    ListTile
                                      (
                                      leading: CircleAvatar
                                        (
                                        backgroundColor: Colors.purple,
                                        child: Text('MB'),
                                      ),
                                      title: Text('Manuel Mbakop', style: TextStyle()),
                                      subtitle: Text(
                                          '''
                                            manuel.b@intekor.ca
                                            +23772712357
                                            ''',
                                          style: TextStyle(
                                            height: 0.7,
                                            /*fontSize: 12.0,*/
                                          )
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            Padding
                              (
                              padding: EdgeInsets.only(top: 0.0, right: 10.0),
                              child: FlatButton.icon
                                (
                                  onPressed: () {},
                                  icon: Icon(Icons.fiber_manual_record, color: Colors.green),
                                  label: Text(
                                      'Admin',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  /* Divider(),*/
                  /// Review
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Material
                      (
                      elevation: 12.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only
                        (
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Row
                          (
                          /*mainAxisSize: MainAxisSize.min,*/
                          /*mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,*/
                          children: <Widget>
                          [
                            Expanded(
                              child: Column(
                                  children: [
                                    ListTile
                                      (
                                      leading: CircleAvatar
                                        (
                                        backgroundColor: Colors.purple,
                                        child: Text('EM'),
                                      ),
                                      title: Text('Emmanuel Cesaire', style: TextStyle()),
                                      subtitle: Text(
                                          '''
                                            cesaire.d@intekor.ca
                                            +23772712357
                                            ''',
                                          style: TextStyle(
                                            height: 0.7,
                                            /*fontSize: 12.0,*/
                                          )
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                            Padding
                              (
                              padding: EdgeInsets.only(top: 0.0, right: 10.0),
                              child: FlatButton.icon
                                (
                                  onPressed: () {},
                                  icon: Icon(Icons.fiber_manual_record, color: Colors.green),
                                  label: Text(
                                      'Admin',
                                      style: TextStyle(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16.0
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}