import 'package:flutter/material.dart';
import 'package:parvati_path/widgets/custom_scaffold.dart';
import 'package:parvati_path/widgets/reusablebutton.dart';
import 'package:parvati_path/widgets/reusetext.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  TextEditingController _emailtextcontroller = TextEditingController();
  TextEditingController _passwordtextcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return customscaffold(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.2, 20, 0),
        child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Color.fromARGB(36, 255, 255, 255).withOpacity(0.2),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                  )
                ]),
            child: Column(
              children: <Widget>[
                const Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(108, 0, 0, 0))
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                reuseabletextfield("Enter Email", Icons.person_2_outlined,
                    false, _emailtextcontroller),
                const SizedBox(
                  height: 20,
                ),
                reuseabletextfield("Enter Password", Icons.lock_outline, true,
                    _passwordtextcontroller),
                const SizedBox(
                  height: 20,
                ),
                firebasebutton(context, "Sign In", () {}),
              ],
            )),
      ),
    ));
  }
}
