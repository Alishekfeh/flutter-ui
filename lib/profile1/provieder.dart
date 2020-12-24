import 'package:flutter_ui_new_profil/profile1/user.dart';

class ProfileProvider {
  static Profile getProfile() {
    return Profile(
        user: User(
            name: 'Ali Shekfeh',
            address: 'amman 123456',
            about:
                'I am a person who is positive about every aspect of life. There are many things I like to do, to see, and to experience. I like to read, I like to write; I like to think, I like to dream; I like to talk, I like to listen. I like to see the sunrise in the morning, I like to see the moonlight at night; I like to feel the music flowing on my face, I like to smell the wind coming from the ocean.'),
        followers: 2205,
        following: 221,
        friends: 10);
  }
}
