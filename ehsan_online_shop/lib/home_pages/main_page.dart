
import 'package:ehsan_online_shop/home_pages/home_body_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
              Container(
              child: Container(
                margin: EdgeInsets.only(top: 45, bottom: 20),
                padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Bangladesh",
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blueGrey)
                        ),
                        Row(
                          children: [
                            Text("Dhaka", style: TextStyle(fontSize: 18, color: Colors.black54)),
                              Icon(Icons.arrow_drop_down_rounded),
                          ],
                        ),
                      ],
                    ),
                    Center(
                      child: Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(5.0),
                        child: Icon(Icons.search, color: Colors.white, size:26),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blueGrey,
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ),
             HomeBodyPage(),
          ],
        )
    );
  }
}
