import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatefulWidget {
  static const String routeName = '/payment-method';

  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool isEmailReceiptEnabled = true;
  final Color primaryColor = const Color(0xFF1D3A70);
  final Color backgroundColor = const Color(0xFFF5F7FA);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: primaryColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Payment method",
          style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _buildCreditCardSection(),
            const SizedBox(height: 20),
            _buildPaymentOptionTile("Google Pay"),
            const SizedBox(height: 15),
            _buildPaymentOptionTile("Mobile Banking"),
            const SizedBox(height: 20),
            _buildEmailToggle(),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Text(
                  "Buy",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCreditCardSection() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Credit Card",
                style: TextStyle(
                  color: primaryColor,

                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Icon(Icons.keyboard_arrow_up, color: primaryColor),
            ],
          ),
          const SizedBox(height: 20),

          // Payment Type Logos
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildPaymentLogo("VISA", const Color(0xFF1D3A70)),
              const SizedBox(width: 15),
              _buildPaymentLogo("mastercard", const Color(0xFF1D3A70)),
              const SizedBox(width: 15),
              _buildPaymentLogo("ApplePay", const Color(0xFF1D3A70)),
            ],
          ),
          const SizedBox(height: 20),

          // The Visual Credit Card
          _buildVisualCreditCard(),
        ],
      ),
    );
  }

  Widget _buildVisualCreditCard() {
    return Container(
      height: 180,
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xFF4021FF), Color(0xFF892EFF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.flash_on, color: Colors.white70, size: 20),
              Icon(Icons.wifi, color: Colors.white70, size: 20),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "8629  9257  0928  3456",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Valid till",
                        style: TextStyle(color: Colors.white70, fontSize: 10),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "09/24",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Arafat Alam",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    "VISA",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
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

  Widget _buildPaymentLogo(String type, Color color) {
    Widget content;
    if (type == "mastercard") {
      content = Stack(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            left: 12,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      );
    } else if (type == "ApplePay") {
      content = const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.apple, color: Colors.white, size: 18),
          Text(
            "Pay",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      );
    } else {
      content = const Text(
        "VISA",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      );
    }

    return Container(
      width: 93,
      height: 36,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: content,
    );
  }

  Widget _buildPaymentOptionTile(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: primaryColor),
        ],
      ),
    );
  }

  Widget _buildEmailToggle() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(4),
        color: Colors.white.withOpacity(0.5),
      ),
      child: SwitchListTile(
        activeColor: primaryColor,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
        title: Text(
          "Send receipt to your email",
          style: TextStyle(color: primaryColor, fontSize: 14),
        ),
        value: isEmailReceiptEnabled,
        onChanged: (val) {
          setState(() {
            isEmailReceiptEnabled = val;
          });
        },
      ),
    );
  }
}
