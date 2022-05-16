// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:ecom_app/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int count = 4;
  String type = 'Wearables';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 9.h,
        backgroundColor: Colors.grey[200],
        foregroundColor: Colors.black,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () => {
              Navigator.pop(context),
            },
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
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Found $count results',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Expanded(
                  child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1 / 1.5,
                  mainAxisSpacing: 6.h,
                ),
                padding: const EdgeInsets.fromLTRB(2, 40, 10, 10),
                children: (type == 'Wearables')
                    ? [
                        InkWell(
                          onTap: () {},
                          child: item('Apple Watch', 'Apple Watch', '\$359',
                              'asset/1.png'),
                        ),
                        InkWell(
                          onTap: () {},
                          child: item('Samsung Fit 2', 'Samsung Fit 2 band',
                              '\$559', 'asset/2.jpeg'),
                        ),
                        InkWell(
                          onTap: () {},
                          child: item(
                              'Apple 3', 'Apple Watch 3', '\$459', 'asset/3.jpg'),
                        ),
                        InkWell(
                          onTap: () {},
                          child: item('Haylou Watch', 'Haylou Smart Watch',
                              '\$659', 'asset/4.jpg'),
                        ),
                      ]
                    : (type == 'Laptops')
                        ? [
                            InkWell(
                              onTap: () {},
                              child: item(
                                  'Dell Inspiron 14',
                                  'Dell Inspiron 14 5410 x360',
                                  '\$940.70',
                                  'asset/dell.png'),
                            ),
                            InkWell(
                              onTap: () {},
                              child: item(
                                  'Chromebook 4',
                                  'Reflective Display TPM',
                                  '\$215.63',
                                  'asset/samsung.jpg'),
                            ),
                            InkWell(
                              onTap: () {},
                              child: item(
                                  'Lenovo ThinkPad',
                                  'Lenovo ThinkPad X1 Yoga',
                                  '\$1616.71',
                                  'asset/lenovo.png'),
                            ),
                            InkWell(
                              onTap: () {},
                              child: item('HP Envy x360', 'HP Envy x360 13m',
                                  '\$781.13', 'asset/hp.jpg'),
                            ),
                          ]
                        : (type == 'Phones')
                            ? [
                                InkWell(
                                  onTap: () {},
                                  child: item('Apple Watch', 'Apple Watch',
                                      '\$359', 'asset/1.png'),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: item(
                                      'Samsung Fit 2',
                                      'Samsung Fit 2 band',
                                      '\$559',
                                      'asset/2.jpeg'),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: item('Apple 3', 'Apple Watch 3', '\$459',
                                      'asset/3.jpg'),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: item(
                                      'Haylou Watch',
                                      'Haylou Smart Watch',
                                      '\$659',
                                      'asset/4.jpg'),
                                ),
                              ]
                            : [
                                InkWell(
                                  onTap: () {},
                                  child: item('Apple Watch', 'Apple Watch',
                                      '\$359', 'asset/1.png'),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: item(
                                      'Samsung Fit 2',
                                      'Samsung Fit 2 band',
                                      '\$559',
                                      'asset/2.jpeg'),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: item('Apple 3', 'Apple Watch 3', '\$459',
                                      'asset/3.jpg'),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: item(
                                      'Haylou Watch',
                                      'Haylou Smart Watch',
                                      '\$659',
                                      'asset/4.jpg'),
                                ),
                              ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Container item(
      String name, String description, String price, String productImg) {
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
            left: 4.w,
            child: SizedBox(
              width: 100.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 8.h,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(productImg),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
