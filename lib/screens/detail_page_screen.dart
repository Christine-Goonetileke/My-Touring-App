import 'package:flutter/material.dart';
import 'package:my_touring/models/destination_model.dart';
import 'package:my_touring/providers/destination_data_provider.dart';
import 'package:provider/provider.dart';


class DetailPage extends StatefulWidget {
  //const DestinationsListScreen({Key? key}) : super(key: key);


  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  void initState() {
    super.initState();
    final ndl =Provider.of<DestinationDataProvider>(context, listen: false);
    ndl.loadDes();
  }

  @override
  Widget build(BuildContext context) {
    final ndl =Provider.of<DestinationDataProvider>(context);

    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          padding: EdgeInsets.all(20),
            itemCount: ndl.desList.length,
            itemBuilder: (context, index) {
              DestinationModel des = ndl.desList[index];
              return DetailViewCard(
                  destination: des.title,
                  image: des.image,
                  description: des.description
              );
            }));
  }
}

class DetailViewCard extends StatelessWidget {
  final String image;
  final String destination;
  final String description;

  DetailViewCard(
      {
      required this.image,
      required this.destination,
        required this.description,});

  //const DestinationViewCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Hero(
                tag: 'hero1',
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(destination,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromRGBO(54, 54, 54, 1)
              ),),
              SizedBox(
                height: 15,
              ),
              Text(description,
              style: TextStyle(
                color: Color.fromRGBO(54, 54, 54, 1)
              ),),
            ],
          ),
        ),

    );
  }
}
