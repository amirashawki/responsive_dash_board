import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';

import 'package:responsive_dash_board/widgets/trans_item.dart';

class TransHistoryList extends StatelessWidget {
  const TransHistoryList({super.key});

  static const transList = [
    TransactionModel(
        text: 'Cash Withdrawal',
        data: '13 Apr, 2022 ',
        price: r'$20,129',
        isWithdrawal: true),
    TransactionModel(
        text: 'Landing Page project',
        data: '13 Apr, 2022 at 3:30 PM',
        price: r'$2,000',
        isWithdrawal: false),
    TransactionModel(
        text: 'Juni Mobile App project',
        data: '13 Apr, 2022 at 3:30 PM',
        price: r'$20,129',
        isWithdrawal: false),
  ];
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: transList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: TransItem(transactionModel: transList[index]),
          );
        });
  }
}
