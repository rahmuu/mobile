import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'lib/assets/uhuru na umoja.png',
              width: 50,
              height: 50,
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'THE UNITED REPUBLIC OF TANZANIA',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'MINISTRY OF FINANCE',
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(width: 10),
            Image.asset(
              'lib/assets/mof 1.jpg',
              width: 50,
              height: 50,
            ),
          ],
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          // Add the Arrow Back button to the app bar
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop(); // Go back to the previous page
            },
          ),
          // You can add more IconButton widgets for additional actions
        ],
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          children: [
            _buildCard(
              'lib/assets/mof 1.jpg',
              'MOF Website',
            ),
            _buildCard(
              'lib/assets/NEWS2.png',
              'Latest News',
            ),
            _buildCard(
              'lib/assets/maliyoun.jpg',
              'Strategic Plan',
            ),
            _buildCard(
              'lib/assets/open data.jpg',
              'Open Data',
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // You can add a custom drawer header here
            Container(
              height: 100, // Adjust the height as needed
              color: Colors.white, // Change the background color
            ),
            // Add vertical images with names
            _buildDrawerItem('lib/assets/mof 1.jpg', 'MOF Website'),
            _buildDrawerItem('lib/assets/NEWS2.png', 'Latest News'),
            _buildDrawerItem('lib/assets/maliyoun.jpg', 'Strategic Plan'),
            _buildDrawerItem('lib/assets/Open Data.jpg', 'Open Data'),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(String imagePath, String imageName) {
    return Card(
      elevation: 5,
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
            ),
            SizedBox(height: 8),
            Text(
              imageName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(String imagePath, String itemName) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        width: 50,
        height: 50,
      ),
      title: Text(
        itemName,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
