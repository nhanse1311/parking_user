import 'package:flutter/material.dart';
import 'package:parking_user_flutter/widgets/clip_path_profile.dart';
import 'package:parking_user_flutter/widgets/drawer_home.dart';

class Profile extends StatelessWidget {
  static const String routeName =
      '/ProfilePages'; // routeName to know where home navigation
  final TextEditingController _typeAccountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text('Thông tin cá nhân'),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipPath(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        color: Colors.blue,
                      ),
                      clipper: CustomClipPath(),
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          'Xin chào',
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 10, right: 10),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          decoration: new BoxDecoration(
                            border:
                                Border.all(color: Colors.blue[200], width: 10),
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: new BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 10),
                              shape: BoxShape.circle,
                            ),
                            child: Stack(
                              children: [
                                Container(
                                    width: 120.0,
                                    height: 120.0,
                                    decoration: new BoxDecoration(
                                        border: Border.all(
                                            color: Colors.blue[300], width: 10),
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                            fit: BoxFit.fill,
                                            image: new NetworkImage(
                                                "https://miro.medium.com/max/3840/1*l2AFc33U7grIeMML0a0unQ.jpeg")))),
                                Positioned(
                                    top: 75,
                                    left: 90,
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                        size: 20.0,
                                      ),
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 10,
                      child: Row(
                        children: [
                          Text(
                            'Đăng xuất',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(padding: EdgeInsets.only(left: 15)),
                          Text(
                            'Đổi mật khẩu',
                            style: TextStyle(
                                color: Colors.blue[300],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 200,
                      margin: EdgeInsets.only(top: 25, left: 30, right: 30),
                      child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 5, bottom: 5, left: 20, right: 20),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  'Đã xác thực',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )),
                    ),
                    Container(
                      width: 150,
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Center(
                              child: Text(
                                'Loại tài khoản',
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(top: 25, left: 30, right: 30),
                        child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 20, right: 20),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Center(
                                    child: TextField(
                                      controller: TextEditingController()
                                        ..text = 'Nguyễn Thanh Nhàn',
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ),
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  'Họ và Tên',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(top: 25, left: 30, right: 30),
                        child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 20, right: 20),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Center(
                                    child: TextField(
                                      controller: TextEditingController()
                                        ..text = 'nhanntse62902@fpt.edu.vn',
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ),
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  'Email',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(top: 25, left: 30, right: 30),
                        child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 20, right: 20),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Center(
                                    child: TextField(
                                      controller: TextEditingController()
                                        ..text = '025737608',
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ),
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  'CMND/CCCD',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Stack(
                    children: [
                      Container(
                        height: 60,
                        margin: EdgeInsets.only(top: 25, left: 30, right: 30),
                        child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0))),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: 5, bottom: 5, left: 20, right: 20),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Center(
                                    child: TextField(
                                      controller: TextEditingController()
                                        ..text = '0968233880',
                                      decoration: new InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ),
                      Container(
                        width: 150,
                        margin: EdgeInsets.only(left: 5, right: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0))),
                          child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Center(
                                child: Text(
                                  'Số điện thoại',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 60,
                              width: 180,
                              margin: EdgeInsets.only(
                                top: 25,
                                left: 30,
                              ),
                              child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0))),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 5, bottom: 5, left: 20, right: 20),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Center(
                                          child: TextField(
                                            controller: TextEditingController()
                                              ..text = '13/11/1998',
                                            decoration: new InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Container(
                              width: 150,
                              margin: EdgeInsets.only(left: 5, right: 5),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Center(
                                      child: Text(
                                        'Ngày sinh',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 60,
                              width: 140,
                              margin:
                                  EdgeInsets.only(top: 25, left: 30, right: 10),
                              child: Card(
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0))),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 5, bottom: 5, left: 20, right: 20),
                                    child: Center(
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Center(
                                          child: TextField(
                                            controller: TextEditingController()
                                              ..text = 'Nam',
                                            decoration: new InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                            ),
                            Container(
                              width: 150,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.0))),
                                child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Center(
                                      child: Text(
                                        'Giới tính',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )),
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 20),
                  child: Center(
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),),
                      child: Container(padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),child: Text('Cập nhật', style: TextStyle(fontSize: 20),)),
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: () {
//
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
