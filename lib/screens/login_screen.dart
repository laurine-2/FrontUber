import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uber_front/components/image_component.dart';
import 'package:uber_front/constants/app_icons.dart';
import 'package:uber_front/constants/app_images.dart';
import 'package:uber_front/screens/signup_screen.dart';

import '../components/icon_component.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            //padding: EdgeInsetsGeometryTween().all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage("assets/images/welcome_background.jpg")),
                Text("Welcome Back", style: Theme.of(context).textTheme.displayLarge),
                Text("Thank to sign up", style: Theme.of(context).textTheme.bodyLarge),

                Form(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                    prefixIcon: Icon((Icons.person_outline_outlined)),
                            labelText: "Email" ,
                            hintText: "E-Mail",
                            border: OutlineInputBorder()

                          ),
                        ),
                        const SizedBox(height: 10),
                  TextFormField(
                decoration: const InputDecoration(
                prefixIcon: Icon((Icons.fingerprint)),
                labelText: "Password" ,
                  hintText: "Password",
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.remove_red_eye_sharp),
                  ),
                ),
                  ),
                        const SizedBox(height: 20,),
                        Align( alignment: Alignment.bottomRight,
                          child: TextButton(
                              onPressed: (){},
                              child: Text("Forget Password")),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(onPressed: (){}, child: Text("Login", textAlign: TextAlign.center,)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("OR"),
                            const SizedBox(height: 10),

                            SizedBox(
                              width: double.infinity,
                              child: OutlinedButton.icon(
                                icon: Image(image: AssetImage("assets/images/Google.png"),width: 2),
                                  onPressed: (){},
                                  label: Text("Sign with google")
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextButton(onPressed: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => const SignupScreen()
                                  )
                              );
                            },
                                child: const Text.rich(

                                    TextSpan(
                                      text: "Already have an Account?",
                                    //style: Theme.of(context).textTheme.bodyText1,
                                    children: [

                                      TextSpan(text: "Signup",
                                          style: TextStyle(color: Colors.blue),

                                      )
                                    ],
                                    )
                                    )
                            ),


                            
                          ],
                        )
                      ],
                    ),
                  ),)
              ],
            ),
          ),

        ),
      ),

    );
  }
}
