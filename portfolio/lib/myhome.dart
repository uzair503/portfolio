import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class myhome extends StatelessWidget {
  var size, height, width;
   myhome({super.key});

  @override
  Widget build(BuildContext context) {
     size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("My Portfolio",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200)
              ),
              height: 150,
              width: 150,
              child: Image.asset("cv.jpg",fit: BoxFit.cover,),
            ),
            SizedBox(height: 20,),

            Center(
              child: Text("Name",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[100],fontSize: 18,decoration: TextDecoration.underline),),
            ),
            SizedBox(height: 10,),
             Center(
              child: Text("Muhammad Uzair",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("Phone",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[100],fontSize: 18,decoration: TextDecoration.underline),),
            ),
              SizedBox(height: 10,),
             Center(
              child: Text("03313277552",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
            ),
            SizedBox(height: 20,),
               Center(
              child: Text("E-mail",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[100],fontSize: 18,decoration: TextDecoration.underline),),
            ),
              SizedBox(height: 10,),
             Center(
              child: Text("uzair2203@aptechgdn.net",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text("Expertise",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[100],fontSize: 18,decoration: TextDecoration.underline),),
            ),
              SizedBox(height: 10,),
            Center(
              child: Text("Flutter Developer",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
            ),
            SizedBox(height: 20,),
             Center(
              child: Text("Social Media",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[100],fontSize: 18,decoration: TextDecoration.underline),),
            ),
              SizedBox(height: 10,),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  fixedSize: Size(250, 35),
                ),
        onPressed: () {
          _launchURL;
        },
        icon: Image.asset("Git.png",width: 30,),
        label: Text('Github/ uzair503',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),), 
      ),
            ),
              SizedBox(height: 10,),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  fixedSize: Size(270, 35),
                ),
        onPressed: () {},
        icon: Image.asset("link.jpg",width: 30,),
        label: Text('Linkedin/ Uzair Hussain',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),), 
      ),
            ),
            SizedBox(height: 20,),
              Center(
              child: Text("Projects",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[100],fontSize: 18,decoration: TextDecoration.underline),),
            ),
              SizedBox(height: 10,),
             Center(
              child: Text("All the projects are uploaded on Github",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
            ),
            SizedBox(height: 20,),
              Center(
              child: Text("Resume",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey[100],fontSize: 18,decoration: TextDecoration.underline),),
            ),
              SizedBox(height: 10,),
            Container(
              height: 500,
              width: width / 1,
              child: Image.asset("resume.jpeg"),
            )
            
          ],
        ),
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://github.com/uzair503';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw Center(
      child: CircularProgressIndicator(),
    );
}
}