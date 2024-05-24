import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  final TextEditingController controller = TextEditingController();
  String text='';
  bool isSwitched= false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //UPPER CONTAINER STARTS
            Container(
              height: 200,
              width: 393,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 4, 28, 65),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)
                  ),
                ),
        
                //USER DETAILS
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 5,),
                      //USER AVATAR
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/ninja1.jpg'),
                      ),
                  
                      const SizedBox(width: 8,),
                      //USER DETAILS
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Welcome back',style: TextStyle(color: Colors.white,fontSize: 12,letterSpacing: 1,),),
                          SizedBox(height: 1,),
                          Text('Chotu Patel',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              letterSpacing: 2,
                            ),
                            )
                        ],
                      ),
                  
                      const SizedBox(width: 90,),
                  
                      //LOGOUT BUTTON
                      Container(
                        height: 38,
                        width: 96,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(67),
                          color: const Color.fromARGB(255, 64, 65, 68),
                        ),
                        child: const Center(child: Text('LOG OUT',style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),)),
                      ),
                    ],
                  ),
                ),
            ),
            //UPPER CONTAINER ENDS
        
            //LOWER CONTENT STARTS
            Expanded(
              child: Container(
                height: 380,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.grey[100],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      //USER ID
                      const Text('  User ID'),
                      const SizedBox(height: 5,),
                      Container(
                              height: 45,
                              width: 290,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
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
                                      label: Text(" Enter User ID"),
                                      ),
                                    ),
                            ),
                      
                      const SizedBox(height: 10,),
                      
                      //EMAIL
                      const Text('  Email ID'),
                      const SizedBox(height: 5,),
                      Container(
                        height: 45,
                        width: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
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
                                label: Text(" Enter Email ID"),
                               ),
                            ),
                           ),
                      
                      const SizedBox(height: 10,),
                      
                      //MOBILE NUMBER
                      const Text('  Mobile Number'),
                      const SizedBox(height: 5,),
                      Container(
                        height: 45,
                        width: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
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
                                label: Text(" Enter Mobile Number"),
                               ),
                            ),
                           ),
                      
                      const SizedBox(height: 20,),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //CONTAINER 1
                          Container(
                            height: 85,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid,
                              )
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('  Age',style: TextStyle(fontSize: 12),),
                                  Center(
                                    child: Container(
                                      width: 120,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(11),
                                      ),
                                      child: TextFormField(
                                            controller: controller,
                                            decoration: InputDecoration(
                                            label: Center(child: Text("Enter Age",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20, color: Colors.grey[500]),)),
                                              ),
                                          ),
                                    ),
                                  ),
                                ],
                              
                              ),
                            ),
                          ),
                      
                          //CONTAINER 2
                          Container(
                            height: 85,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                                style: BorderStyle.solid,
                              )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('  Blood Group',style: TextStyle(fontSize: 12),),
                                  Center(
                                    child: Container(
                                      width: 120,
                                      height: 60,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(11),
                                      ),
                                      child: TextFormField(
                                            controller: controller,
                                            decoration: InputDecoration(
                                            label: Center(child: Text("Enter Blood Group",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,color: Colors.grey[500]),)),
                                              ),
                                          ),
                                    ),
                                  ),
                                ],
                              
                              ),
                            ),
                          ),
                        ],
                      )      
                    ],
                  ),
                ),
              ),
            ),
            //LOWER CONTAINER ENDS
        
            const SizedBox(
              height: 15,
            ),
        
            //SECOND CONTAINER STARTS
            Container(
              height: 57,
              width: 334,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                color: Colors.green[100]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  const Text(
                    'Available to donate :',
                    style: TextStyle(
                      color: Color.fromARGB(255, 28, 58, 25),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),

                  const SizedBox(width: 10,),

                  Switch.adaptive(
                    value: isSwitched,
                    activeColor: const Color.fromARGB(255, 28, 58, 25),
                    onChanged: (newBool){
                    setState(() {
                      isSwitched=newBool;
                    });
                    }
                  ),
        
                ],
              ),
            ),
            //SECOND CONTAINER ENDS

            const SizedBox(
              height: 15,
            ),

            //THIRD BAR STARTS
            Padding(
              padding: const EdgeInsets.fromLTRB(30,0,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.green[100],
                    ),
                    child: const Center(child: Icon(Icons.edit,color:  Color.fromARGB(255, 28, 88, 30),)),
                  ),
                  const SizedBox(width: 30,),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(11),
                      color: Colors.red[100],
                    ),
                    child: Center(child: Icon(Icons.delete_forever_outlined,color: Colors.red[600],)),
                  )
                ],
              ),
            ),
            // THIRD BAR ENDS

            const SizedBox(height: 20,),
            
            //FOURTH BAR
            Stack(
              alignment: Alignment.center,
              children: [

              Container(
              width: 344,
              height: 46,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.grey[100]
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30,0,30,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.home_outlined, color: Colors.pink[400], size: 35,),
                    const Icon(Icons.person, color: Colors.black, size: 35,)
                  ],
                ),
              ),
            ),

            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey[350],
              child: SizedBox(
                height: 35,
                width: 35,
                child: ClipOval(child: Image.asset('assets/blooddrop.png'),),
                  ),
                ),
              ],
            ),
            //FOURTH BAR

          ],
        ),
      ),

      
    );
  }
}