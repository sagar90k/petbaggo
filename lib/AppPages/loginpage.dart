import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:petbaggo/AppPages/HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GoogleSignIn googleSignIn = new GoogleSignIn();
  final FirebaseAuth firebaseAuth= FirebaseAuth.instance;


  SharedPreferences sharedPreferences;
  bool loading=false;
  bool isLoggedin=false;

  void iniState(){
    super.initState();
    isSignedIn();
  }

  void isSignedIn() async {
    setState(() {
      loading=true;
    });
    sharedPreferences= await SharedPreferences.getInstance();
    isLoggedin = await googleSignIn.isSignedIn();

    if(isLoggedin){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    }

    setState(() {
      loading=false;
    });
    
    Future handleSigIn() async{
      sharedPreferences = await SharedPreferences.getInstance();

      setState(() {
        loading= true;
      });

      //GoogleSignInAccount googleUser = await googleSignIn.signIn();
      //GoogleSignInAuthentication googleSignInAuthentication = await googleUser.authentication;

      final GoogleSignInAccount googleUser = await googleSignIn.signIn();
      final GoogleSignInAuthentication googleAuth =
      await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.getCredential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final FirebaseUser user = (await firebaseAuth.signInWithCredential(credential)).user;
      assert(user.email != null);
      assert(user.displayName != null);
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final FirebaseUser currentUser = await firebaseAuth.currentUser();
      assert(user.uid == currentUser.uid);

      return 'signInWithGoogle succeeded: $user';


    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
