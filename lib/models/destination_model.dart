class DestinationModel {
  final String title;
  final String image;
  final String shortDetail;
  final String description;

  DestinationModel({required this.title, required this.image, required this.shortDetail, required this.description});

  factory DestinationModel.fromJson(Map<String, dynamic>json) => DestinationModel(
      title: json['title'],
      image: json['image'],
      shortDetail: json['shortDetail'],
      description: json['description']
  );

}

  List<DestinationModel> listOfDes = [
    DestinationModel(
        title: "Hortan Plains",
        image: "https://blog.studentlifenetwork.com/wp-content/uploads/2019/05/SLN-Blog-8Destinations-1537x952-1.jpg",
        shortDetail: "dsfjsdfjsdfhjdsfhjsdhfdsfhsdhfh",
        description: "dsfjsdfjsdfhjdsfhjsdhfdsfhsdhfhdfgdfgdfgdfgdfgdfgdfg fgdfgfdgfdg"),

    DestinationModel(
        title: "Hortan Plains",
        image: "https://blog.studentlifenetwork.com/wp-content/uploads/2019/05/SLN-Blog-8Destinations-1537x952-1.jpg",
        shortDetail: "dsfjsdfjsdfhjdsfhjsdhfdsfhsdhfh",
        description: "dsfjsdfjsdfhjdsfhjsdhfdsfhsdhfhdfgdfgdfgdfgdfgdfgdfg fgdfgfdgfdg"),

    DestinationModel(
        title: "Hortan Plains",
        image: "https://blog.studentlifenetwork.com/wp-content/uploads/2019/05/SLN-Blog-8Destinations-1537x952-1.jpg",
        shortDetail: "dsfjsdfjsdfhjdsfhjsdhfdsfhsdhfh",
        description: "dsfjsdfjsdfhjdsfhjsdhfdsfhsdhfhdfgdfgdfgdfgdfgdfgdfg fgdfgfdgfdg")

  ];

