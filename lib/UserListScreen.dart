import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserListScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return UserListScreenState();
  }
}

class UserListScreenState extends State<UserListScreen> {
  TextStyle userNameTextStyle = TextStyle(
      fontFamily: 'Montserrat', fontSize: 16.0, color: Colors.black45);
  Widget headerTitle() {
    return Text(
      "Chats",
      style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.black),
    );
  }

  Widget dividerLine() => Divider(color: Colors.black26, height: 36);

  Widget getProfilePhoto(){
    return Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("images/placeholder_profile.png")
//            )
            )));
  }

  Widget buildUserView(){
    return Row(
      children: <Widget>[
        getProfilePhoto(),
        SizedBox(width: 10),
        Text("User Name",style: userNameTextStyle)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
        headerSliverBuilder:
        (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          leading: BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
          floating: true,
          title: headerTitle(),
        )
      ];
    },
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            buildUserView(),
            dividerLine(),
            buildUserView(),
            dividerLine()
          ],
        ),
      ),
    )));
  }

}
