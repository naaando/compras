import 'package:app_compras/nfce/models/nfce_item.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

Text moneyText(String? amount) {
  if (amount == null) {
    return const Text('');
  }

  final newAmount =
      double.parse(amount).toStringAsFixed(2).replaceAll('.', ',');
  return Text("R\$ $newAmount");
}

Text dateText(String? issueDate) {
  if (issueDate == null) {
    return const Text('');
  }

  final date = Jiffy.parse(issueDate).format(pattern: 'dd/MM/yyyy');
  return Text(date);
}

Text qtdPrice(NfceItem e) {
  var quantity = '';
  var price = '';

  if (e.quantity != null) {
    final quantityDouble = double.parse(e.quantity!);
    quantity = quantityDouble.truncate() == quantityDouble
        ? quantityDouble.truncate().toString()
        : quantityDouble.toStringAsFixed(2);
  }

  if (e.price != null) {
    price = double.parse(e.price!).toStringAsFixed(2).replaceAll('.', ',');
  }

  return Text("$quantity${e.unity_of_measure} x ${e.currency} $price");
}
