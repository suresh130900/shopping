
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  int index = 0;

  var data = [
    {
      "title": "Nike Air force",
      "subtitle": "Rs: 3000",
      "img": "https://www.soccerbible.com/media/88763/nike-air-max-720-2.jpg",
    },
    {
      "title": "Nike Air force",
      "subtitle": "Rs: 3000",
      "img": "https://www.shutterstock.com/image-photo/bangkok-thailand-march-26-2018-260nw-1079458139.jpg",
    },
    {
      "title": "Nike Air force",
      "subtitle": "Rs: 3000",
      "img": "https://www.shutterstock.com/image-photo/bangkok-thailand-march-26-2018-260nw-1079458139.jpg",
    },
    {
      "title": "Nike Air force",
      "subtitle": "Rs: 3000",
      "img": "https://www.shutterstock.com/image-photo/bangkok-thailand-march-26-2018-260nw-1079458139.jpg",
    },
    {
      "title": "Nike Air force",
      "subtitle": "Rs: 3000",
      "img": "https://www.shutterstock.com/image-photo/bangkok-thailand-march-26-2018-260nw-1079458139.jpg",
    },
    {
      "title": "Nike Air force",
      "subtitle": "Rs: 3000",
      "img": "https://www.shutterstock.com/image-photo/bangkok-thailand-march-26-2018-260nw-1079458139.jpg",
    },
    {
      "title": "Nike Air force",
      "subtitle": "Rs: 3000",
      "img": "https://www.shutterstock.com/image-photo/bangkok-thailand-march-26-2018-260nw-1079458139.jpg",
    }
  ];
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: index, onTap: (i) {
        setState(() {
          index = i;
        });
      },
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.home,
              color: Colors.black,
              size: 40,
            ),

            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 40,
            ),
            label: "",

          ),

          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.offline_bolt,
              color: Colors.black,
              size: 40,
            ),
            icon: Icon(
              Icons.offline_bolt_outlined,
              color: Colors.black,
              size: 40,
            ),
            label: "",
          ),

          BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.grid_view_rounded,
              color: Colors.black,
              size: 40,
            ),
            icon: Icon(
              Icons.grid_view,
              color: Colors.black,
              size: 40,
            ),
            label: "",
          ),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Catalog",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: "Calibri"
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[


            Row(
              children: [
                Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "Search",
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 70,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_vintage_sharp
                    ),
                  ),
                ),
              ],
            ),

            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 120, // <-- you should put some value here
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(data[index]["title"].toString(),
                            style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                          ),
                          leading: Image.network(data[index]["img"].toString(),
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                          subtitle: Text(data[index]["subtitle"].toString(),
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int i) {
                    return Card(
                      margin: EdgeInsets.all(20),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        leading: SizedBox(height: 200,
                          child: Image.network(data[i]["img"].toString(),
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(data[i]["title"].toString(),
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 40),
                        ),
                        subtitle: Text(data[i]["subtitle"].toString(),
                          style: TextStyle(fontSize: 30, fontWeight: FontWeight
                              .bold),),
                      ),
                    );
                  },
                ),
            ),
          ],
        ),
      ),
    );
  }
}

