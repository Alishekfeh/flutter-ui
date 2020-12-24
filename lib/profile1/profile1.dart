import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_new_profil/profile1/provieder.dart';
import 'package:flutter_ui_new_profil/profile1/user.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile1 extends StatefulWidget {
  @override
  _Profile1State createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  Profile profile=ProfileProvider.getProfile();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset('images/sports.jpg',fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height*0.45,
        ),

        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: (){},
              icon: Icon(FontAwesomeIcons.bars,color: Colors.white,size: 40,),
            ),
            actions: <Widget>[
              IconButton(

                icon: Icon(FontAwesomeIcons.cog,color: Colors.white,size: 40,),
                onPressed: (){},
              ),

            ],
            title: Padding(
              padding: const EdgeInsets.only(top:16.0),
              child: Text('Profile',style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontSize: 30
                  ,
              ),),
            )
            ,centerTitle: true,
          ),
          body: Stack(
            children: <Widget>[
              CustomPaint(
                painter: ProfilePainter(),
                child: Container(

                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*0.25,
                left: MediaQuery.of(context).size.width*0.05,
                child: CircleAvatar(
                  backgroundImage: ExactAssetImage('images/alii.jpg'),
                  maxRadius: 40,
                ),
              ),
              BodyText(profile: profile),
              BootomBar(profile: profile),
            ],
          ),
        ),

      ],
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText({
    Key key,
    @required this.profile,
  }) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height*0.36,
      left: MediaQuery.of(context).size.width*0.03,
      bottom: 0,

      child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(profile.user.name,style: TextStyle(
            color: Colors.grey,
            fontSize: 32,
            fontWeight: FontWeight.w700
          ),),
          SizedBox(height: 10,),
          Row(
            children: <Widget>[
              Icon(Icons.location_on,color: Colors.grey,),
              SizedBox(width: 9,),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 8,bottom: 16,right: 10),
                child: Text(profile.user.address,style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 22,
                  fontWeight: FontWeight.bold

                ),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('About me'

            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
              child: Text(profile.user.about,softWrap: true,style:TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 18,
                  fontWeight: FontWeight.bold

              ),)

          ),

        ],
      ),
    );
  }
}

class BootomBar extends StatelessWidget {
  const BootomBar({
    Key key,
    @required this.profile,
  }) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 24,
      right: 24,
      child:   Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text('follower',style: _stylee,),
              Text(profile.followers.toString(),style: _stylee,)
            ],
          ),
          Column(
            children: <Widget>[
              Text('following',style: _stylee,),
              Text(profile.following.toString(),style: _stylee,)
            ],
          ),
          Column(
            children: <Widget>[
              Text('friends',style: _stylee,),
              Text(profile.friends.toString(),style: _stylee,)
            ],
          ),
        ],
      ),
    );
  }
}
TextStyle _stylee=TextStyle(
  color: Colors.grey.shade700,
  fontSize: 22
);
class ProfilePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint=Paint();
    Path path=Path();
    paint.color=Colors.white;
    path.lineTo(0, size.height*0.33);
    path.lineTo(size.width, size.height*0.39);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, size.height*0.25);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}