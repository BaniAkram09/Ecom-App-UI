// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:ecom_app/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NoResult extends StatefulWidget {
  @override
  State<NoResult> createState() => _NoResultState();
}

class _NoResultState extends State<NoResult> {
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
          padding: EdgeInsets.only(top: 10.h),
          color: Colors.grey[200],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 25.h,
                width: double.infinity,
                child: Image(
                  image: AssetImage('asset/item.png'),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        'Item Not Found',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        'Try a more generic search item or try looking for alternative products.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
