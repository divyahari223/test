import 'package:flutter/material.dart';
class detail extends StatefulWidget {
  const detail({super.key});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.pink[400],
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: SingleChildScrollView(
        
          
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.pink[400],borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))),
                child: Center(child: Image.asset('assets/lychee.png')),
              ),
              Container(decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
                height: 300,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Lychee",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        
                      SizedBox(width: 100,),
                      Text("price:45",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        ],
                      ),
                      SizedBox(height:20),
                      Row(
                        children: [
                          Text("1 each* 12 nos "),
                        
                      
                      Text("- 1 +"),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("About Lychee",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 20,),
                      Text("Lychee is the sole member of the genius Litchi in the strawberry family.it is so delicious and nutritious.when consuming in a daily basis we can maintain our youthfull look why because it contains so many antioxidents",maxLines: 7,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        
        
      ),
    );
  }
}