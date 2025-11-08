import 'package:evchargerrapp/signupscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const Homescreen());
}

class Homescreen extends StatefulWidget {
  static const String id = 'Homescreen';
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
        child:Column(
          children: [

            Column(
              children: [
              SizedBox(height: 70,),
              Center(
                child: Image(
                  height: 70,
                    width: 70,
                   image: AssetImage('assets/charging.png'),
                ),
              ),
                Text('EvChargerr',style: TextStyle(
                  color: Colors.green,fontFamily: 'StackSansNotch', fontSize: 30,
                ),),
          ],
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.alternate_email),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'password',
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                  filled: true,
                  fillColor: Colors.white54,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Center(
                    child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'StackSansNotch',),
                    ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text('dont have an account?',
                      style: TextStyle(
                      fontSize: 15,
                    ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Signupscreen.id,);

                    },
                    child: Text('Sign Up',style: TextStyle(
                      decoration:TextDecoration.underline,
                    ),),
                  )
                ],
              ),
            ),
          ],

        ),
      ),
      ),


    );
  }
}
