import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsRecipePage extends StatelessWidget {
  const DetailsRecipePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //App bar
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white38,
                  ),

                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: Divider(
                      height: 20,
                      thickness: 5,
                      indent: 170,
                      endIndent: 170,
                      color: Colors.black45),
                ),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
            ),
            pinned: true,
            expandedHeight: 500,
            backgroundColor: Colors.green,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8&auto=format&fit=crop&w=600&q=60',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //drawer
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Name part
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Cacao Maca Walnut Milk',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Food  •  60 mins',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: CircleAvatar(
                                  radius: 18,
                                  child: ClipOval(
                                    child: Image.network(
                                      'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVvcGxlJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
                                      fit: BoxFit.cover,
                                      width: 120,
                                      height: 120,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Elena Shelby',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green,
                                ),
                                padding: EdgeInsets.all(8),
                                child: Icon(
                                  Icons.heart_broken,
                                  color: Colors.white60,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                '273 Likes',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Divider(
                        height: 5,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black45),
                  ),

                  //Description part
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile.Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile.Your recipe has been uploaded, you can it on your profile.Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile.Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile.Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile.Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile.Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile. Your recipe has been uploaded, you can it on your profile.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Divider(
                        height: 5,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.black45),
                  ),

                  //Ingredients part
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green[100],
                          ),
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          '4 Eggs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green[100],
                          ),
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          '1/2 Butter',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green[100],
                          ),
                          padding: EdgeInsets.all(4),
                          child: Icon(
                            Icons.done,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          '1/2 Butter',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
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
