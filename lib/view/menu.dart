import 'package:chef2/service/service.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              width: 327,
              height: 42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.orange),
              child: Center(
                child: Text(
                  "Add Meal",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      FutureBuilder(
          future: getMyMeals(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Expanded(
                child: ListView.builder(
                    itemCount: snapshot.data!.meals.length,
                    itemBuilder: (context, index) {
                      print(snapshot.data!.meals[index].images[0]);
                      return ListTile(
                          leading: Image.network(
                            snapshot.data!.meals[index].images[0],
                            width: 48,
                            height: 48,
                            errorBuilder: (context, error, stackTrace) {
                              return FlutterLogo();
                            },
                          ),
                          title: Text(
                            snapshot.data!.meals[index].name,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          subtitle: Column(
                            children: [
                              Text(
                                snapshot.data!.meals[index].category,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffc4c4c4)),
                              ),
                              Row(
                                children: [
                                  Text(
                                      snapshot.data!.meals[index].price
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffc4c4c4))),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text("LE",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xffc4c4c4)))
                                ],
                              )
                            ],
                          ),
                          trailing: Image.asset(
                            "images/image 46.jpg",
                            width: 48,
                            height: 48,
                          ));
                    }),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    ])));
  }
}
