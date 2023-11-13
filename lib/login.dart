import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    bool showPassword = true;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Log In",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 40,),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 237, 237),
                  borderRadius: BorderRadius.circular(10)),
              height: 60,
              width: 360,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 22.0, 0, 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: "Email",
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 237, 237),
                  borderRadius: BorderRadius.circular(10)),
              height: 60,
              width: 360,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 22.0, 14.0, 10.0),
                child: TextFormField(
                  // ignore: dead_code
                  obscureText: showPassword ? true : false,
                  decoration: const InputDecoration(
                      suffixText: "Show",
                      suffixStyle: TextStyle(
                          color: Color.fromARGB(255, 74, 171, 78),
                          fontSize: 19.5),
                      hintText: "Password",
                      border: UnderlineInputBorder(borderSide: BorderSide.none),
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
            ),
            const SizedBox(height: 130,),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 97, 177, 119)),
                    padding: const MaterialStatePropertyAll(
                        EdgeInsets.fromLTRB(150, 18, 150, 18)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)))),
                child: const Text(
                  "Log In",
                  style: TextStyle(fontSize: 20),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot your password?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 97, 177, 119), fontSize: 20),
                ),),
          ],
        ),
      ),
    );
  }
}
