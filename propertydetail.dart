// ignore: import_of_legacy_library_into_null_safe
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, duplicate_ignore, sized_box_for_whitespace, prefer_final_fields

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PropertyDetail extends StatefulWidget {
  @override
  _PropertyDetailState createState() => _PropertyDetailState();
}

class _PropertyDetailState extends State<PropertyDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Property Details",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.favorite_border_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.share_rounded), onPressed: () {}),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: Stack(children: <Widget>[
                  Carousel(
                    // ignore: prefer_const_literals_to_create_immutables
                    images: [
                      AssetImage("assets/images/property.png"),
                      AssetImage(
                          "assets/images/north vista phase ii connecting.png"),
                      AssetImage("assets/images/blog.png")
                    ],
                    dotSize: 4.0,
                    dotSpacing: 15.0,
                    dotColor: Colors.white,
                    indicatorBgPadding: 5.0,
                    dotBgColor: Colors.grey.withOpacity(0.5),
                  ),
                ]),
              ),
              height: 300,
            ),
          ]),
          Column(children: [
            Container(
              height: 50,
              // width: 400,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.black45),
                  ),
                  color: Color(0xffC0C0C0)),
              child: Center(
                child: RichText(
                  text: TextSpan(
                      text: ' PKR',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        TextSpan(
                          text: ' 80 LAKH ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            Container(
              height: 50,
              //width: 400,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.black45),
                  ),
                  color: Colors.white),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          text: ' FLAT FOR SALE AT NAZIMABAD BLOCK B',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            TextSpan(
                              text:
                                  ' \n NORTH NAZIMABAD - BLOCK H, NORTH NAZIMABAD ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              ),
                            ),
                          ]),
                    ),
                  ]),
            ),
            Container(
              height: 50,
              // width: 400,
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.black45),
                  ),
                  color: Colors.white),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.king_bed_outlined,
                      color: Colors.grey,
                    ),
                    Text("Beds"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.bathtub_outlined,
                      color: Colors.grey,
                    ),
                    Text("Bathrooms"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.square_foot_outlined,
                      color: Colors.grey,
                    ),
                    Text("Sqft"),
                    SizedBox(
                      width: 5,
                    ),
                  ]),
            ),
            Container(
              height: 50,
              // width: 400,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: ' Details',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ]),
            ),
            Container(
              height: 50,
              // width: 400,
              decoration: BoxDecoration(color: Color(0xffC0C0C0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            text: ' Type                 ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              TextSpan(
                                text: ' Flat                ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: ' Area                 ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: ' Sqft',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                            ]),
                      ),
                    ]),
              ),
            ),
            Container(
              height: 70,
              //width: 400,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            text: ' Price            ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              TextSpan(
                                text: ' 80 lacs            ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: ' Purpose         ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: ' For Sale',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                            ]),
                      ),
                    ]),
              ),
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(color: Color(0xffC0C0C0)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            text: ' Bedroom(s)       ',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              TextSpan(
                                text: ' 3                ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: ' Bath(s)           ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                              TextSpan(
                                text: ' 3',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 13,
                                ),
                              ),
                            ]),
                      ),
                    ]),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.black45),
                  ),
                  color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    Description_Text(),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: MaterialButton(
                        minWidth: 70,
                        height: 40,
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Homepage()));
                        },
                        color: Color(0xfffcb812),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text("Read More",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // width: 400,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Amenities_Detail(),
                      Features_Detail(),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: MaterialButton(
                          minWidth: 70,
                          height: 40,
                          onPressed: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) => Homepage()));
                          },
                          color: Color(0xfffcb812),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text("View All Amenities",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              //width: 400,
              decoration: BoxDecoration(
                  // border: Border(
                  //   bottom: BorderSide(width: 0.5, color: Colors.black45),
                  // ),
                  color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Location_Detail(),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}

// ignore: camel_case_types
class Description_Text extends StatefulWidget {
  const Description_Text({Key? key}) : super(key: key);

  @override
  _Description_TextState createState() => _Description_TextState();
}

// ignore: camel_case_types
class _Description_TextState extends State<Description_Text> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: RichText(
        text: TextSpan(
          text: ' Description ',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            TextSpan(
              text: '\n 3 bed..... ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            TextSpan(
              text: '\n Availble.... ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
            TextSpan(
              text:
                  '\n Shades of gray consist of both achromatic grayscale shades, which are varying combinations of black and white, and close colors that have very low saturation. ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class Amenities_Detail extends StatefulWidget {
  const Amenities_Detail({Key? key}) : super(key: key);

  @override
  _Amenities_DetailState createState() => _Amenities_DetailState();
}

// ignore: camel_case_types
class _Amenities_DetailState extends State<Amenities_Detail> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: ' Amenities ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              TextSpan(
                text: '\n \n  Main Features',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class Features_Detail extends StatefulWidget {
  const Features_Detail({Key? key}) : super(key: key);

  @override
  _Features_DetailState createState() => _Features_DetailState();
}

// ignore: camel_case_types
class _Features_DetailState extends State<Features_Detail> {
  @override
  Widget build(BuildContext context) {
    return
        //Padding(
        //padding: const EdgeInsets.symmetric(horizontal: ),
        //child:
        Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.calendar_today_sharp,
              size: 20,
            ),
            Text("Build in year: 2021 "),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.local_parking_rounded,
              size: 20,
            ),
            Text("Parking Spaces: 2"),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.calendar_today_sharp,
              size: 20,
            ),
            Text("Build in year: 2021"),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.local_parking_rounded,
              size: 20,
            ),
            Text("Parking Spaces: 2"),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.calendar_today_sharp,
              size: 20,
            ),
            Text("Build in year: 2021"),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.local_parking_rounded,
              size: 20,
            ),
            Text("Parking Spaces: 2"),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.calendar_today_sharp,
              size: 20,
            ),
            Text("Build in year: 2021"),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.local_parking_rounded,
              size: 20,
            ),
            Text("Parking Spaces: 2"),
          ],
        ),
      ],
      //),
    );
  }
}

// ignore: camel_case_types
class Location_Detail extends StatefulWidget {
  const Location_Detail({Key? key}) : super(key: key);

  @override
  _Location_DetailState createState() => _Location_DetailState();
}

// ignore: camel_case_types
class _Location_DetailState extends State<Location_Detail> {
  Set<Marker> _marker = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _marker.add(
        Marker(
            markerId: MarkerId('ID-1'),
            infoWindow: InfoWindow(title: 'Jeewa Group'),
            position: LatLng(24.91159552705656, 67.08775106805638)),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("Location",
                  style: TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("North Nazimabad",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.normal)),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Container(
            height: 300,
            // decoration: BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage(
            //       'assets/images/map1.jpg',
            //     ),
            //     fit: BoxFit.fill)),
            child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: _marker,
                initialCameraPosition: CameraPosition(
                    target: LatLng(24.911128456799137, 67.0891994608298),
                    zoom: 15)),
          ),
        ],
      ),
    );
  }
}
