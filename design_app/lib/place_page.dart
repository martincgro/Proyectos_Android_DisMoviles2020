import 'package:flutter/material.dart';

class PlacePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    Widget title = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Canales de Xochimilco Radioactivos",
                     style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  child: Text(
                    "Xochimilco, CDMX, México.",
                    style: TextStyle(
                        color: Colors.grey[500],
                      fontSize: 12
                    ),
                  ),
                )
              ],
            )
          ),
          Icon(Icons.star, color:Colors.red),
          Text("41")
        ],
      )
    );
    Widget buttons  = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _buildButtonsColumn(Colors.blue, Icons.call, "CALL"),
        _buildButtonsColumn(Colors.blue, Icons.near_me, "ROUTE"),
        _buildButtonsColumn(Colors.blue, Icons.share, "SHARE")
      ],
    );
    Widget description = Container(
      padding: EdgeInsets.all(32),
      child:Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
            ', sed do eiusmod tempor incididunt ut labore et dolore '
            'magna aliqua. Ut enim ad minim veniam, quis nostrud '
            'exercitation ullamco laboris nisi ut aliquip ex ea commodo'
            'consequat. Duis aute irure dolor in reprehenderit in '
            'voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
            'Excepteur sint occaecat cupidatat non proident, '
            'sunt in culpa qui officia deserunt mollit anim id est laborum.'
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
            ', sed do eiusmod tempor incididunt ut labore et dolore '
            'magna aliqua. Ut enim ad minim veniam, quis nostrud '
            'exercitation ullamco laboris nisi ut aliquip ex ea commodo'
            'consequat. Duis aute irure dolor in reprehenderit in '
            'voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
            'Excepteur sint occaecat cupidatat non proident, '
            'sunt in culpa qui officia deserunt mollit anim id est laborum.'
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
            ', sed do eiusmod tempor incididunt ut labore et dolore '
            'magna aliqua. Ut enim ad minim veniam, quis nostrud '
            'exercitation ullamco laboris nisi ut aliquip ex ea commodo'
            'consequat. Duis aute irure dolor in reprehenderit in '
            'voluptate velit esse cillum dolore eu fugiat nulla pariatur.'
            'Excepteur sint occaecat cupidatat non proident, '
            'sunt in culpa qui officia deserunt mollit anim id est laborum.',
        softWrap: true,
      )
    );
    Widget bodyPortrait =  ListView(
      children: <Widget>[
        Image.asset(
            'assets/images/imgprueba.jpg',
            height: 240,
            width: MediaQuery.of(context).size.width,
            fit:BoxFit.cover),
        title,
        buttons,
        description
      ],
    );
    Widget bodyLandscape = Row(
      children: <Widget>[
        Image.asset(
            'assets/images/imgprueba.jpg',
            height: MediaQuery.of(context).size.height,
            width: 280,
            fit:BoxFit.cover
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              title,
              buttons,
              description
            ],
          ),
        )
      ],
    );


    return Scaffold(
      appBar: AppBar(title:Text("Informacion Page")),
      body: OrientationBuilder(
        builder: (context, orientation){
          return orientation == Orientation.portrait ? bodyPortrait : bodyLandscape;
        },
      )
    );
  }

  Widget _buildButtonsColumn(Color color, IconData icon, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color:color),
        Container(
          margin: EdgeInsets.only(top:8),
          child: Text(label, style: TextStyle(color: color),),
        )
      ],
    );
  }

}