import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.deepOrangeAccent,
          padding: EdgeInsets.only(top: 30.0, left: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Margherita",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Tomato, Mozzarella, Basil",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Marinara",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Tomato, Garlic",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
              OrderButton(),
            ],
          )),
    );
  }
}

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(top: 80.0),
        child: RaisedButton(
          child: Text("Order your pizza!"),
          color: Colors.lightGreen,
          elevation: 5.0,
          onPressed: () {
            order(context);
          },
        ),
      );

  void order(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your order!"),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alert,
    );
  }
}
