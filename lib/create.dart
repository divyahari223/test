import 'package:ex_am/homepage.dart';
import 'package:flutter/material.dart';
class create extends StatefulWidget {
  const create({super.key});

  @override
  State<create> createState() => _createState();
}

class _createState extends State<create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
          title:Text("Create Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          
      ),
       body: SingleChildScrollView(
         child: Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),
               child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
         
        
          TextField(decoration: InputDecoration(hintText: "Full Name",border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(Icons.person),
          fillColor: Colors.grey[300],
          filled: true,
          ),
          ),
           SizedBox(height: 20,),
          TextField(decoration: InputDecoration(hintText: "Email",border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(Icons.email),
          fillColor: Colors.grey[300],
          filled: true,
          ),
          ),
           SizedBox(height: 20,),
          TextField(decoration: InputDecoration(hintText: "Mobile number",border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(Icons.phone),
          fillColor: Colors.grey[300],
          filled: true,
          ),
          ),
           SizedBox(height: 20,),
          TextField(decoration: InputDecoration(hintText: "Password",border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(Icons.lock),
          fillColor: Colors.grey[300],
          filled: true,
          ),
          ),
           SizedBox(height: 20,),
          TextField(decoration: InputDecoration(hintText: "Confirm Password",border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(Icons.lock),
          fillColor: Colors.grey[300],
          filled: true,
          ),
          ),
          SizedBox(height: 50,),
          SizedBox(height: 50,width: 120,
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.orange),onPressed:  (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => homepage())));
                }, child: Row(
                  children: [
                    Text("Sign In",style: TextStyle(color: Colors.white),),
                    Icon(Icons.arrow_forward_outlined,color: Colors.white,),
                    
                  ],
                )),
               
              ],
            ),
          ),
          SizedBox(height: 60,),
           Row(
            
            mainAxisAlignment: MainAxisAlignment.end,
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