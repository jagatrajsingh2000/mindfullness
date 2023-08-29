// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors



import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 12, top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuBar(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Wellness Hub",
                style: TextStyle(
                  color: Color.fromRGBO(55, 27, 52, 1),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              HorizontalContainerList(
                items: [
                  'Treanding',
                  'Relationship',
                  'Selfcare',
                  'Item 4',
                  'Item 5'
                ],
                itemHeight: 38,
                itemWidth: 98,
                // itemColor: Color.fromRGBO(254, 130, 53, 1),
              ),
              SizedBox(
                height: 20,
              ),
              PostCard(
                profileImage: 'assets/images/profile1.png',
                authorName: 'Coal Dingo',
                postTime: 'just now',
                postContent:
                    'Is there a therapy which can cure crossdressing & bdsm compulsion?',
                likes: 3,
              ),
              SizedBox(height: 17,),
              Divider(
                      color: Color.fromRGBO(217, 216, 216, 0.3),
                      height: 10,
                    ),
              SizedBox(
                height: 20,
              ),
              PostCard(
                profileImage: 'assets/images/profile4.png',
                authorName: 'Coal Dingo',
                postTime: 'just now',
                postContent:
                    'Is there a therapy which can cure crossdressing & bdsm compulsion?',
                likes: 3,
              ),
              SizedBox(height: 17,),
              Divider(
                      color: Color.fromRGBO(217, 216, 216, 0.3),
                      height: 10,
                    ),
              SizedBox(
                height: 20,
              ),
              PostCard(
                profileImage: 'assets/images/profile2.png',
                authorName: 'Coal Dingo',
                postTime: 'just now',
                postContent:
                    'Is there a therapy which can cure crossdressing & bdsm compulsion?',
                likes: 3,
              ),
              SizedBox(height: 17,),
              Divider(
                      color: Color.fromRGBO(217, 216, 216, 0.3),
                      height: 10,
                    ),
              SizedBox(
                height: 20,
              ),
              PostCard(
                profileImage: 'assets/images/profile1.png',
                authorName: 'Coal Dingo',
                postTime: 'just now',
                postContent:
                    'Is there a therapy which can cure crossdressing & bdsm compulsion?',
                likes: 3,
              ),
              SizedBox(height: 17,),
              Divider(
                      color: Color.fromRGBO(217, 216, 216, 0.3),
                      height: 10,
                    ),
              SizedBox(
                height: 20,
              ),
              PostCard(
                profileImage: 'assets/images/profile3.png',
                authorName: 'Coal Dingo',
                postTime: 'just now',
                postContent:
                    'Is there a therapy which can cure crossdressing & bdsm compulsion?',
                likes: 3,
              ),
              SizedBox(height: 17,),
              Divider(
                      color: Color.fromRGBO(217, 216, 216, 0.3),
                      height: 10,
                    )
            ],
          ),
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // index = (index + 1) % customizations.length;
          });
        },
        // foregroundColor: customizations[index].$1,
        backgroundColor: Color.fromRGBO(254, 130, 53, 1),
        // shape: customizations[index].$3,
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class MenuBar extends StatelessWidget {
  const MenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            child: Image.asset(
          'assets/images/profile.png',
          width: 35,
          height: 35,
        )),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon:
                  Image.asset('assets/images/bell.png', width: 34, height: 24),
            ),
            Positioned(
              left: 26,
              top: 6,
              child: Container(
                width: 21,
                height: 21,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                child: Center(
                  child: Text(
                    '3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

class HorizontalContainerList extends StatefulWidget {
  final List<String> items;
  final double itemHeight;
  final double itemWidth;

  HorizontalContainerList({
    required this.items,
    required this.itemHeight,
    required this.itemWidth,
  });

  @override
  _HorizontalContainerListState createState() =>
      _HorizontalContainerListState();
}

class _HorizontalContainerListState extends State<HorizontalContainerList> {
  int selectedItemIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.itemHeight,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          final isSelected = index == selectedItemIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedItemIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(
                right: index < widget.items.length - 1 ? 12 : 0.0,
              ),
              height: widget.itemHeight,
              width: widget.itemWidth,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected
                        ? Color.fromRGBO(254, 130, 53, 1)
                        : Color.fromRGBO(244, 242, 241, 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text(
                      widget.items[index],
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PostCard extends StatefulWidget {
  final String profileImage;
  final String authorName;
  final String postTime;
  final String postContent;
  final int likes;

  PostCard({
    required this.profileImage,
    required this.authorName,
    required this.postTime,
    required this.postContent,
    required this.likes,
  });

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          widget.profileImage,
          width: 35,
          height: 35,
        ),
        SizedBox(
          width: 17,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: widget.authorName,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                children: [
                  WidgetSpan(
                    child: Text(
                      " . ${widget.postTime}",
                      style: TextStyle(
                        color: Color.fromRGBO(112, 112, 112, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            SizedBox(
              width: 220,
              child: Text(
                widget.postContent,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked ? Colors.red : Colors.grey,
                    size: 20,
                  ),
                ),
                Text(
                  widget.likes.toString(),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 34,
                ),
                Image.asset(
                  "assets/images/messageCard.png",
                  width: 17.5,
                  height: 17.5,
                ),
                SizedBox(
                  width: 190,
                ),
                Image.asset(
                  "assets/images/bx_share.png",
                  width: 20,
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
