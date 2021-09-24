import 'package:flutter/material.dart';

class SearchProductsDialog extends StatefulWidget {
  @override
  _SearchProductsDialogState createState() => _SearchProductsDialogState();
}

class _SearchProductsDialogState extends State<SearchProductsDialog> {
//  List k=['jsd',4,Icons.add];

  List<String> _categories = [
    'Automobiles',
    'Electronics',
    'Gaming',
    'Household Products',
    'Cleaning',
    'Apparels',
    'Cutleries',
    'Watches',
    'Cosmetics',
    'Suitcases',
    'Drones',
    'Jeans Pants'
  ];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 500,
        width: 300,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 8.0),
              child: Text(
                'Choose Category',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0, top: 4),
                            child: Text(
                              _categories[index],
                              style: TextStyle(fontSize: 14.0),
                            ),
                          ),
                          Spacer(),
                          Divider()
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
