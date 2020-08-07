class Post {
  String userImage;
  String userName;
  String postImage;
  String caption;
  bool liked;
  List<String> postImages;

  Post({
    this.userImage,
    this.userName,
    this.postImage,
    this.caption,
    this.liked,
    this.postImages,
  });
}

final List<Post> posts = [
  Post(
    liked: true,
    userImage: 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    userName: "sreyneanea",
    postImage: 'https://images.pexels.com/photos/4127941/pexels-photo-4127941.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    caption: 'រកឋានសួគ៍ឃើញហើយ 🍓 #Ahkmyko #kju #ម្ចូរវត្តភ្នំ168',
    postImages: [
      'https://images.pexels.com/photos/3026368/pexels-photo-3026368.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    ]
  ),
  Post(
      liked: false,
      userImage: 'https://images.pexels.com/photos/1878522/pexels-photo-1878522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      userName: "yubinshin_official",
      postImage: 'https://images.pexels.com/photos/1926769/pexels-photo-1926769.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      caption: 'Happy Pre-birthday my darling 🎂❤️',
      postImages: [
        'https://images.pexels.com/photos/821653/pexels-photo-821653.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'https://images.pexels.com/photos/3014019/pexels-photo-3014019.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'https://images.pexels.com/photos/4839732/pexels-photo-4839732.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
      ]
  ),
  Post(
      liked: false,
      userImage: 'https://images.pexels.com/photos/614810/pexels-photo-614810.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      userName: "pov_piseyy",
      postImage: 'https://images.pexels.com/photos/322207/pexels-photo-322207.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      caption: 'Amp up your summer style with Instant Tattoo 🕶 ',
      postImages: [
        'https://images.pexels.com/photos/1687093/pexels-photo-1687093.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'https://images.pexels.com/photos/2147029/pexels-photo-2147029.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'https://images.pexels.com/photos/3214743/pexels-photo-3214743.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
        'https://images.pexels.com/photos/1206059/pexels-photo-1206059.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'
      ]
  ),
  Post(
      liked: true,
      userImage: 'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      userName: "juliee_ly",
      postImage: 'https://images.pexels.com/photos/1389994/pexels-photo-1389994.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      caption: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      postImages: [
        'https://images.pexels.com/photos/1681010/pexels-photo-1681010.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      ]
  ),
  Post(
      liked: false,
      userImage: 'https://images.pexels.com/photos/1845534/pexels-photo-1845534.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      userName: "boprektbp",
      postImage: 'https://images.pexels.com/photos/937786/pexels-photo-937786.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      caption: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      postImages: [
        'https://thumbs.gfycat.com/SeveralAmbitiousHumpbackwhale-size_restricted.gif'
      ]
  ),
  Post(
      liked: true,
      userImage: 'https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      userName: "udemy",
      postImage: 'https://images.pexels.com/photos/937786/pexels-photo-937786.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      caption: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      postImages: [
        'https://images.pexels.com/photos/3493730/pexels-photo-3493730.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      ]
  ),
];

class Story{
  final String image;
  final String name;

  Story({this.image, this.name});
}

final List<Story> stories = [
  Story(
    image: 'https://scontent.fpnh1-2.fna.fbcdn.net/v/t1.0-9/87902836_2852025668416182_5216468558174748672_o.jpg?_nc_cat=111&_nc_sid=09cbfe&_nc_eui2=AeH9kdQ7J67IihKYfGqg-1q2pLlrK8nu39akuWsrye7f1k6u7D0xqcNKPB_fo9XOFZAkbjy6sw1EO-eWghphV-yI&_nc_ohc=znPO88GOpTgAX_3L1Xe&_nc_ht=scontent.fpnh1-2.fna&oh=151c35b73f5ea3f3e9e85c847fe48b87&oe=5F4F7F43',
    name: 'Adams',
  ),
  Story(
    image: 'https://images.pexels.com/photos/1878522/pexels-photo-1878522.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    name: 'Baker',
  ),
  Story(
    image: 'https://images.pexels.com/photos/532220/pexels-photo-532220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    name: 'Clark',
  ),
  Story(
    image: 'https://images.pexels.com/photos/1858175/pexels-photo-1858175.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    name: 'Davis',
  ),
  Story(
    image: 'https://images.pexels.com/photos/937481/pexels-photo-937481.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    name: 'Evans',
  ),
  Story(
    image: 'https://images.pexels.com/photos/1520760/pexels-photo-1520760.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    name: 'Frank',
  ),
  Story(
    image: 'https://images.pexels.com/photos/789812/pexels-photo-789812.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    name: 'Ghosh',
  ),
];