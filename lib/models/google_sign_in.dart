import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class SignInGoogleModel extends StatefulWidget {
  @override
  _SignInGoogleModelState createState() => _SignInGoogleModelState();
}

class _SignInGoogleModelState extends State<SignInGoogleModel> {
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
      });
    }
    catch(err){
      print(err);
    }
  }

  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: _isLoggedIn
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              _googleSignIn.currentUser.photoUrl,
              height: 50.0,
              width: 50.0,
            ),
            Text(_googleSignIn.currentUser.displayName),
            Text(_googleSignIn.currentUser.email),
            OutlineButton(
              child: Text("logout"),
              onPressed: (){
                _logout();
              },
            ),
          ],
        )
            :
            OutlineButton(
              child: Text("Login With Google"),
              onPressed: (){
                _login();
              },
            ),

      ),
    );
  }
}
