import 'package:flutter/material.dart';

class Appliance extends StatelessWidget {
  final Color? colour;
  final IconData? icon;
  final String? label;

  const Appliance({this.colour, this.icon, this.label,super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width * 0.43,
        height: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            border: Border.all(
              color: Colors.grey.shade300,
            )),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  color: colour),
              child: Center(
                child: Icon(
                  icon,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(label!,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}