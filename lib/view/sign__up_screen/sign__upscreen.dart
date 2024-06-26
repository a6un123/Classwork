import 'package:flutter/material.dart';
import 'package:flutter_application_14/view/sign__in_screen/signin__screen.dart';

class Sign_up extends StatelessWidget {
  const Sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController confirampass = TextEditingController();
    TextEditingController Password = TextEditingController();

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
                  "Sign Up for free",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
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
                  controller: Password,
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
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  controller: confirampass,
                  decoration: InputDecoration(
                      hintText: "Your confirm Password",
                      suffixIcon: Icon(Icons.visibility_off),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black))),
                  validator: (value) {
                    if (Password.text == confirampass.text) {
                      return null;
                    } else {
                      return "password not mismatch";
                    }
                  },
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
                        if (emailkey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Sign_In(),
                              ));
                        }
                      },
                      child: Text(
                        "sigin up",
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
                          if (emailkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Sign_up(),
                                ));
                          }
                        },
                        child: Text(
                          "sign in",
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
