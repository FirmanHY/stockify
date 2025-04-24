enum TransactionType {
  IN,
  OUT;

  String toValue() {
    return this == IN ? 'in' : 'out';
  }

  static TransactionType fromValue(String value) {
    return value.toLowerCase() == 'in' ? IN : OUT;
  }
}
