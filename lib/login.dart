import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image:  NetworkImage('https://media.istockphoto.com/id/1212342896/vector/abstract-hexagon-wallpaper-white-background-3d-vector-illustration.jpg?s=170667a&w=0&k=20&c=kMIaYjtkjoLGAyq7BBLfz9SrJryy0uIGOrfmi6-ILEA='),

          fit: BoxFit.cover,
        ),
      ),


      child:  Scaffold(          //scaffold mein background image set nhi kar sakte
        // scaffold ka background color white hota hain
        backgroundColor: Colors.transparent,
        body: Stack(                            //column bhi use kar sakte hain
          children: [
            Container(
              padding: const EdgeInsets.only(left: 400, top:200 , right: 20),
              child: const Text( 'Welcome Back' , style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 33,
                fontStyle: FontStyle.italic,
        ),
              ),

      ),

            SingleChildScrollView(

              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.5 ,       //screen ke hisaab se adjust karne ke liye ab ye koi bhi screen ke half mein dikhega
                right: 35,
                left: 35
                ),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                        hintText: 'E-MAIL',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0)
                        )
                      ),
                    ),

                    const SizedBox(height: 50,
                    ),

                     TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'PASSWORD',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                      ),

                    const SizedBox(
                      height: 50,
                    ),


                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,   //isme ek ko signin ko left mein bilkul aur arrow ko right mein
                      children: [const Text('Sign in ',
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown


                      ),
                      ),



                        CircleAvatar(                //next button ke liye
                          radius: 30,               // jo sign in ke bagal mein hain

                          backgroundColor: Colors.blueGrey,
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
                            icon: const Icon(Icons.forward),


                          ),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 50,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.pushNamed(context, 'register');    //sign up pe dabane ke baad
                        }, child: const Text('Sign up' , style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 28,
                          color: Colors.blueGrey,
                          //textBaseline: TextBaseline.ideographic

                        )
                        )
                        ),

                        TextButton(onPressed: () {}, child: const Text('Forgot Password' , style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 24,
                          color: Colors.blueGrey,


                        ),
                        )
                        )

                      ],




                    )
            ],
                    ),
                    //const TextField(),
              )

                ),

              ],
            )
      )

    );





  }
}



