import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_ui_clone/models/data_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _heightOfScreen;
  double _widthOfScreen;
  @override
  Widget build(BuildContext context) {
    _widthOfScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: _buildAppBar,
      body: _buildBody,

    );
  }

  get _buildAppBar {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Color(0xFFEEEEEE),
      brightness: Brightness.light,
      centerTitle: true,
      title: Image.asset(
        'assets/images/logo.png',
        fit: BoxFit.cover,
        height: 50.0,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Feather.camera,
          color: Colors.black,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.tv,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Feather.send,
            color: Colors.black,
          ),
        )
      ],
    );
  }
  get _buildBody {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Divider(),
//            Container(
//              margin: EdgeInsets.symmetric(
//                horizontal: 20.0,
//              ),
//              child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Text(
//                    "Stories",
//                    style: TextStyle(fontSize: 14),
//                  ),
//                  Text(
//                    "Watch All",
//                    style: TextStyle(fontSize: 14),
//                  ),
//                ],
//              ),
//            ),
            _buildStory,
            _buildPost,
          ],
        ),
      ),
    );
  }

  get _buildStory{
    return Container(
        width: _widthOfScreen,
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: stories.map((story) {
            return Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    border: Border.all(
                      width: 3,
                      color: Color(0xFF8E44AD),
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(3,),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60.0),
                      child: Image(
                        image: NetworkImage(story.image),
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
//                Positioned(
//                  top: 10.0,
//                  right: 10.0,
//                  child: CircleAvatar(
//                    backgroundColor: Colors.blue,
//                    radius: 10.0,
//                    child: Icon(Icons.add, size: 14.0, color: Colors.white,),
//                  ),
//                ),
                SizedBox(
                  height: 5,
                ),
                Text(story.name),
              ],
            );
          }).toList(),
        )
    );
  }

  postCheck(Post posts){
    if(posts.postImages.length > 1){
      return Container(
        height: 400,
        child: PageView.builder(
          itemCount: posts.postImages.length,
          itemBuilder: (ctx, j){
            return Container(
              color: Colors.white,
              child: Image.network(posts.postImages[j]),
            );
          },
        ),
      );
    }
    else{
      for(var x=0 ; x<posts.postImages.length ; x++){
        return InkWell(
          onDoubleTap: () {
            setState(() {
              posts.liked = !posts.liked;
              print("Double Tap");
            });
          },

          child: FadeInImage(
            image: NetworkImage(posts.postImages[x]),
            placeholder: AssetImage("assets/images/main.gif"),
            width: _widthOfScreen,
          ),
        );
      }
    }
  }

  get _buildPost{
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: posts.length,
        itemBuilder: (ctx, i){
          return Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[

                // Profile Picture
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image(
                              image: NetworkImage(
                                posts[i].userImage,
                              ),
                              width: 40,
                              height: 40,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            posts[i].userName,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          )
                        ],
                      ),
                      IconButton(
                        icon: Icon(SimpleLineIcons.options_vertical),
                        onPressed: () => print('options'),
                      ),
                    ],
                  ),
                ),
                postCheck(posts[i]),
                // Image Post
//                Container(
//                  height: 400,
//                  child: PageView.builder(
//                    itemCount: posts[i].postImages.length,
//                    itemBuilder: (ctx, j){
//                      return Container(
//                        color: Colors.white,
//                        child: Image.network(posts[i].postImages[j]),
//                      );
//                    },
//                  ),
//                ),
//                InkWell(
//                  onDoubleTap: () {
//                    setState(() {
//                      posts[i].liked = !posts[i].liked;
//                      print("Double Tap");
//                    });
//                  },
//
//                  child: FadeInImage(
//                    image: NetworkImage(posts[i].postImage),
//                    placeholder: AssetImage("assets/images/main.gif"),
//                    width: _widthOfScreen,
//                  ),
//                ),
                // Like Comment Send Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          onPressed: () {
                            setState(() {
                              posts[i].liked = !posts[i].liked;
                            });
                          },
                          icon: posts[i].liked ? Icon(MaterialIcons.favorite, size: 30.0, color: Colors.red,) : Icon(MaterialIcons.favorite_border, size: 30.0,),
//                          icon: Icon(MaterialIcons.favorite_border, size: 30.0,),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(FontAwesome.comment_o, size: 30.0,),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Feather.send, size: 30.0,),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Feather.bookmark, size: 30.0,),
                    ),
                  ],
                ),
                Container(
                  width: _widthOfScreen,
                  margin: EdgeInsets.symmetric(horizontal: 13.0, vertical: 5.0),
                  child: RichText(
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Liked by ",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          )
                        ),
                        TextSpan(
                          text: "Sigmund,",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                        TextSpan(
                          text: "Baker,",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                        TextSpan(
                          text: " and ",
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black
                          ),
                        ),
                        TextSpan(
                          text: "1953 others",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
                // Caption
                Container(
                  width: _widthOfScreen,
                  margin: EdgeInsets.symmetric(horizontal: 13.0,),
                  child: RichText(
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    text: TextSpan(
                        children: [
                          TextSpan(
                            text: posts[i].userName,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),
                          ),
                          TextSpan(
                            text: " ${posts[i].caption}",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                            ),
                          ),
                        ]
                    ),
                  ),
                ),
                // Post Date
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 13.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "6 hour ago",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

}
