import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Container(
            margin: EdgeInsets.only(left: 12),
            child: Text(
              'Explore Collections',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 9),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.white38,
                    ),
                    borderRadius: BorderRadius.circular(18)),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white38,
                      size: 30,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(color: Colors.white38, fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 25),
                height: 50,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                          6,
                          (index) => Container(
                                margin: EdgeInsets.only(
                                  right: 12,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 8,
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Text(
                                  'Trending',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Trendy Collection',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'view all',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ...List.generate(
                        3,
                        (index) => Container(
                              margin: EdgeInsets.only(bottom: 30),
                              height: 350,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://pbs.twimg.com/media/FCF2JdtVEAEUmqh.png'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(60)),
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: EdgeInsets.only(left: 20),
                                margin: EdgeInsets.only(
                                    bottom: 30, left: 30, right: 30),
                                width: double.infinity,
                                height: 70,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(35)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Rainbow Devil',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '3.27 ETH',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: 70,
                                      margin: EdgeInsets.only(
                                          right: 5, top: 5, bottom: 5),
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 20),
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Icon(
                                        Icons.shopping_bag_outlined,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
