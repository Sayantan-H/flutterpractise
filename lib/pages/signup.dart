import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final TextEditingController controller = TextEditingController();
  String text='';
  bool isChecked= false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                      const SizedBox(height: 50,),
                      
                      //SIGN UP TEXT
                      const Text(
                        "Sign up",
                        style: TextStyle(
                          fontSize: 38,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
        
                      const SizedBox(height: 30,),
                      

                      //ENTER NAME BOX
                      Container(
                        height: 48,
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
                        child: TextFormField(
                                controller: controller,
                                decoration: const InputDecoration(
                                label: Center(child: Text("Enter your Full name")),
                                ),
                              ),
                      ),
        
                      const SizedBox(height: 30,),
                      
                      //ENTER PHONE NUMBER BOX
                      Container(
                        height: 48,
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
                                const Text('+ 91',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Image.asset(
                                          'assets/india.png',
                                          width: 25,
                                          height: 12,
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
        
                            const SizedBox(width: 0,),
        
                            SizedBox(
                              height: 48,
                              width: 200,
                              child: TextFormField(
                                controller: controller,
                                decoration: const InputDecoration(
                                label: Center(child: Text('Enter your Phone no.')),
                                ),
                              ),
                            ),
        
                          ],
                        ),
                      ),

                      const SizedBox(height: 10,),


                      //CheckBOX
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: isChecked,
                            activeColor: const Color.fromARGB(255, 188, 188, 188),
                          onChanged: (newBool){
                            setState(() {
                              isChecked=newBool!;
                            });
                          }
                          ),
                          Text('I agree to all terms of services and privacy',
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          )
                        ],
                      ),
        
                      const SizedBox(height: 10,),

                      //CREATE ACCOUNT BUTTON
                      Container(
                        height: 42,
                        width: 147,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          color: const Color.fromARGB(255, 188, 188, 188),
                        ),
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: Colors.grey[500],
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
                              height: 50,
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
        
                      const SizedBox(height: 40,),
        
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
                        height: 30,
                      ),
        
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Already a user ?',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 13, 
                          ),),
        
                          SizedBox(width: 2,),
        
                          Text('login',style: TextStyle(
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
      ),
    );
  }
}