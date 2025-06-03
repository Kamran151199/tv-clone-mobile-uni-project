import 'package:flutter/material.dart';
import '../models/stock.dart';
import '../models/market_index.dart';
import '../models/news_item.dart';

class MarketDataProvider extends ChangeNotifier {
  List<Stock> _watchlist = [];
  List<MarketIndex> _marketIndices = [];
  List<NewsItem> _news = [];
  bool _isLoading = false;

  List<Stock> get watchlist => _watchlist;
  List<MarketIndex> get marketIndices => _marketIndices;
  List<NewsItem> get news => _news;
  bool get isLoading => _isLoading;

  MarketDataProvider() {
    _loadMockData();
  }

  void _loadMockData() {
    _isLoading = true;
    notifyListeners();

    // Mock watchlist data
    _watchlist = [
      Stock(
        symbol: 'AAPL',
        name: 'Apple Inc',
        price: 182.63,
        change: 2.45,
        changePercent: 1.36,
        volume: '48.2M',
        marketCap: '\$2.85T',
      ),
      Stock(
        symbol: 'MSFT',
        name: 'Microsoft Corporation',
        price: 415.32,
        change: -1.25,
        changePercent: -0.30,
        volume: '23.5M',
        marketCap: '\$3.09T',
      ),
      Stock(
        symbol: 'GOOGL',
        name: 'Alphabet Inc',
        price: 175.98,
        change: 3.21,
        changePercent: 1.86,
        volume: '18.2M',
        marketCap: '\$2.21T',
      ),
      Stock(
        symbol: 'AMZN',
        name: 'Amazon.com Inc',
        price: 178.75,
        change: 2.15,
        changePercent: 1.22,
        volume: '25.7M',
        marketCap: '\$1.85T',
      ),
      Stock(
        symbol: 'TSLA',
        name: 'Tesla Inc',
        price: 175.21,
        change: -4.32,
        changePercent: -2.41,
        volume: '92.3M',
        marketCap: '\$557.2B',
      ),
    ];

    // Mock market indices
    _marketIndices = [
      MarketIndex(name: 'S&P 500', value: '5,218.24', change: '+0.58%', isPositive: true),
      MarketIndex(name: 'Nasdaq', value: '16,742.39', change: '+0.81%', isPositive: true),
      MarketIndex(name: 'Dow Jones', value: '38,612.24', change: '-0.15%', isPositive: false),
      MarketIndex(name: 'Russell 2000', value: '2,015.63', change: '+0.42%', isPositive: true),
      MarketIndex(name: 'VIX', value: '14.32', change: '-3.24%', isPositive: false),
    ];

    // Mock news data
    _news = [
      NewsItem(
        title: 'Apple announces new AI features for iOS 18',
        source: 'TechCrunch',
        time: '2 hours ago',
      ),
      NewsItem(
        title: 'Fed signals potential rate cut in September meeting',
        source: 'CNBC',
        time: '3 hours ago',
      ),
      NewsItem(
        title: 'Tesla exceeds Q2 delivery expectations, stock surges',
        source: 'Bloomberg',
        time: '5 hours ago',
      ),
      NewsItem(
        title: 'Microsoft\'s cloud business drives record quarterly revenue',
        source: 'Reuters',
        time: '6 hours ago',
      ),
      NewsItem(
        title: 'Oil prices rise amid Middle East tensions',
        source: 'Wall Street Journal',
        time: '8 hours ago',
      ),
    ];

    _isLoading = false;
    notifyListeners();
  }

  void refreshData() {
    _loadMockData();
  }
}