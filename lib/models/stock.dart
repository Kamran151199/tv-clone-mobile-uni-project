class Stock {
  final String symbol;
  final String name;
  final double price;
  final double change;
  final double changePercent;
  final String volume;
  final String marketCap;

  Stock({
    required this.symbol,
    required this.name,
    required this.price,
    required this.change,
    required this.changePercent,
    required this.volume,
    required this.marketCap,
  });

  bool get isPositive => change >= 0;

  String get formattedPrice => '\$${price.toStringAsFixed(2)}';
  String get formattedChange => '${change >= 0 ? '+' : ''}${change.toStringAsFixed(2)}';
  String get formattedChangePercent => '${changePercent >= 0 ? '+' : ''}${changePercent.toStringAsFixed(2)}%';
}