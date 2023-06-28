
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
         // padding: const EdgeInsets.all(),
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
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon((Icons.fingerprint)),
                          labelText: "Name" ,
                          hintText: "Name",
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: null,
                            icon: Icon(Icons.person_outline_outlined),
                          ),
                        ),
                      ),
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
                      const SizedBox(height: 10),
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon((Icons.phone)),
                          labelText: "Phone" ,
                          hintText: "Phone",
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
                        child: ElevatedButton(onPressed: (){}, child: Text("Loginup", textAlign: TextAlign.center,)),
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
                                label: Text("Signup with google")
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextButton(onPressed: (){},
                              child: const Text.rich(

                                  TextSpan(
                                      text: "Already have an Account?",
                                      //style: Theme.of(context).textTheme.bodyText1,
                                      children: [
                                        TextSpan(text: "Signup"),

                                        //style: TextStyle(color: colors.blue),
                                      ])
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
    );
  }
}
