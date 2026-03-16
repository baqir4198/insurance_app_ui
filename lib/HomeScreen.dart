import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  var y =400;
  var x = 500;
  File? _selectedImage;
  Future<void> _pickImage()async{
    final picker = ImagePicker();
    final pickedimage = await picker.pickImage(source: ImageSource.gallery);
    if(pickedimage != null){
      setState(() {
        _selectedImage = File(pickedimage.path);
      });
    }
  }
  void _showNotificationPopup(BuildContext context){
    showDialog(context: context,
        builder: (BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text('Notification'),
            content:Text('No Notification'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );

        });
  }
  void _showTerms(BuildContext context){
    showDialog(context: context,
        builder: (BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text('Terms'),
            content:Text('You have a Discipline'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );

        });
  }
  void _showPolicies(BuildContext context){
    showDialog(context: context,
        builder: (BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text('Policies'),
            content:Text('We dont compromize on the discipline'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );

        });
  }
  void _seeAll(BuildContext context){
    showDialog(context: context,
        builder: (BuildContext context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            content:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  child: Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 5),
                                child: Text("Bot Alert",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo
                                  ),),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                padding: EdgeInsets.only(left: 10,top: 10),
                                child: Image.asset('assets/verified-profile.png'),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text("Email Verification",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,),
                                    child: Text("Open your email and check it for \n your varification",
                                      style:TextStyle(
                                          fontSize: 8
                                      ),),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1,),
                Container(
                  height: 100,
                  child: Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 5),
                                child: Text("Bot Alert",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo
                                  ),),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                padding: EdgeInsets.only(left: 10,top: 10),
                                child: Image.asset('assets/email.png'),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text("Email Verification",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,),
                                    child: Text("Open your email and check it for \n your varification",
                                      style:TextStyle(
                                          fontSize: 8
                                      ),),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 1,),
                Container(
                  height: 100,
                  child: Card(
                    color: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5,top: 5),
                                child: Text("Bot Alert",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.indigo
                                  ),),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                padding: EdgeInsets.only(left: 10,top: 10),
                                child: Image.asset('assets/gmail.png'),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Text("Email Verification",
                                      style: TextStyle(
                                          fontSize: 8,
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,),
                                    child: Text("Open your email and check it for \n your varification",
                                      style:TextStyle(
                                          fontSize: 8
                                      ),),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],

                      ),
                    ),
                  ),
                ),
              ]
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );

        });
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            FractionallySizedBox(
              widthFactor: 1.0,
              heightFactor: 0.8,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.indigo
                ),

                child:Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 12),
                            child:
                            GestureDetector(
                              onTap: _pickImage,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: _selectedImage != null
                                    ? ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.file(
                                    _selectedImage!,
                                    fit: BoxFit.cover,
                                    width: 50,
                                    height: 50,
                                  ),
                                )
                                    : Icon(
                                  Icons.add_a_photo,
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                          ),
                          Text
                            ('Welcome',
                            style: TextStyle
                              (
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: GestureDetector(
                              onTap: ()=>_showNotificationPopup(context),
                              child: Icon(Icons.notifications,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 12),
                            child: Row(
                              children: [
                                Text('042345-900',
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white

                                  ),),
                                Container(
                                  height: 30,width: 30,
                                    margin: EdgeInsets.only(left: 150,top: 10),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9)
                                    ),
                                    child: Icon(Icons.compare_arrows,size: 30,))
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text("Police Number",
                                style: TextStyle(
                                  color: Colors.white,
                                ),),
                              )
                            ],
                          ),
                        ],
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 60, left: 10, right: 10),
                        child: Container(
                          //height: 6,
                          //margin: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              for (int i = 0; i < 50; i++) // Adjust count based on your screen width
                                Expanded(
                                  child: Container(
                                    height: 1, // Dashed line thickness
                                    margin: EdgeInsets.only(right: 2), // Space between dashes
                                    color: Colors.white,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10,top: 5)),
                            Text("\$$y                            \$$x     ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text("${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16
                              ),),
                            )
                          ],
                        ),
                      ),

                      Container(
                        height: 40,
                        width: 300,
                        margin: EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade900,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child:Row
                          (
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10,top: 0),
                              child: GestureDetector(
                                onTap: ()=>_showTerms(context),
                                child: Text("Terms",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10,top: 0),
                              child: GestureDetector(
                                onTap: ()=>_showPolicies(context),
                                child: Text("Policies",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350),
              child: FractionallySizedBox(
                widthFactor: 1.0,
                heightFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)
                      ),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[
                            Column(
                              children: [
                                Stack(
                                  children:
                                  [
                                    Container(
                                      height: 70,
                                      width: 70,
                                      //margin: EdgeInsets.only(left: 16),
                                      child: Image.asset('assets/super-car.png'),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        //margin: EdgeInsets.only(left: 16),
                                        child: Text('Sport Car'),
                                      ),
                                    )
                                  ]
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Stack(
                                    children:
                                    [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.only(left: 25,top: 6),
                                        child: Image.asset('assets/hospital.png'),
                                      ),

                                        Container(
                                          margin: EdgeInsets.only(left: 24,top: 49),
                                          child: Text('Hospital'),
                                        ),

                                    ]
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Stack(
                                    children:
                                    [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.only(left: 46,top: 6),
                                        child: Image.asset('assets/strength-training.png'),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(left: 25,top: 49),
                                        child: Text('Gym & Sport'),
                                      ),

                                    ]
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Stack(
                                    children:
                                    [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        margin: EdgeInsets.only(left: 25,top: 6),
                                        child: Image.asset('assets/resort.png'),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(left: 25,top: 49),
                                        child: Text('Hotel'),
                                      ),

                                    ]
                                )
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: SizedBox(
                            width: 400,
                            height: 150,
                            child: Card(
                              elevation: 6,
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10,top: 10),
                                          child: Text("Bot Alert",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.indigo
                                          ),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 230,top: 10),
                                          child: GestureDetector(
                                            onTap: ()=> _seeAll(context),
                                          child: Text("See all",
                                          style:TextStyle(
                                            color: Colors.indigo,
                                          ),
                                          ),)
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 70,
                                          width: 70,
                                          padding: EdgeInsets.only(left: 10,top: 10),
                                          child: Image.asset('assets/verified-profile.png'),
                                        ),

                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10,top: 10),
                                              child: Text("Email Verification",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10,),
                                              child: Text("Open your email and check it for \n your varification",
                                              style:TextStyle(
                                                fontSize: 12
                                              ),),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],

                                ),
                              ),


                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            )

          ],
        ),
      ),
    );
  }

}
