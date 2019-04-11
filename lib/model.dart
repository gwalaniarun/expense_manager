class Expense {
  int id;
  int amount;
  String reason;
  String date;

  Expense({this.amount, this.reason,this.date,this.id});

  int get id1 => id;
  int get amount1 => amount;
  String get reason1 => reason;
  String get date1 => date;

  factory Expense.fromJson(Map<String, dynamic> data) => new Expense(
    amount: data['amount'],
    reason: data['reason'],
    date: data['date']
  );

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "reason": reason,
    "date": date,
  };
}
