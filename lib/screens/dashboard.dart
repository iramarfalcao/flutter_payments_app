import 'package:flutter/material.dart';
import 'package:payments/components/list_card_item_coin.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      appBar: AppBar(
        backgroundColor: const Color(0xff1E1E1E),
        centerTitle: false,
        elevation: 0,
        title: const Text(
          "My portfolio",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.qr_code_rounded,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
              height: 200.0,
              child: ListCardItemCoin(),
            ),
            SizedBox(
              height: 200.0,
              child: ListCardItemCoin(),
            ),
            SizedBox(
              height: 200.0,
              child: ListCardItemCoin(),
            ),
            SizedBox(
              height: 200.0,
              child: ListCardItemCoin(),
            ),
          ],
        ),
      ),
    );
  }
}
