import 'package:flutter/material.dart';
import 'package:weather_app/model/data.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var inputStyle = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
    );
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 30.0,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  size: 30.0,
                )),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60),
            Text(
              'How is the weather',
              style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Search your city',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 40.0,
            ),
            TextField(
              decoration: InputDecoration(
                  border: inputStyle,
                  enabledBorder: inputStyle,
                  focusedBorder: inputStyle,
                  hintText: 'Search city',
                  hintStyle: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      color: Colors.white70),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.white70,
                    size: 25.0,
                  )),
            ),
            SizedBox(
              height: 80.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'My locations',
                  style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.more_horiz,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1, color: Colors.white),
                      shape: CircleBorder()),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Image.network(
                        listOfCities[0].cityImageUrl,
                        height: MediaQuery.of(context).size.height * 0.35,
                      ),
                      Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                listOfCities[0].cityName,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                listOfCities[0].time,
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                          Text(
                            listOfCities[0].cityTemperature.toString() + 'º',
                            style: TextStyle(
                                fontSize: 42.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          Row(
                            children: [
                              Image.network(
                                'https://pic.onlinewebfonts.com/svg/img_498862.png',
                                height: 23.0,
                                width: 23.0,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5.0),
                              Text(listOfCities[0].cityWeather,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12.0),
                ///////////////Secon Item
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Image.network(
                        listOfCities[1].cityImageUrl,
                        height: MediaQuery.of(context).size.height * 0.35,
                      ),
                      Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                listOfCities[1].cityName,
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                listOfCities[1].time,
                                style: TextStyle(
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                            ],
                          ),
                          Text(
                            listOfCities[1].cityTemperature.toString() + 'º',
                            style: TextStyle(
                                fontSize: 42.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          Row(
                            children: [
                              Image.network(
                                'https://www.jing.fm/clipimg/full/6-62328_rain-cloud-icon-weather-logo-black-and-white.png',
                                height: 23.0,
                                width: 23.0,
                                color: Colors.white,
                              ),
                              SizedBox(width: 5.0),
                              Text(listOfCities[1].cityWeather,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
