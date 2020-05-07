import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:signinpageui/models/google_sign_in.dart';
import 'package:signinpageui/signin_scene.dart';
import 'package:signinpageui/super_page.dart';

class SignUpScene extends StatefulWidget {
  @override
  _SignUpSceneState createState() => _SignUpSceneState();
}

class _SignUpSceneState extends State<SignUpScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.height,
              color: Color(0xFFC41A3B),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 0.0, left: 20.0, right: 0.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 28.0),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35.0),
                            topRight: Radius.circular(100.0)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 0.0, left: 20.0, right: 20.0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height / 1.5,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(top: 60.0),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width:
                                    MediaQuery.of(context).size.width / 1.2,
                                    height: 50.0,
                                    padding: EdgeInsets.only(
                                        top: 0.0,
                                        bottom: 0.0,
                                        left: 16.0,
                                        right: 16.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        topLeft: Radius.circular(0.0),
                                        bottomLeft: Radius.circular(15.0),
                                        bottomRight: Radius.circular(0.0),
                                      ),
                                      color: Color(0xFFFBE0E6),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 5.0)
                                      ],
                                    ),
                                    child: TextField(
                                      cursorColor: Color(0xFFC41A3B),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Full Name ex. Rahul Shah',
                                        icon: Icon(
                                          Icons.person,
                                          color: Color(0xFFC41A3B),
                                        ),
                                        hintStyle: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xFF1B1F32),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                    MediaQuery.of(context).size.width / 1.2,
                                    height: 50.0,
                                    padding: EdgeInsets.only(
                                        top: 0.0,
                                        bottom: 0.0,
                                        left: 16.0,
                                        right: 16.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        topLeft: Radius.circular(0.0),
                                        bottomLeft: Radius.circular(15.0),
                                        bottomRight: Radius.circular(0.0),
                                      ),
                                      color: Color(0xFFFBE0E6),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 5.0)
                                      ],
                                    ),
                                    child: TextField(
                                      cursorColor: Color(0xFFC41A3B),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Phone Number',
                                        icon: Icon(
                                          Icons.phone,
                                          color: Color(0xFFC41A3B),
                                        ),
                                        hintStyle: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xFF1B1F32),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                    MediaQuery.of(context).size.width / 1.2,
                                    height: 50.0,
                                    padding: EdgeInsets.only(
                                        top: 0.0,
                                        bottom: 0.0,
                                        left: 16.0,
                                        right: 16.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        topLeft: Radius.circular(0.0),
                                        bottomLeft: Radius.circular(15.0),
                                        bottomRight: Radius.circular(0.0),
                                      ),
                                      color: Color(0xFFFBE0E6),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 5.0)
                                      ],
                                    ),
                                    child: TextField(
                                      cursorColor: Color(0xFFC41A3B),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Email',
                                        icon: Icon(
                                          Icons.email,
                                          color: Color(0xFFC41A3B),
                                        ),
                                        hintStyle: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xFF1B1F32),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width / 1.2,
                                    height: 50.0,
                                    padding: EdgeInsets.only(
                                        top: 0.0,
                                        bottom: 0.0,
                                        left: 16.0,
                                        right: 16.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        topLeft: Radius.circular(0.0),
                                        bottomLeft: Radius.circular(15.0),
                                        bottomRight: Radius.circular(0.0),
                                      ),
                                      color: Color(0xFFFBE0E6),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 5.0)
                                      ],
                                    ),
                                    child: TextField(
                                      cursorColor: Color(0xFFC41A3B),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Enter Password',
                                        icon: Icon(
                                          Icons.lock,
                                          color: Color(0xFFC41A3B),
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.visibility_off),
                                          color: Color(0xFFC41A38),
                                        ),
                                        hintStyle: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xFF1B1F32),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width / 1.2,
                                    height: 50.0,
                                    padding: EdgeInsets.only(
                                        top: 0.0,
                                        bottom: 0.0,
                                        left: 16.0,
                                        right: 16.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.0),
                                        topLeft: Radius.circular(0.0),
                                        bottomLeft: Radius.circular(15.0),
                                        bottomRight: Radius.circular(0.0),
                                      ),
                                      color: Color(0xFFFBE0E6),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 5.0)
                                      ],
                                    ),
                                    child: TextField(
                                      cursorColor: Color(0xFFC41A3B),
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Confirm Password',
                                        icon: Icon(
                                          Icons.lock,
                                          color: Color(0xFFC41A3B),
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.visibility_off),
                                          color: Color(0xFFC41A38),
                                        ),
                                        hintStyle: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xFF1B1F32),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.only(
                                        top: 0.0,
                                        bottom: 0.0,
                                        left: 16.0,
                                        right: 16.0),
                                    child: RaisedButton(
                                      elevation: 5.0,
                                      padding: EdgeInsets.all(15.0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(15.0),
                                        ),
                                      ),
                                      color: Color(0xFFC41A38),
                                      onPressed: () {
                                        _navigateToHome(context);
                                        print("sign up");
                                      },
                                      child: Text(
                                        'Sign Up'.toUpperCase(),
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 16.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'OR',
                                        style: TextStyle(
                                          color: Color(0xFF1B1F32),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 16.0),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Sign In With',
                                        style: TextStyle(
                                          color: Color(0xFF1B1F32),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding:  EdgeInsets.only(right: 16.0, top: 10.0),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: RaisedButton(
                                              onPressed: (){
                                                _navigateToModelGoogle(context);
                                              },
                                              child: Text('Google', style: TextStyle(color: Colors.white),),
                                              color: Colors.red[800],
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: EdgeInsets.only(left: 16.0, top: 10.0),
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: RaisedButton(
                                              onPressed: (){},
                                              child: Text('Facebook', style: TextStyle(color: Colors.white)),
                                              color: Colors.blue[800],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
//                                  Padding(
//                                    padding: EdgeInsets.only( top: 10.0),
//                                    child: Align(
//                                      alignment: Alignment.center,
//                                        child: MaterialButton(
//                                          onPressed: (){},
//                                            child: Text("Click here! Login")),
//                                    ),
//                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

   _navigateToSignIn(BuildContext context) async{
    final signIn = await Navigator.push(context, MaterialPageRoute(
      builder: (context) => SignInScene()
    ));
   }

   _navigateToHome(BuildContext context) async{
     final signIn = await Navigator.push(context, MaterialPageRoute(
         builder: (context) => HomePage()
     ));
   }

   _navigateToModelGoogle(BuildContext context) async{
    final googleSign = await Navigator.push(context, MaterialPageRoute(
      builder: (context) => SignInGoogleModel()
    ));
   }
}
