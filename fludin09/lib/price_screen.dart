import 'dart:io' show Platform;
import 'package:fludin09/coin_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'EUR';

  DropdownButton<String> getItemMD() {
    List<DropdownMenuItem<String>> items = [];
    for (String currency in currenciesList) {
      var currentCurrency = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );

      items.add(currentCurrency);
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: items,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value;
        });
      },
    );
  }

  CupertinoPicker getItemIOS() {
    // always set a value, and never use null
    List<Text> items = [];
    for (String currency in currenciesList) {
      items.add(Text(currency));
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      onSelectedItemChanged: (selected) {},
      children: items,
    );
  }

  Widget defineSO() {
    if (Platform.isIOS) {
      return getItemIOS();
    } else {
      return getItemMD();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BTC Convert'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.indigo,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.blueGrey,
            child: Platform.isIOS ? getItemIOS() : getItemMD(),
          ),
        ],
      ),
    );
  }
}
