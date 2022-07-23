import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //pega as dimenções da tela
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0XFF0092B9),
              Color(0XFF0167b2),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(
                height: screenSize.height * .1,
              ),
              SizedBox(
                  width: screenSize.width * .8,
                  height: 49,
                  child: ElevatedButton(
                      onPressed: () {},
                      style:
                          ElevatedButton.styleFrom(primary: Colors.grey[200]),
                      child: Image.asset('assets/images/google.png')))
            ],
          ),
        ),
      ),
    );
  }
}
