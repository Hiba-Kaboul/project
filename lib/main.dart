import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

PageController controller = PageController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            children: [FirstPage(), SecondPage(), ThirdPage()],
          ),
        ));
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/cc.jpg"),
            )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Text(
                    "Good Coffee\nGood friends\nlets it blends",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                Text(
                  "The best grain ,the finest roast ,\n     the most powerful flavor .",
                  style: TextStyle(fontSize: 9, color: Colors.white),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 23, height: 4, color: Colors.brown),
                    SizedBox(width: 2),
                    Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white)),
                    SizedBox(width: 2),
                    Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  InkWell(
                    onTap: () {
                      controller.nextPage(
                          duration: Duration(seconds: 2),
                          curve: Curves.bounceIn);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Colors.brown,
                      ),
                      width: 260,
                      height: 64,
                      child: Center(
                          child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                  ),
                ]),
              ],
            )),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 60, left: 20),
                    child: CircleAvatar(
                      child: Image.asset('images/Profile.jpg'),
                    ),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.brown,
                    size: 20,
                  ),
                  Text(
                    "Bintara, Bekasi",
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black87,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(width: 60),
                  Badge(
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.notifications,
                      color: Colors.black45,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 80, left: 10),
                  child: Text(
                    "Good morning, Dityo",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(200))),
              child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.menu),
                      fillColor: Colors.white70,
                      filled: true,
                      border: OutlineInputBorder(),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)))),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            color: Colors.brown,
                            width: 100,
                            height: 30,
                            child: Row(children: [
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/12482/12482652.png",
                                alignment: Alignment.topLeft,
                                color: Colors.white,
                                width: 15,
                                height: 15,
                              ),
                              Text(
                                "Cappuccino",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ]))
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/128/2316/2316864.png",
                            alignment: Alignment.topLeft,
                            color: Colors.black,
                            width: 15,
                            height: 15,
                          ),
                        ),
                        Text(
                          "Cold Brew",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/128/2391/2391718.png",
                            alignment: Alignment.topLeft,
                            color: Colors.black,
                            width: 15,
                            height: 15,
                          ),
                        ),
                        Text(
                          " Expresso",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: const Color.fromARGB(213, 242, 228, 228),
                  ),
                  width: 200,
                  height: 220,
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('images/photocupp.jpg'),
                          )),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 120, bottom: 80),
                                child: Container(
                                  width: 40,
                                  height: 18,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.brown),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "4.9",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Column(children: [
                        Text(
                          "Cappuccino",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 5),
                              child: Text(
                                "with chocolate",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            ),
                            //   SizedBox(width: 25,),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Icon(
                                Icons.add_circle,
                                size: 45,
                                color: Colors.brown,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            "50 k",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: const Color.fromARGB(213, 242, 228, 228),
                  ),
                  width: 200,
                  height: 220,
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('images/Rectangle.jpg'),
                          )),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 120, bottom: 80),
                                child: Container(
                                  width: 40,
                                  height: 18,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      color: Colors.brown),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "4.7",
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Column(children: [
                        Text(
                          "Cappuccino",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 40, right: 5),
                              child: Text(
                                "with Low Fat Milk",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.w500),
                              ),
                            ),
                            //   SizedBox(width: 25,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Icon(
                                Icons.add_circle,
                                size: 45,
                                color: Colors.brown,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70),
                          child: Text(
                            "45 k",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 4,
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "Special Offer",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
                Icon(
                  Icons.local_fire_department,
                  color: Colors.orange,
                  size: 30,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                color: const Color.fromARGB(192, 255, 255, 255),
                child: Row(
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Image(image: AssetImage("images/cupp2.jpg")),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 120, top: 10),
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text("Limited",
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white)),
                                ),
                              ],
                            ),
                            width: 60,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.brown),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Buy 1 get 1 free \nif you buy with \nGopay",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        )),
        bottomNavigationBar: NavigationBar(height: 65, destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Colors.brown,
              ),
              label: "Home"),
          NavigationDestination(
            icon: Icon(
              Icons.favorite_outline,
              color: Colors.grey,
            ),
            label: "Favourite",
          ),
          NavigationDestination(
              icon: Icon(Icons.shopping_cart_checkout, color: Colors.grey),
              label: "Cart"),
          NavigationDestination(
              icon: Icon(Icons.account_circle, color: Colors.grey),
              label: "Profile")
        ]));
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/photocupp.jpg"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: ListTile(
                title: Text(
                  "Cappuccino",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.white),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 5, bottom: 50),
                  child: Text(
                    "With chocolate",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                ),
                trailing: Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: const Color.fromARGB(255, 151, 83, 58)),
                    child: Center(
                      child: Row(children: [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "4.9",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )
                      ]),
                    )),
              ),
            ),
          ),
        ),
        Container(
          width: 400,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: const Color.fromARGB(255, 243, 234, 234)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.coffee,
                  color: Colors.black,
                  size: 20,
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Coffee",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "|",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  "images/chocolate.jpg",
                  width: 30,
                  height: 30,
                ),
                Text("chocolate",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "|",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  width: 15,
                ),
                Text("Medium Roasted",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 300),
          child: Text(
            "Coffee Size",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Row(children: [
            Container(
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.brown),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Small",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: const Color.fromARGB(255, 232, 224, 224)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: Text(
                        "Medium",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: const Color.fromARGB(255, 232, 224, 224)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text(
                        "Large",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 300),
          child: Text(
            "About",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 55),
          child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Id\nipsum vivamus velit lorem amet. Tincidunt cras volutpat\naliquam porttitor molestie. Netus neque, habitasse id\nvulputate proin cras. Neque, vel duis sit vel pellentesque\ntempor. A commodo arcu tortor arcu, elit.",
              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600)),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            width: 280,
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.brown),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Text(
                    "Add to Cart        |      50 k",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                )
              ],
            ))
      ],
    ));
  }
}
