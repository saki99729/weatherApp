import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0);

TextStyle inforFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

Widget additionalinformation(
    String wind, String humidity, String pressure, String feelLike) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wind",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "pressure",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),

//values

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$wind",
                  style: inforFont,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "$pressure",
                  style: inforFont,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Feel Like",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$humidity",
                  style: inforFont,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "$feelLike",
                  style: inforFont,
                ),
                const SizedBox(
                  height: 20.0,
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}
