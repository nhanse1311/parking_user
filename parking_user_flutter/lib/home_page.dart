import 'package:flutter/material.dart';
import 'package:parking_user_flutter/profile_page.dart';
import 'package:parking_user_flutter/vehicle_code_page.dart';
import 'package:parking_user_flutter/widgets/drawer_home.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking User',
      routes: {
        '/QRCodePage': (context) => QRCode(),
        '/ProfilePages':(context)=>Profile(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Trang Chủ'),
    );
  }
} // Stateless chứa các thằng không thay đổi, bản thân Stateful không thay đổi nhưng có thể chứa các thằng thay đổi

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  _buildCard({Config config, Color backgroundColor = Colors.white38}) {
    return Container(
      height: 160.0,
      width: double.infinity,
      child: Container(
        child: WaveWidget(
          config: config,
          backgroundColor: backgroundColor,
          size: Size(double.infinity, double.infinity),
          waveAmplitude: 0,
        ),
      ),
    );
  }

  MaskFilter _blur;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerHome(),
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications, color: Colors.white,),
              onPressed: () {
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                _buildCard(
                    config: CustomConfig(
                      colors: [
                        Colors.white70,
                        Colors.white54,
                        Colors.white30,
                        Colors.white,
                      ],
                      durations: [30000, 21000, 18000, 5000],
                      heightPercentages: [0.45, 0.56, 0.58, 0.61],
                      blur: _blur,
                    ),
                    backgroundColor: Colors.blue),
                Container(
                  margin: EdgeInsets.only(top: 15, right: 15),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        'assets/images/parking.png',
                        width: 250,
                      )),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 15, left: 30, right: 30),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: ListTile(
                          trailing:
                              Image.asset('assets/images/qrcode_home.jpg'),
                          title: Text(
                            'Mã thẻ xe',
                            style: TextStyle(fontSize: 20),
                          ),
                          onTap: () => {
                            Navigator.pushNamed(context, QRCode.routeName)
                          }, // write function in here
                        ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: ListTile(
                          trailing:
                              Image.asset('assets/images/ewallet_home.jpg'),
                          title: Text(
                            'Ví tiền',
                            style: TextStyle(fontSize: 20),
                          ),
                          onTap: () => {}, // write function in here
                        ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: ListTile(
                          trailing: Image.asset(
                            'assets/images/transaction.jpg',
                          ),
                          title: Text(
                            'Giao dịch',
                            style: TextStyle(fontSize: 20),
                          ),
                          onTap: () => {}, // write function in here
                        ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: ListTile(
                          trailing: Image.asset(
                            'assets/images/vehicle_management_home.jpg',
                            height: 200,
                          ),
                          title: Text(
                            'Quản lý xe',
                            style: TextStyle(fontSize: 20),
                          ),
                          onTap: () => {}, // write function in here
                        ),
                      ),
                      elevation: 5,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: ListTile(
                          trailing:
                              Image.asset('assets/images/personal_home.png'),
                          title: Text(
                            'Cá nhân',
                            style: TextStyle(fontSize: 20),
                          ),
                          onTap: () => {
                            Navigator.pushNamed(context, Profile.routeName)
                          }, // write function in here
                        ),
                      ),
                      elevation: 5,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
