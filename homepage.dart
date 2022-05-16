// ignore_for_file: prefer_const_constructors

import 'package:ecom_app/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  List<bool> pressed = [true, false, false, false];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: Text('Click me !'),
                )
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 9.h,
        backgroundColor: Colors.grey[100],
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Builder(
        builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: TextField(
          cursorColor: Colors.green,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: Colors.green, width: 2.0),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            hintText: ' Search',
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(25),
          color: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Order online collect in store',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2.0,
                            color:
                                pressed[0] ? Colors.green : Colors.transparent,
                          ),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            pressed[0] = true;
                            pressed[1] = false;
                            pressed[2] = false;
                            pressed[3] = false;
                          });
                        },
                        child: Text(
                          'Wearable',
                          style: TextStyle(
                              fontSize: 17.sp,
                              color: pressed[0] ? Colors.green : Colors.grey),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2.0,
                            color:
                                pressed[1] ? Colors.green : Colors.transparent,
                          ),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            pressed[0] = false;
                            pressed[1] = true;
                            pressed[2] = false;
                            pressed[3] = false;
                          });
                        },
                        child: Text(
                          'Laptops',
                          style: TextStyle(
                            color: pressed[1] ? Colors.green : Colors.grey,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2.0,
                            color:
                                pressed[2] ? Colors.green : Colors.transparent,
                          ),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            pressed[0] = false;
                            pressed[1] = false;
                            pressed[2] = true;
                            pressed[3] = false;
                          });
                        },
                        child: Text(
                          'Phones',
                          style: TextStyle(
                            color: pressed[2] ? Colors.green : Colors.grey,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2.0,
                            color:
                                pressed[3] ? Colors.green : Colors.transparent,
                          ),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            pressed[0] = false;
                            pressed[1] = false;
                            pressed[2] = false;
                            pressed[3] = true;
                          });
                        },
                        child: Text(
                          'Drones',
                          style: TextStyle(
                            color: pressed[3] ? Colors.green : Colors.grey,
                            fontSize: 17.sp,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 30.h,
                child: ListView(
                  clipBehavior: Clip.none,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    item(
                        name: 'Apple Watch',
                        description: 'Apple Watch',
                        price: '\$359',
                        productImg: 'asset/1.png'),
                    item(
                        name: 'Samsung Fit 2',
                        description: 'Samsung Fit 2 band',
                        price: '\$559',
                        productImg: 'asset/2.jpeg'),
                    item(
                        name: 'Apple 3',
                        description: 'Apple Watch 3',
                        price: '\$459',
                        productImg: 'asset/3.jpg'),
                    item(
                        name: 'Haylou Watch',
                        description: 'Haylou Smart Watch',
                        price: '\$659',
                        productImg: 'asset/4.jpg'),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text(
                      'see more...',
                      style: TextStyle(color: Colors.green),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green[600],
        backgroundColor: Colors.grey[50],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  Container item(
      {String name = '',
      String description = '',
      String price = '',
      String productImg = ''}) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 30.h,
      width: 52.w,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0),
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 120,
                bottom: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    name,
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -6.h,
            left: 6.5.w,
            child: CircleAvatar(
              radius: 9.h,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(productImg),
            ),
          ),
        ],
      ),
    );
  }
}
