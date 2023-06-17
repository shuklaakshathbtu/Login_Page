import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {             //class ka name myregister hain
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        //color: Colors.black12,
        image: DecorationImage(
          image: NetworkImage('https://media.istockphoto.com/id/1212342896/vector/abstract-hexagon-wallpaper-white-background-3d-vector-illustration.jpg?s=170667a&w=0&k=20&c=kMIaYjtkjoLGAyq7BBLfz9SrJryy0uIGOrfmi6-ILEA='),
          fit: BoxFit.cover
        )
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 400 , top: 20, right: 30),
              child: const Text('Create Account' , style: TextStyle(
                color: Colors.indigoAccent,
                fontSize: 25,
                fontStyle: FontStyle.italic,
              )
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.5 ,
                  right: 35,
                  left: 35,
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                          borderSide: const BorderSide(
                              color: Colors.black
                          ),
                        ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.white)),
                          hintText: 'Name',
                        hintStyle: const TextStyle(
                          color: Colors.black
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),

                        )
                      ),
                    ),


                    const SizedBox(
                      height: 10,
                    ),


                    TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white),
                        ),



                        hintText: 'E-Mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),

                        )
                      ),
                    ),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,

                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                        )

                      ),
                    ),

                    const SizedBox(
                      height: 100,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text('Sign up',
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,

                            ),
                            ),







                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blueGrey,
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (){},
                              icon: const Icon(Icons.tiktok),
                            ),
                          ),


                       // CircleAvatar(
                         // radius: 30,
                          //backgroundColor: Colors.blueGrey,
                          //child: IconButton(
                            //  color: Colors.white,
                              //onPressed: () {},
                              //icon:  Icon(Icons.check),
                          //),
                        ],
                    ),

                     const SizedBox(
                      height: 30,
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.pushNamed(context, 'login');},

                          child: const Text('Sign In' , style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 28,
                            color: Colors.brown,


    ),)

                        )
                      ],
                    )
                    
                    

                      ],

                    )


                  ,

                )
                ),

            ]

        ),
        ),

    );
  }
}
