import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Ninja(),
  ));
}

class Ninja extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
                "Ninja Card",
              style:TextStyle(color: Colors.grey)
            )),
        backgroundColor: Colors.black,
        shadowColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.fromLTRB(0,20,10.0,50),
            child: Center(

              child: CircleAvatar(

                backgroundImage: NetworkImage("https://psuvanguard.com/wp-content/uploads/2020/07/Aang.png"),
                maxRadius: 60,
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,4,10.0,10),
            child: Text(
              "Name",
              style: TextStyle(color:Colors.grey, fontSize: 20),
            ),
          ),
          Text(
              "Chun-Li",
              style: TextStyle(color: Colors.amber, fontSize: 35)
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,40,10.0,10),
            child: Text(
              "Ninja Level",
              style: TextStyle(color:Colors.grey, fontSize: 20),
            ),
          ),
          Text(
              "8",
              style: TextStyle(color: Colors.amber, fontSize: 35)
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,40,10.0,10),
            child: Row(
              children: <Widget> [
                IconButton(
                  onPressed: (){
                    print('you flicked me!!!!!!!');
                  },
                  icon: Icon(Icons.mail),
                  color: Colors.grey,
                  iconSize: 30,
                )
                ,
                Text(
                    "chun-li@gmail.com",
                    style: TextStyle(color: Colors.grey, fontSize: 30)
                ),
              ],

            ),
          ),

        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

