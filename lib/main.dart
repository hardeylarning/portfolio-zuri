import 'package:flutter/material.dart';

void main() {
  runApp(MyPortFolio());
}

class MyPortFolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Portfolio",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: SafeArea(
            child: Container(
          color: Colors.white70,
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                margin: EdgeInsets.only(
                  bottom: 25,
                  top: 10,
                ),
                child: CircleAvatar(
                  radius: 35.0,
                  backgroundImage: AssetImage(
                    "images/roqeeb.jpg",
                  ),
                ),
              ),
              info(
                iconData: Icons.person,
                label: " Name: ",
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                details: "Roqeeb Adelani Musibawu,",
              ),
              divider(),
              info(
                iconData: Icons.mail,
                label: " Email: ",
                textStyle: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                details: "hardeylarning@gmail.com",
              ),
              divider(),
              info(
                iconData: Icons.contact_phone,
                label: " Mobile: ",
                textStyle: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                details: "+2348069380966",
              ),
              divider(),
              info(
                iconData: Icons.add_location,
                label: " Location: ",
                textStyle: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                details: "Osogbo, Osun State, Nigeria",
              ),
              divider(),
              info(
                iconData: Icons.book,
                label: " Education: ",
                textStyle: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                details: "Bsc. Computer Science",
              ),
              divider(),
              info(
                iconData: Icons.star,
                label: " Religious: ",
                textStyle: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                details: "Islam",
              ),
              divider(),
              info(
                iconData: Icons.airplay,
                label: " Skills: ",
                textStyle: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
                details: "Software Development | Programming",
              ),
              divider(),
              info(
                iconData: Icons.details,
                label: " Interest: ",
                textStyle: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
                details: "Coding | Playing | Reading | Watching ",
              ),
              divider(),
              info(
                iconData: Icons.search,
                label: " LinkedIn: ",
                textStyle: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
                details: "linkedin.com/in/roqeeb-musibawu-23372a148",
              ),
              divider(),
              info(
                iconData: Icons.info,
                label: " Github: ",
                textStyle: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
                details: "github.com/hardeylarning",
              ),
              divider(),
              info(
                iconData: Icons.info_outline,
                label: " Twitter: ",
                textStyle: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
                details: "twitter.com/hardeylarning",
              ),
              divider(),
            ],
          ),
        )),
      ),
    );
  }

  // details function to avoid repetition
  Widget info({
    IconData iconData,
    String label,
    String details,
    TextStyle textStyle,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  iconData,
                  size: 21,
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Text(
            details,
            style: textStyle,
          ),
        ],
      ),
    );
  }

  //divider
  Widget divider() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 2,
      ),
      child: Divider(
        thickness: 1.0,
        color: Colors.black,
      ),
    );
  }
}
