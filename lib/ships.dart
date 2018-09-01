import 'package:flutter/material.dart';
import 'injection/injection.dart';
import 'ShipView.dart';
import 'vm/StarShip.dart';

class StarShipManager extends StatefulWidget {
  var _shipNumber = 8;

  var startViewModel = Injection().injectScopeViewModel();

  @override
  State<StatefulWidget> createState() {
    _nextShip();
    return _StarShipState();
  }

  _nextShip() {
    var shipNumber = _shipNumber + 1;

    if (shipNumber == 13) {
      _shipNumber = 9;
    }

    startViewModel.startship.add(shipNumber);
  }
}

class _StarShipState extends State<StarShipManager> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: StreamBuilder(
        stream: widget.startViewModel.ships,
        builder: (context, ship) {
          if (ship.data != null && !widget.startViewModel.isLoading) {
            return ShipView(ship.data);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
                widget._nextShip();
              })),
    );
  }
}
