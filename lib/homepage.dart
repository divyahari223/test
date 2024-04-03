import 'package:ex_am/detail.dart';
import 'package:ex_am/main.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  final List<String> image = [
    "assets/grapes.png",
    "assets/watermelon.png",
    "assets/broccoli.png",
    "assets/strawberry.png",
    "assets/capsicum.png",
    "assets/lychee.png"
  ];
  final List<String> names = [
    "Grapes",
    "Watermelon",
    "Broccoli",
    "Starwberry",
    "Capsicum",
    "Lychee"
  ];
  final List<String> price = [
    "Price:20",
    "Price:40",
    "Price:68",
    "Price:89",
    "Price:45",
    "Price:67"
  ];
  final List<Color> colors = [
    const Color.fromARGB(255, 75, 2, 26),
    const Color.fromARGB(255, 107, 233, 111),
    const Color.fromARGB(255, 83, 123, 155),
    const Color.fromARGB(255, 195, 109, 210),
    const Color.fromARGB(255, 165, 65, 58),
    Color.fromARGB(255, 5, 180, 203)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/person.png'),
        ),
        title: Text(
          "Hi,Arjun",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Log out'),
                      content: Text('Are you want to exit this app?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => first()));
                          },
                          child: Text('OK'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Close the dialog
                            Navigator.of(context).pop();
                          },
                          child: Text('CANCEL'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Icon(Icons.logout_outlined)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Text(
              "Explore Fruits and Berries",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 25,
                    mainAxisSpacing: 25,
                    childAspectRatio: 0.9),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onDoubleTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => detail())));
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: colors[index]),
                      child: Column(
                        children: [
                          Image.asset(image[index],height: 100,width: 100,),
                          
                          Text(names[index],style:TextStyle(color: Colors.white),),
                          Text(price[index],style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
