
import 'package:ditto/profile.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:50, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Edit Profile"),
                SizedBox(height: 20,),
                Text("Name:"),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 15,
                            ),borderRadius: BorderRadius.circular(50)
                        ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Username:"),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 15,
                          ),borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Picture url:"),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 15,
                          ),borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("about:"),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 15,
                          ),borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Banner url:"),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 15,
                          ),borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Bitcoin lightning address:"),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 15,
                          ),borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Nostr address(nip05):"),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 15,
                          ),borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.yellow),
                  padding: EdgeInsets.all(10),
                  child: InkWell(
                    child:  const Text(
                      "Save", style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                    ),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile()));},
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
