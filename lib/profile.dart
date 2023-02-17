import 'package:ditto/edit_Profile.dart';
import 'package:ditto/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  int _profileSegmentationValue = 0;
  final Map<int,Widget> _profileTabs = <int,Widget>{
    0: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child:Text("Posts", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white70),)),
    1: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child:Text("Replies", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white70),)),
    2: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child:Text("Likes", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: Colors.white70))),
  };

  Widget BuildprofileWidget(){
    switch(_profileSegmentationValue){
      case 0:
        return const Center(child: Text("Posts", style: TextStyle(fontSize: 25)));
        break;
      case 1:
        return const Center(child: Text("Replies", style: TextStyle(fontSize: 25),),);
        break;
      case 2:
        return const Center(child: Text("Likes", style: TextStyle(fontSize: 25),),);
        break;
      default:
        return const Center(child: Text("Something Wrong", style: TextStyle(fontSize: 25),),);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Container(
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.blue
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 28),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox.shrink(),
                  PopupMenuButton(
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white70,
                      size : 30
                    ),
                      itemBuilder: (_){
                      return <PopupMenuItem<String>>[
                        PopupMenuItem(value: "Logout",child: InkWell(child: Text("Logout"), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));},),)
                      ];
                      }
                      )
                ],
               ),
              const SizedBox(height: 80,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  transform: Matrix4.translationValues(0.0, -56.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                         const CircleAvatar(
                            radius: 45,
                            backgroundImage: AssetImage(".jpg"),
                          ),
                          Container(
                            width: 100,
                            height: 35,
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70,
                              border: Border.all(color: Colors.blue)
                            ),
                            child: Center(
                              child: InkWell(
                                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile()));},
                                child: const Text(
                                  "Edit", style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Text("Ibtisam Ali", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Row(
                        children: const [
                          Text("0 Following", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 2),),
                          SizedBox(width: 20,),
                          Text("0 Followers", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 2),)
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: CupertinoSlidingSegmentedControl(
                          groupValue: _profileSegmentationValue,
                          thumbColor: Colors.grey,
                          backgroundColor: Colors.black,
                          onValueChanged: (changeTab){
                            setState(() {
                              _profileSegmentationValue =changeTab!;
                            });
                          },
                          children: _profileTabs,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              BuildprofileWidget(),
            ],
          ),
        ),
       ),
       );
    }
  }

