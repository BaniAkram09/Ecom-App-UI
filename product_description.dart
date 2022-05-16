// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names
import 'package:ecom_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductDescription extends StatefulWidget {
  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  int current = 0;

  bool a = false;

  bool b = false;

  bool c = false;

  final CarouselController controller = CarouselController();
  final List<String> imgList = [
    'asset/a1.jpg',
    'asset/a2.jpg',
    'asset/a3.jpg',
    'asset/a4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.blue, Colors.green],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.grey[200],
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CarouselSlider(
                carouselController: controller,
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      current = index;
                    });
                  },

                  //height: 20.h,
                  aspectRatio: 2 / 1,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                ),
                items: [
                  SliderImage(imgList[0]),
                  SliderImage(imgList[1]),
                  SliderImage(imgList[2]),
                  SliderImage(imgList[3]),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => controller.animateToPage(entry.key),
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(current == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 4.h, left: 8.w, right: 8.w),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '2020 Apple iPad Air 10.9"',
                      style: TextStyle(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Colors',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                a = true;
                                b = false;
                                c = false;
                              },
                              child: BorderedOutlinedButton(
                                color: Colors.blue,
                                colorName: 'Sky Blue',
                                isSelected: a,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                a = false;
                                b = true;
                                c = false;
                              },
                              child: BorderedOutlinedButton(
                                color: Colors.green,
                                colorName: 'Green',
                                isSelected: b,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                a = false;
                                b = false;
                                c = true;
                              },
                              child: BorderedOutlinedButton(
                                color: Colors.cyan,
                                colorName: 'Aqua',
                                isSelected: c,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Get Apple TV+ free for a year',
                              style: TextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                'Available when you purchase any new iPhone, iPad, iPod Touch, Mac or Apple TV, \$4.99/month after free trial.',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Full Description',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 17.sp,
                          ),
                        ),
                        Text(
                          '\$579',
                          style:
                              TextStyle(fontSize: 19.sp, color: Colors.green),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Homepage()),
                                  (Route<dynamic> route) => false,
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                primary: Colors.green[400],
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.w, vertical: 2.5.h),
                                textStyle: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: Text(
                                'Add to basket',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container SliderImage(String x) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage(x),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

class BorderedOutlinedButton extends StatelessWidget {
  const BorderedOutlinedButton({
    this.colorName = '',
    this.color = Colors.grey,
    this.isSelected = false,
  });
  final Color color;
  final String colorName;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          side: BorderSide(
            width: 1,
            color: isSelected ? Colors.green : Colors.grey,
          ),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 2.w,
            ),
            Container(
              height: 5.h,
              padding: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  colorName,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ));
  }
}
