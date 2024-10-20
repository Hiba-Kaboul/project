import 'package:chef2/view/log_in_page.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Center(
      child: Scaffold(
          body: Container(
        width: 500,
        height: 1000,
        color: Colors.orange,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Center(child: Image.asset("images/image 47.jpg")),
          ),
          InkWell(
            child: Text(
            
              
              "Chef App",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
              
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LogInPage()));
            },
          )
        ]),
      
      )),
    );
    
  }
}
