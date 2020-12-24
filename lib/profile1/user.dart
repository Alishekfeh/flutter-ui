class User{
  String name , address,about;
  User({this.name,this.about,this.address});

}
class Profile{
  User user;
  int following,followers,friends;
  Profile({this.followers,this.following,this.friends,this.user});
}