import 'package:ex_am/create.dart';
import 'package:ex_am/detail.dart';
import 'package:ex_am/homepage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: first(),
    );
  }
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
  Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         
          children: [
          Image.asset('assets/orange.jpg'),
          Text("Login",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          SizedBox(height: size.height*0.02),
          TextField(decoration: InputDecoration(hintText: "Email",border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(Icons.email),
          fillColor: Colors.grey[300],
          filled: true,
          ),
          ),
           SizedBox(height: 20,),
          TextField(decoration: InputDecoration(hintText: "Password",border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(Icons.lock),
          suffixText: "Check",
          suffixStyle: TextStyle(color: Colors.green),
          fillColor: Colors.grey[300],
          filled: true,
          ),
          ),
          SizedBox(height: size.height*0.05),
          Padding(
            padding: const EdgeInsets.only(left: 190),
            child: SizedBox(
              width: size.width*0.35,
              child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.orange),onPressed:  (){
                Navigator.push(context, MaterialPageRoute(builder: ((context) => create())));
              }, child: Row(
                children: [
                  Text("Sign In",style: TextStyle(color: Colors.white),),
                  Icon(Icons.arrow_forward_outlined,color: Colors.white,),
                  
                ],
              )),
            ),
          ),
          SizedBox(height: 60,),
           Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",style: TextStyle(color: Colors.grey[300],fontSize: 15),),
                    TextButton(onPressed: (){}, child: Text("Log in",style: TextStyle(fontSize: 15),))
                  ],
                ),
          ],
        ),
        ),
      ),
    );
  }
}