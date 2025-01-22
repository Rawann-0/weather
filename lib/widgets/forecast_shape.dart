import 'package:flutter/material.dart';

import '../models.dart';

class ForecastShape extends StatelessWidget {
  final Weather weatherModel;
  const ForecastShape({
    super.key, required this.weatherModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(weatherModel.title,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold,color: Colors.white),),
        Icon(weatherModel.icon,color: Colors.white,),
        Text(weatherModel.degree,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold,color: Colors.white),),
      ],
    );
  }
}
