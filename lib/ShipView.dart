import 'package:flutter/material.dart';
import 'package:ui_demo_in_flutter/vm/StarShip.dart';

class ShipView extends StatelessWidget {
  final StarShip ship;

  ShipView(this.ship);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Text(ship.name ?? "Null",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    decorationStyle: TextDecorationStyle.wavy),
                textScaleFactor: 4.0),
            Text(ship.model ?? " NUll"),
            Text(ship.manufacturer ?? "null"),
            Text(ship.crew ?? "null")
          ],
      ),
    );
  }
}
