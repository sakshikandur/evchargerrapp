import 'package:flutter/material.dart';

class Signupscreen extends StatefulWidget {
  static const String id = 'signupscreen';
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 70,),
                const Center(
                  child: Image(
                    height:70,
                    width: 70,
                    image: AssetImage('assets/charging.png'),),
                ),
                const Text('EvChargerr',
                  style:TextStyle(fontFamily: 'StackSansNotch',fontSize: 30,color: Colors.green,) ,),
                const SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.alternate_email_outlined),
                      fillColor: Colors.white12,
                      filled: true,
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
                      hintText: 'Enter Password',
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      filled: true,
                      fillColor: Colors.white12,
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
                      hintText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                          borderRadius: BorderRadius.circular(10),

                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,

                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),

                    ),
                  ),
                ),
                SizedBox(height: 100,),
                Container(
                  width: 150,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Center(
                      child: Text('Sign Up',
                        style: TextStyle(
                          fontFamily: 'StackSansNotch',fontWeight: FontWeight.bold,
                        ),)),
                ),
                Expanded(
                  flex: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Have an Account?' ,style: TextStyle(fontSize:15,),),

                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                          child: Text('Login',style: TextStyle(decoration: TextDecoration.underline, fontWeight: FontWeight.bold),))
                    ],
                  ),
                ),
              ],
            ),),
      ),
    );
  }
}
