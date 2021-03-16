import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class SuperLikesMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Center(
              child: Text(
                "SELECT",
                style: TextStyle(color: Colors.deepOrange),
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 6, bottom: 16),
            child: Text(
              "Super Liked Me",
              style: headingTextStyle.copyWith(color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Friends",
                    hintStyle: subTitleStyle.copyWith(color: hintTextColor)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  "Super likes",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Center(
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
                Spacer(),
                Text("1h",style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
                return GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.symmetric(horizontal: 16,vertical: 12),
                    child: ListTile(
                      title: Text("Anne",style: titleStyle,),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            color: Colors.black,
                            size: 20.0,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "1A 1/1 Colombo",
                            style: whiteSubHeadingTextStyle.copyWith(color: Colors.black,fontSize: 14),
                          ),
                        ],
                      ),
                      leading: ClipOval(
                        child: Image.asset(
                          "assets/images/user.jpg",
                          fit: BoxFit.fitWidth,
                          width: 50,
                          height: 50,
                        ),
                      ),
                      trailing: SizedBox(
                        width: 75.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.circle,color: Colors.green,size: 14,),
                                SizedBox(width: 5,),
                                Text("ONLINE",style: TextStyle(fontSize: 14,color: Colors.green),),
                              ],
                            ),
                            Icon(Icons.star,color: Colors.blue,size: 22,)
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
