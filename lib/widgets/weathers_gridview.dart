import 'package:flutter/material.dart';

import '../models.dart';
import 'forecast_shape.dart';

class weathersGridView extends StatelessWidget {
  const weathersGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 12,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
            itemBuilder: (context,index){
              return ForecastShape(weatherModel: weathersList[index],);
            }

        ),
      ),
    );
  }
}
