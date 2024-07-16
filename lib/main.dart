import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TamakAshPage(),
    );
  }
}

class TamakAshPage extends StatefulWidget {
  const TamakAshPage({Key? key}) : super(key: key);

  @override
  _TamakAshPageState createState() => _TamakAshPageState();
}

class _TamakAshPageState extends State<TamakAshPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.1,
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
          title: const Text(
            'Daamdu',
            style: TextStyle(
                fontFamily: 'Salattar',
                fontSize: 20.0,
                color: Color(0xFF545D68)),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Color(0xFF545D68),
              ),
              onPressed: () {},
            )
          ]),

      body: SizedBox(
        height: double.infinity,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: 200,
              color: Colors.red,
            ),
            Container(
              width: 200,
              color: Colors.green,
            ),
            Container(
              width: 200,
              color: Colors.yellow,
            ),
            Container(
              width: 200,
              color: Colors.blue,
            ),
            Container(
              width: 200,
              color: Colors.orange,
            ),
          ],
        ),
      ),

      // ListView(
      //   padding: const EdgeInsets.only(left: 20.0),
      //   children: <Widget>[
      //     const SizedBox(
      //       height: 15.0,
      //     ),
      //     const Text(
      //       'Turloru',
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontFamily: 'Shirindikter',
      //         fontSize: 42.0,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 15.0,
      //     ),
      //     TabBar(
      //       ////  controller: _tabController,
      //       indicatorColor: Colors.transparent,
      //       labelColor: Color(0xFFC88D67),
      //       isScrollable: true,
      //       labelPadding: EdgeInsets.only(right: 45.0),
      //       unselectedLabelColor: Color(0xFFCDCDCD),
      //       tabs: const [
      //         Tab(
      //           child: Text(
      //             'Ash',
      //             style: TextStyle(
      //               fontFamily: 'Lagman',
      //               fontSize: 21.0,
      //             ),
      //           ),
      //         ),
      //         Tab(
      //           child: Text(
      //             'Lagman',
      //             style: TextStyle(
      //               fontFamily: 'Lagman',
      //               fontSize: 21.0,
      //             ),
      //           ),
      //         ),
      //         Tab(
      //           child: Text(
      //             'Manty',
      //             style: TextStyle(
      //               fontFamily: 'Lagman',
      //               fontSize: 21.0,
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //     Container(
      //       height: MediaQuery.of(context).size.height - 15,
      //       width: double.infinity,
      //       child: TabBarView(
      //         //  controller: _tabController,
      //         children: const [
      //           TamakAshPage(),
      //           TamakAshPage(),
      //           TamakAshPage(),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(),
    );
  }
}
