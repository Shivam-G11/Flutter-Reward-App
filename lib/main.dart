import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:ui1/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Android Flutter Reward App - Login & Feed",
      home:MyHomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                child: Row(
                  children: [
                    Text(
                      "Partners",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "Eco World",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.add_location,
                      color: Colors.blue,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey.shade200),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.search,
                          size: 35,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          cursorColor: Colors.black,
                          style: TextStyle(fontSize: 22),
                          decoration: new InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                                left: 15, bottom: 11, top: 11, right: 15),
                            hintText: "Search Partners",
                            hintStyle: TextStyle(fontSize: 22),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade200,
                thickness: 20,
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.add_box_outlined,
                                size: 40, color: Colors.blue),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),

                              child: Text(
                                "ALL",
                                style: TextStyle(color: Colors.blue),

                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.accessibility_new_sharp,
                              size: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("FASHION"),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.videogame_asset,
                              size: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("TECH"),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.flight_takeoff_sharp,
                              size: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("TRAVEL"),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Icon(
                              Icons.local_movies_outlined,
                              size: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text("MOVIES"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey.shade200,
                thickness: 1,
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Top Offers",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                                'https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__340.jpg'),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              width: 110,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                  "REDEEM",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 20,
                              left: 40,
                              right: 90,

                              child: Text("Best Food Deals",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                          Positioned(
                              top: 45,
                              left: 40,
                              right: 90,

                              child: Text("50% OFF",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                                'https://image.shutterstock.com/image-photo/bowl-buddha-buckwheat-pumpkin-chicken-260nw-1259570605.jpg'),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              width: 110,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                      "REDEEM",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 20,
                              left: 40,
                              right: 90,

                              child: Text("Uber Eats",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                          Positioned(
                              top: 45,
                              left: 40,
                              right: 90,

                              child: Text("20% OFF",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                                'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/07/eating-whole-grains-and-fresh-vegetables-may-help-prevent-migraines-1-1024x683.jpg?w=1155&h=1541'),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              width: 110,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                      "REDEEM",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 20,
                              left: 40,
                              right: 90,

                              child: Text("Zomato",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                          Positioned(
                              top: 45,
                              left: 40,
                              right: 90,

                              child: Text("10% OFF",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30.0),
                            child: Image.network(
                                'https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/foodnavigator-asia.com/headlines/policy/processed-foods-ban-india-bars-sales-and-marketing-of-unhealthy-foods-in-and-around-schools/11784921-1-eng-GB/Processed-foods-ban-India-bars-sales-and-marketing-of-unhealthy-foods-in-and-around-schools_wrbm_large.jpg'),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            child: Container(
                              width: 110,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(30.0),
                                      bottomLeft: Radius.circular(30.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: Text(
                                      "REDEEM",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 20,
                              left: 40,
                              right: 90,

                              child: Text("Swiggy",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),)),
                          Positioned(
                              top: 45,
                              left: 40,
                              right: 90,

                              child: Text("15% OFF",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),))
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
        bottomNavigationBar: ConvexAppBar(
          color: Colors.white,
          style: TabStyle.react,
          items: [
            TabItem(title: "Home",icon: Icons.home),
            TabItem(icon: Icons.food_bank,title: "Services"),
            TabItem(icon: Icons.sports_handball,title: "Partners"),
            TabItem(icon: Icons.doorbell_outlined,title: "Activity"),
          ],
          initialActiveIndex: 1,
          onTap: (int i) => print('click index=$i'),
        ),
      ),
    );
  }
}
