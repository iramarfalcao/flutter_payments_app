import 'package:cryptocoins_icons/cryptocoins_icons.dart';
import 'package:flutter/material.dart';

import 'card_item_coin.dart';

class ListCardItemCoin extends StatelessWidget {
  const ListCardItemCoin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(8.0),
      mainAxisSpacing: 16.0,
      crossAxisCount: 1,
      scrollDirection: Axis.horizontal,
      children: List.generate(4, (index) {
        return const CardItemCoin(
          title: "Bitcoin",
          subtitle: "BTC",
          icon: CryptoCoinIcons.BTC,
          value: "1,000.00",
          percent: "0.00%",
        );
      }),
    );
  }
}
