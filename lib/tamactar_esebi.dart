import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tamak_ash/tamaktar_page.dart';

class TamactarEsebi extends StatelessWidget {
  final assetPath, tamaktarturu, tamactaresebi;

  TamactarEsebi({this.assetPath, this.tamaktarturu, this.tamactaresebi});

  @override
  Widget build(BuildContext context) {
    const padding = Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            Text(
              'Tamaktar',
              style: TextStyle(
                fontFamily: 'Salattar',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF17532),
              ),
            ),
            SizedBox(height: 15.0),
            // Hero(
            //   tag: assetPath,
            //   child: Image.asset(assetPath,
            //   height: 150.0,
            //   width: 100.0,
            //   fit: BoxFit.contain,),
            // ),
            SizedBox(
              height: 20.0,
            ),
            // Center(
            //   child:Container(
            //     width: MediaQuery.of(context).size.Width - 50.0,
            //     height: 50.0,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(25.0),
            //       color: Color(0xFFF17532),
            //     ),
            //     child: Center(
            //       child: Text('Karta menen tolom ',
            //       styte:TextStyle(
            //         fontFamily:'Daamdu',
            //         fontSize: 14.0,
            //         fontWeight: FontWeight.bold,
            //         color:Color.white,)

            //       )
            //     )
            //   ),),
          ],
        ));
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
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Daamdu',
          style: TextStyle(
              fontFamily: 'Salattar', fontSize: 20.0, color: Color(0xFF545D68)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          )
        ],
      ),
      // A much better approach would be to keep ther
      // base desing in main.dart and load eachpage in.
      body: ListView(
        children: const [SizedBox(height: 15.0), padding],
      ),

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
