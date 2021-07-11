import 'package:flutter/material.dart';
import 'package:my_touring/models/destination_model.dart';
import 'package:my_touring/providers/destination_data_provider.dart';
import 'package:my_touring/screens/detail_page_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';

class DestinationsListScreen extends StatefulWidget {
  //const DestinationsListScreen({Key? key}) : super(key: key);

  @override
  _DestinationsListScreenState createState() => _DestinationsListScreenState();
}

class _DestinationsListScreenState extends State<DestinationsListScreen> {

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
              return DestinationViewCard(
                  destination: des.title,
                  shortDetail: des.shortDetail,
                  image: des.image,
                  description: des.description,
              );
            }));
  }
}

class DestinationViewCard extends StatelessWidget {
  final String image;
  final String destination;
  final String shortDetail;
  final String description;

  DestinationViewCard(
      {required this.shortDetail,
      required this.image,
      required this.destination,
      required this.description,});

  //const DestinationViewCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      //new GestureDetector(
      child: InkWell(

          child: Container(

            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                Text(shortDetail,
                style: TextStyle(
                  color: Color.fromRGBO(141, 144, 145, 1)
                ),),
              ],
            ),
          ),

        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailViewCard(image: image, destination: destination, description: description),
            ),
          );
        },
      ),
      //),
    );
  }
}
