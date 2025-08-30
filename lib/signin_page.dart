import 'package:flutter/material.dart';

class Signinpage extends StatefulWidget {
  const Signinpage({super.key});

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void submit(){
    String email = emailController.text;
    String password = passwordController.text;

    print("Email: $email");
    print("Password: $password");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
            Color.fromRGBO(24, 64, 17, 1),
            Color.fromRGBO(15, 15, 15, 1),
            Color.fromRGBO(15, 15, 15, 1),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 30,),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60))
                ),
                child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [BoxShadow(
                              color: Color.fromRGBO(225, 95, 27, .3),
                              blurRadius: 20,
                              offset: Offset(0, 10)
                            )]
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: TextField(
                                  controller: emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                                ),
                                child: TextField(
                                  controller: passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                  
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                        Text("Forgot Password?", style: TextStyle(color: Colors.grey),),
                        SizedBox(height: 40,),
                        MaterialButton(
                          onPressed: submit,
                          height: 50,
                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          color: Color.fromRGBO(35, 145, 15, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),

                          ),
                          // decoration: BoxDecoration(
                          // ),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Text("Don't have account?", style: TextStyle(color: Colors.grey),),
                          TextButton(onPressed: ()=> {
                            Navigator.pushNamed(context, '/signup')
                          }, child: Text("register", style: TextStyle(color: Colors.orange[900]),))
                        ],),
                        
                        SizedBox(height: 30,),
                       
                      ],
                    ),
                  ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
