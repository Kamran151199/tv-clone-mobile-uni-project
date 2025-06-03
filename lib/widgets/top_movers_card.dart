import 'package:flutter/material.dart';

class TopMoversCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gainers = [
      {'symbol': 'NVDA', 'name': 'NVIDIA Corp', 'price': '\$124.32', 'change': '+8.45%'},
      {'symbol': 'AMD', 'name': 'Advanced Micro', 'price': '\$178.75', 'change': '+6.22%'},
      {'symbol': 'PLTR', 'name': 'Palantir Tech', 'price': '\$24.18', 'change': '+5.87%'},
    ];

    final losers = [
      {'symbol': 'META', 'name': 'Meta Platforms', 'price': '\$472.14', 'change': '-4.32%'},
      {'symbol': 'NFLX', 'name': 'Netflix Inc', 'price': '\$612.32', 'change': '-3.75%'},
      {'symbol': 'PYPL', 'name': 'PayPal Holdings', 'price': '\$62.45', 'change': '-3.21%'},
    ];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Top Movers',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            
            // Top Gainers
            const Text(
              'Top Gainers',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            ...gainers.map((stock) => _buildMoverItem(stock, true)),
            
            const SizedBox(height: 12),
            
            // Top Losers
            const Text(
              'Top Losers',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            ...losers.map((stock) => _buildMoverItem(stock, false)),
          ],
        ),
      ),
    );
  }

  Widget _buildMoverItem(Map<String, String> stock, bool isGainer) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  stock['symbol']!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  stock['name']!,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                stock['price']!,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isGainer ? Icons.arrow_upward : Icons.arrow_downward,
                    size: 10,
                    color: isGainer ? Colors.green[600] : Colors.red[600],
                  ),
                  const SizedBox(width: 2),
                  Text(
                    stock['change']!,
                    style: TextStyle(
                      fontSize: 10,
                      color: isGainer ? Colors.green[600] : Colors.red[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}