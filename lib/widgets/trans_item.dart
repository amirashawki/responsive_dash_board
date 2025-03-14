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
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            transactionModel.data,
            style: AppStyles.styleRegular16
                .copyWith(color: const Color(0xFFAAAAAA)),
          ),
          trailing: Text(
            transactionModel.price,
            style: AppStyles.styleSemiBold20.copyWith(
                color: transactionModel.isWithdrawal
                    ? const Color(0xFFF3735E)
                    : const Color(0xFFF7DD97B)),
          ),
        ));
  }
}
