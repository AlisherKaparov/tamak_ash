import 'package:flutter/material.dart';
import 'package:tamak_ash/tamactar_esebi.dart';

class TamaktarPage extends StatelessWidget {
  const TamaktarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('Tamaktar mint', '\$ 3.99', 'assets', false, false,
                    context),
                _buildCard(
                    'Tamak cream', '\5.99', 'assets', false, false, context),
                _buildCard(
                    'Tamak classik', '\1.99', 'assets', false, true, context),
                _buildCard(
                    'Tamak choco', '\2.99', 'assets', false, false, context),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String pric, String imgPath, bool added,
      bool isFavorite, context) {
    var children = <Widget>[
      isFavorite
          ? const Icon(Icons.favorite, color: Color(0xFFEF7532))
          : Icon(
              Icons.favorite_border,
              color: Color(0xFFEF7532),
            ),
    ];
    return Padding(
      padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TamactarEsebi(
                        assetPath: imgPath,
                        tamaktarturu: pric,
                        tamactaresebi: name,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.teal.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(
                  5.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: children,
                ),
              ),
              Hero(
                  tag: imgPath,
                  child: Container(
                    height: 75.0,
                    width: 75.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.contain)),
                  )),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                pric,
                style: const TextStyle(
                    color: Color(0xFFCC8053),
                    fontFamily: 'Salat',
                    fontSize: 14.0),
              ),
              Text(
                pric,
                style: const TextStyle(
                    color: Color(0xFF575E67),
                    fontFamily: 'Salat',
                    fontSize: 14.0),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  color: Color(0xFFEBEBEB),
                  height: 1.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      const Icon(
                        Icons.shopping_basket,
                        color: Color(0xFF17E50),
                        size: 12.0,
                      ),
                      const Text(
                        'Tolom karta menen',
                        style: TextStyle(
                          fontFamily: 'Salat',
                          color: Color(0xFFD17E50),
                          fontSize: 12.0,
                        ),
                      )
                    ]
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
