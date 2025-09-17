import 'package:flutter/material.dart';

class RoomSpecAppliance extends StatelessWidget {
  
  final String? label;
  final String? imgpath;
  final double? imgHeight;
  final double? imgWidth;

  const RoomSpecAppliance({this.label,this.imgpath,this.imgHeight,this.imgWidth,super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.43,
        height: MediaQuery.of(context).size.width * 0.48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          border: Border.all(
            color: Colors.grey.shade300,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                label!,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  height: MediaQuery.of(context).size.width * imgHeight!,
                  width: MediaQuery.of(context).size.width * imgWidth!,
                  child: Image.asset(
                    imgpath!,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}