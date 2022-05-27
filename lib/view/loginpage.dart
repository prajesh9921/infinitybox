import 'package:flutter/material.dart';
import 'package:infynitybox/view/loginpage_style.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 150.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Title name
              Text("InfynityBox", style: titleStyle,),
              SizedBox(height: 20.0,),
              // Username Text Box
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Username", style: usernameStyle,),
                    SizedBox(height: 5.0,),
                    TextField(decoration: UsernameTextBox,),],)),

              // Password text box
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password", style: TextStyle(fontWeight: FontWeight.w600),),
                    SizedBox(height: 5.0,),
                    TextField(decoration: password_text_box,),],)),
              // Login Button
              SizedBox(height: 20.0,),
              SizedBox(
                width: MediaQuery.of(context).size.width/1.5,
                height: 50.0,
                child: TextButton(
                    style: btn_style,
                    onPressed: (){
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text("Login", style: Login_btn_style,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
