import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rate extends StatefulWidget {
  const Rate({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RateState createState() => _RateState();
}

class _RateState extends State<Rate> {
  double? _ratingValue;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            title: const Text('Rate'),
          ),
          const SizedBox(height: 5),
          RatingBar(
              initialRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              ratingWidget: RatingWidget(
                  full: const Icon(Icons.star, color: Colors.amber),
                  half: const Icon(
                    Icons.star_half,
                    color: Colors.amber,
                  ),
                  empty: const Icon(
                    Icons.star_outline,
                    color: Colors.amber,
                  )),
              onRatingUpdate: (value) {
                setState(() {
                  _ratingValue = value;
                });
              }),
          const SizedBox(height: 1),
          // Display the rate in number,
          Container(
            width: 200,
            height: 150,
            alignment: Alignment.center,
            child: Text(
              _ratingValue != null ? _ratingValue.toString() : 'Rate it!',
              style: const TextStyle(color: Colors.black, fontSize: 30),
            ),
          )
        ]);
  }
}
