import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodTitle extends StatelessWidget {
  final String ImagePath;
  final String FoodImagePath;
  final String FoodName;
  final String UserName;

  FoodTitle(
      {required this.ImagePath,
      required this.FoodImagePath,
      required this.FoodName,
      required this.UserName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8),
        //color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        ImagePath,
                        fit: BoxFit.cover,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    UserName,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5,
            ),
            //Food image
            Stack(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      FoodImagePath,
                      fit: BoxFit.cover,
                      width: 151,
                      height: 151,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white38,
                      ),
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            //Food Name
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                FoodName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                'Food • >60 mins',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
