import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransItem extends StatelessWidget {
  const TransItem({
    super.key,
    required this.transactionModel,
  });
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffFAFAFA)),
        child: ListTile(
          title: Text(
            transactionModel.text,
            style: AppStyles.styleSemiBold16(context),
          ),
          subtitle: Text(
            transactionModel.data,
            style: AppStyles.styleRegular16
(context).copyWith(color: const Color(0xFFAAAAAA)),
          ),
          trailing: Text(
            transactionModel.price,
            style: AppStyles.styleSemiBold20(context).copyWith(
                color: transactionModel.isWithdrawal
                    ? const Color(0xFFF3735E)
                    : const Color(0xFFF7DD97B)),
          ),
        ));
  }
}
