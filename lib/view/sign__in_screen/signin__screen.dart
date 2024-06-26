import 'package:flutter/material.dart';
import 'package:flutter_application_14/view/homescree__n/home__screen.dart';
import 'package:flutter_application_14/view/sign__up_screen/sign__upscreen.dart';


class Sign_In extends StatelessWidget {
  const Sign_In({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> emailkey = GlobalKey<FormState>();
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: emailkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Sign in your Account",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Your Email Address",
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black))),
                  validator: (value) {
                    if (value!.isEmpty || !value.contains("@")) {
                      return "enther a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Your Password",
                      suffixIcon: Icon(Icons.visibility_off),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black))),
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return "password must be contains 6 charcters";
                    } else {
                      return null;
                    }
                  },
                ),
                Row(
                  children: [
                    Icon(Icons.check_box),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Remeber me"),
                    Spacer(),
                    Text(
                      "Forgot password",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.blue)),
                      onPressed: () {
                       if(emailkey.currentState!.validate()){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ));
                       }
                      },
                      child: Text(
                        "sigin",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dont have an accunont?",
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sign_up(),
                              ));
                        },
                        child: Text(
                          "sign up",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
