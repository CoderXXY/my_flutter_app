class HomeModel{
  const HomeModel({
    required this.title,
    required this.imgUrl,
});
  final String title;
  final String imgUrl;
}

final List<HomeModel> dataSource = [
  const HomeModel(
    title: 'dart',
    imgUrl: 'https://img0.baidu.com/it/u=546698500,87821893&fm=253&fmt=auto&app=138&f=PNG?w=1008&h=500'
  ),
  const HomeModel(
    title: 'flutter',
    imgUrl: 'https://www.laiketui.com/wp-content/uploads/2020/10/2020101310425870.png'
  ),
  const HomeModel(
      title: 'c++',
      imgUrl: 'https://img-blog.csdnimg.cn/img_convert/e1068e2df5499b8fb5f8fb41bc7e0252.png'
  ),
  const HomeModel(
      title: 'c',
      imgUrl: 'https://img.mukewang.com/wiki/5ea652fc0905a68010000621.jpg'
  ),
  const HomeModel(
      title: 'swift',
      imgUrl: 'https://img1.baidu.com/it/u=1101544763,1402098534&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333'
  )
];
