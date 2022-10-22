import 'package:first_project/screen/log_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({Key? key}) : super(key: key);

  Widget size20Image(String url) {
    return Container(
      padding: EdgeInsets.all(8), // Border width
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: Size.fromRadius(20), // Image radius
          child: Image.network(url, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget size30Image(String url) {
    return Container(
      padding: EdgeInsets.all(8), // Border width
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: Size.fromRadius(30), // Image radius
          child: Image.network(url, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget size40Image(String url) {
    return Container(
      padding: EdgeInsets.all(8), // Border width
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: Size.fromRadius(40), // Image radius
          child: Image.network(url, fit: BoxFit.cover),
        ),
      ),
    );
  }

  Widget size70Image(String url) {
    return Container(
      padding: EdgeInsets.all(8), // Border width
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      child: ClipOval(
        child: SizedBox.fromSize(
          size: Size.fromRadius(70), // Image radius
          child: Image.network(url, fit: BoxFit.cover),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              //Pictures
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  size20Image(
                      'https://img.freepik.com/free-photo/chicken-wings-barbecue-sweetly-sour-sauce-picnic-summer-menu-tasty-food-top-view-flat-lay_2829-6471.jpg?w=2000'),
                  SizedBox(
                    width: 40,
                  ),
                  size40Image(
                      'https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  size40Image(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr0pBKhy3S3Ad_JS7sUDuUWrPOqMpJk-nFSA&usqp=CAU'),
                  size70Image(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO8HOYYpfX5sGSFXj4HoTAkNQ0UVWbsDr0fg&usqp=CAU'),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      size20Image(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwiJKdmEINt2uj2itYK4ODazvoAxaSFh1K_w&usqp=CAU'),
                      SizedBox(
                        height: 20,
                      ),
                      size30Image(
                          'https://image.shutterstock.com/image-photo/chicken-fillet-salad-healthy-food-260nw-1721943142.jpg'),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  size20Image(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxSUWF8luBWxO29pIt58Rl-mdjmgFURwdidQ&usqp=CAU'),
                  SizedBox(
                    width: 30,
                  ),
                  size30Image(
                      'https://media.istockphoto.com/photos/delicious-meal-on-a-black-plate-top-view-copy-space-picture-id1165399909?k=20&m=1165399909&s=612x612&w=0&h=5g5C4BDoxaejlIr4r_8cV6jDYXzN8n1-JkIW3LgPUuA='),
                ],
              ),

              SizedBox(height: 10),

              //Start Cooking textfield
              Text(
                'Start Cooking',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Text(
                'Let`s join our community',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 3,
              ),

              Text(
                'to cook better food!',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 24,
              ),

              //Get Started button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green[600],
                      onPrimary: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(32))),
                      minimumSize: Size(400, 40),
                      padding: EdgeInsets.all(19),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
