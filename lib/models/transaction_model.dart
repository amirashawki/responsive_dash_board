class TransactionModel {
  final String text, data, price;
  final bool isWithdrawal;

  const TransactionModel({
    required this.text,
    required this.data,
    required this.price,
    required this.isWithdrawal,
  });
}
