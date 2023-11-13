import 'package:flutter/material.dart';
import 'package:tomiwa_app/login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showPassword = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 125,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.clear_rounded),
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 95,
                ),
                const Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
                ),
                const SizedBox(
                  width: 75,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LogIn(),
                          ));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ))
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 238, 237, 237),
                  borderRadius: BorderRadius.circular(10)),
              height: 60,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 22.0, 0, 10.0),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      hintText: "Name",
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
              width: 350,
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
              width: 350,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 22.0, 14.0, 10.0),
                child: TextFormField(
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
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Checkbox(
                    side: const BorderSide(width: 0.5, color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    fillColor: isChecked
                        ? const MaterialStatePropertyAll(Colors.green)
                        : const MaterialStatePropertyAll(
                            Color.fromARGB(255, 232, 231, 231)),
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(
                        () {
                          isChecked = newValue!;
                        },
                      );
                    }),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    width: 340,
                    child: Text(
                      "I would like to receive your newsletter and other promotional information",
                      style: TextStyle(
                          color: Color.fromARGB(255, 117, 116, 116),
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 45,
            ),
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
                  "Sign Up",
                  style: TextStyle(fontSize: 20),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot your password?",
                  style: TextStyle(
                      color: Color.fromARGB(255, 97, 177, 119), fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
