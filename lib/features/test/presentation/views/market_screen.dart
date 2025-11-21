import 'package:flutter/material.dart';
import 'package:hungry/features/test/presentation/views/coin_details_screen.dart';

class MarketScreen extends StatefulWidget {
  static const String routeName = '/market';

  const MarketScreen({super.key});

  @override
  State<MarketScreen> createState() => _MarketScreenState();
}

class _MarketScreenState extends State<MarketScreen> {
  final List<String> _filters = [
    'All',
    'DeFi',
    'NFT',
    'Gaming',
    'Metaverse',
    'Web3',
    'AI',
  ];
  String _selectedFilter = 'All';

  // Dummy data for cryptocurrencies
  final List<Map<String, dynamic>> _cryptoList = [
    {
      'name': 'Bitcoin',
      'symbol': 'BTC',
      'rank': 1,
      'price': '54,382.64',
      'change': '+15.3%',
      'isPositive': true,
      'icon': Icons.currency_bitcoin, // Placeholder
      'iconColor': Colors.orange,
    },
    {
      'name': 'Ethereum',
      'symbol': 'ETH',
      'rank': 2,
      'price': '4,145.61',
      'change': '-2.1%',
      'isPositive': false,
      'icon': Icons.diamond_outlined, // Placeholder
      'iconColor': Colors.deepPurple,
    },
    {
      'name': 'Litecoin',
      'symbol': 'LTC',
      'rank': 3,
      'price': '207.3',
      'change': '-1.1%',
      'isPositive': false,
      'icon': Icons.flash_on, // Placeholder
      'iconColor': Colors.blueGrey,
    },
    {
      'name': 'Solana',
      'symbol': 'SOL',
      'rank': 4,
      'price': '227.93',
      'change': '+15.3%',
      'isPositive': true,
      'icon': Icons.flare_outlined, // Placeholder
      'iconColor': Colors.purple,
    },
    {
      'name': 'Binance Coin',
      'symbol': 'BNB',
      'rank': 5,
      'price': '610.5',
      'change': '+2.35%',
      'isPositive': true,
      'icon': Icons.hexagon_outlined, // Placeholder
      'iconColor': Colors.amber,
    },
    {
      'name': 'Ripple',
      'symbol': 'XRP',
      'rank': 6,
      'price': '1.0358',
      'change': '+15.3%',
      'isPositive': true,
      'icon': Icons.cancel_outlined, // Placeholder
      'iconColor': Colors.blueAccent,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA), // Consistent background color
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 0, // Hide default AppBar
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Text(
                "Crypto Market",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: _buildSearchBar(),
            ),
            _buildFilterChips(),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                itemCount: _cryptoList.length,
                itemBuilder: (context, index) {
                  final crypto = _cryptoList[index];
                  return _buildCryptoListItem(
                    crypto['name'],
                    crypto['symbol'],
                    crypto['rank'],
                    crypto['price'],
                    crypto['change'],
                    crypto['isPositive'],
                    crypto['icon'],
                    crypto['iconColor'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // Assuming a BottomNavigationBar is still desired from the previous screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Set to 1 for the 'Market' tab
        onTap: (index) {
          // Handle navigation here, e.g., using a PageView or Navigator
          // For this example, we'll just print the index
          print("Tapped index: $index");
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Market'),
          BottomNavigationBarItem(
            icon: Icon(Icons.work_outline),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: const Icon(Icons.search, color: Colors.grey),
          hintText: "Search",
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: const Icon(Icons.sort, color: Colors.grey),
            onPressed: () {
              // Handle filter/sort icon tap
            },
          ),
        ),
      ),
    );
  }

  Widget _buildFilterChips() {
    return SizedBox(
      height: 40, // Fixed height for the horizontal scroll view
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        itemCount: _filters.length,
        itemBuilder: (context, index) {
          final filter = _filters[index];
          final isSelected = _selectedFilter == filter;
          return Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _selectedFilter = filter;
                });
              },
              child: Chip(
                label: Text(
                  filter,
                  style: TextStyle(
                    color: isSelected ? Colors.white : Colors.grey[700],
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                backgroundColor: isSelected
                    ? Theme.of(context).primaryColor
                    : Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: isSelected
                        ? Theme.of(context).primaryColor
                        : Colors.grey.shade300,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCryptoListItem(
    String name,
    String symbol,
    int rank,
    String price,
    String change,
    bool isPositive,
    IconData icon,
    Color iconColor,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, CoinDetailsScreen.routeName);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: iconColor.withOpacity(
                  0.15,
                ), // Light background for the icon
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: iconColor, size: 24),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    "Rank #$rank",
                    style: const TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "\$$price",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: isPositive
                        ? Colors.green.shade100
                        : Colors.red.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "${isPositive ? '+' : ''}$change",
                    style: TextStyle(
                      color: isPositive
                          ? Colors.green.shade700
                          : Colors.red.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
