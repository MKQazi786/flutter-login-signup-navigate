
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.alphaBlend(Colors.pink, Colors.blue),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    width: 300,
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            size: 20,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Enter Your Email",
                        )),
                        const SizedBox(
                          height: 10,
                        ),
                        StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            bool obscureText = true;

                            return TextField(
                              obscureText: obscureText,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  size: 20,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                labelText: "Enter Your Password",
                                suffixIcon: const Icon(
                                  Icons.remove_red_eye,
                                  size: 20,
                                ),
                              ),
                            );
                          },
                        ),
                        const Row(children: [
                          Checkbox(
                            value: true,
                            onChanged: null,
                          ),
                          Text("Remember me")
                        ]),
                        const SizedBox(width: 200),
                        const SizedBox(
                          height: 15,
                        ),
                        ElevatedButton(
                          onPressed: () => {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              minimumSize: const Size(250, 50),
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white),
                          child: const Text("Login"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        RichText(
                            text: TextSpan(children: [
                          const TextSpan(text: "Not a member? "),
                          TextSpan(
                              text: "Sign up now",
                              style: const TextStyle(
                                  decoration: TextDecoration.underline),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignUp(),
                                    ),
                                  );
                                })
                        ]))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                width: 300,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.account_box_rounded, size: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "First Name"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.account_box_rounded, size: 20),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Last Name"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.email,
                            size: 20,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: "Email"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock, size: 20),
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: const Icon(Icons.remove_red_eye)),
                    ),
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(text: "Already a member?"),
                      TextSpan(
                          text: "Log In",
                          style: const TextStyle(
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            })
                    ])),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            minimumSize: const Size(200, 40),
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white),
                        child: const Text("Sign Up"))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
