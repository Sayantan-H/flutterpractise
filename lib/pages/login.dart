import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/box.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  final TextEditingController controller=TextEditingController();
  String text='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                    const SizedBox(height: 40,),

                    const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                    ),

                    const SizedBox(height: 25,),

                    Container(
                      height: 73,
                      width: 299,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                          style: BorderStyle.solid,
                        ),
                        color: Colors.transparent,
                      ),

                      child: Row(
                        children: [
                          const SizedBox(width: 5,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text('+ 91',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                              Image.asset(
                                        'assets/india.png',
                                        width: 30,
                                        height: 18,
                                        fit:BoxFit.cover  
                                      ),
                            ],
                          ),

                          SizedBox(
                            height: 50,
                            child: VerticalDivider(
                              thickness: 2,
                              color: Colors.grey[400],
                            ),
                          ),

                          const SizedBox(width: 5,),

                          TextFormField(
                            controller: controller,
                            decoration: const InputDecoration(
                            labelText: 'Enter your Phone no.',
                            ),
                          ),
                    
                          // Text('Enter your Phone no.', style: TextStyle(
                          //   letterSpacing: 2,
                          //   color: Colors.grey[400]
                          // ),)

                        ],
                      ),
                    ),

                    const SizedBox(height: 35,),

                    Container(
                      height: 42,
                      width: 147,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                        ),
                        color: const Color.fromARGB(255, 255, 0, 82),
                      ),
                      child: const Center(
                        child: Text(
                          'Send OTP',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                          ),
                      ),
                    ),

                    Stack(
                      alignment: Alignment.center,
                      children: [
                            Divider(
                            height: 100,
                            color: Colors.grey[400],
                          ),
                          Container(
                            height: 32,
                            width: 32,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                             ),
                            child: Center(child: Text('Or',style: TextStyle(color: Colors.grey[500]),)),
                          )
                      ],
                    ),

                    const SizedBox(height: 15,),

                    Container(
                      height: 40,
                      width: 249,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(child: Text('Continue with Email', style: TextStyle(color: Colors.grey[600],letterSpacing: 1),)),
                    ),

                    const SizedBox(height: 30,),

                    Container(
                      height: 40,
                      width: 249,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 15,),
                          const Image(image: AssetImage('assets/googleicon.png')),
                          const SizedBox(width: 5,),
                          Text('Continue with Google',style: TextStyle(color: Colors.grey[600], letterSpacing: 1,))
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 200,
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('New to our platform?',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 13, 
                        ),),

                        SizedBox(width: 2,),

                        Text('Sign up',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          fontSize: 13,
                          color:  Color.fromARGB(255, 255, 0, 82),
                        ),)
                      ],
                    ),



              ],
          ),
        ),
      ),
    );
  }
}