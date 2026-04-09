import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/app_colors.dart';

class CustomizeDrinkScreen extends StatefulWidget {
  const CustomizeDrinkScreen({Key? key}) : super(key: key);

  @override
  State<CustomizeDrinkScreen> createState() => _CustomizeDrinkScreenState();
}

class _CustomizeDrinkScreenState extends State<CustomizeDrinkScreen> {
  int quantity = 1;
  String selectedMilk = 'Oat milk';
  String selectedCream = 'With whipped cream';
  String selectedSyrup = 'Chocolate';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Get.back(),
                  ),
                  const Text(
                    'CupfulCanvas',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Cursive',
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.favorite_border, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // Drink image with quantity selector
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    'assets/images/latte_large.png',
                    height: 220,
                    fit: BoxFit.contain,
                  ),
                  // Quantity selector
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppColors.cream,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.brown, width: 1.5),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (quantity > 1) {
                                setState(() => quantity--);
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              child: const Icon(Icons.remove, size: 18, color: AppColors.primary),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              quantity.toString(),
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() => quantity++);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              child: const Icon(Icons.add, size: 18, color: AppColors.primary),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Options section
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.cream,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Milk options
                      const Text(
                        'Milk',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                _buildRadioOption('Oat milk', 'Oat milk', selectedMilk, (val) {
                                  setState(() => selectedMilk = val);
                                }),
                                _buildRadioOption('Whole milk', 'Whole milk', selectedMilk, (val) {
                                  setState(() => selectedMilk = val);
                                }),
                                _buildRadioOption('Almond milk', 'Almond milk', selectedMilk, (val) {
                                  setState(() => selectedMilk = val);
                                }),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                _buildRadioOption('Skim milk', 'Skim milk', selectedMilk, (val) {
                                  setState(() => selectedMilk = val);
                                }),
                                _buildRadioOption('Coconut milk', 'Coconut milk', selectedMilk, (val) {
                                  setState(() => selectedMilk = val);
                                }),
                                _buildRadioOption('Soy milk', 'Soy milk', selectedMilk, (val) {
                                  setState(() => selectedMilk = val);
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      
                      // Cream options
                      const Text(
                        'Cream',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      _buildRadioOption('With whipped cream', 'With whipped cream', selectedCream, (val) {
                        setState(() => selectedCream = val);
                      }),
                      _buildRadioOption('Without whipped cream', 'Without whipped cream', selectedCream, (val) {
                        setState(() => selectedCream = val);
                      }),
                      
                      const SizedBox(height: 20),
                      
                      // Syrup options
                      const Text(
                        'Syrup',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                _buildRadioOption('Coconut', 'Coconut', selectedSyrup, (val) {
                                  setState(() => selectedSyrup = val);
                                }),
                                _buildRadioOption('Chocolate', 'Chocolate', selectedSyrup, (val) {
                                  setState(() => selectedSyrup = val);
                                }),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                _buildRadioOption('Almond', 'Almond', selectedSyrup, (val) {
                                  setState(() => selectedSyrup = val);
                                }),
                                _buildRadioOption('Vanilla', 'Vanilla', selectedSyrup, (val) {
                                  setState(() => selectedSyrup = val);
                                }),
                              ],
                            ),
                          ),
                        ],
                      ),
                      
                      const SizedBox(height: 20),
                      
                      // Save button
                      SizedBox(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () => Get.toNamed('/cafe-selection'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Save',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioOption(String label, String value, String groupValue, Function(String) onChanged) {
    bool isSelected = groupValue == value;
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.brown, width: 2),
                color: isSelected ? AppColors.brown : Colors.transparent,
              ),
              child: isSelected
                  ? const Center(
                      child: Icon(Icons.circle, size: 10, color: Colors.white),
                    )
                  : null,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  color: AppColors.darkBrown,
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}