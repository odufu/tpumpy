import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PropertyDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 900;

    return Scaffold(
      backgroundColor:
          Color.fromARGB(255, 231, 231, 231), // Dark theme background
      appBar: AppBar(
        backgroundColor: Color(0xFF23253A),
        title: Text('Property Overview'),
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
          CircleAvatar(backgroundImage: AssetImage('assets/profile.jpg')),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              !isMobile
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left Panel: Property Owner and Schedule a Tour
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              PropertyOwnerCard(),
                              SizedBox(height: 16),
                              ScheduleTourForm(),
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        // Right Panel: Property Details
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PropertyImageCard(),
                              SizedBox(height: 16),
                              PropertyDetails(),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Left Panel: Property Owner and Schedule a Tour
                        Column(
                          children: [
                            PropertyOwnerCard(),
                            SizedBox(height: 16),
                            ScheduleTourForm(),
                          ],
                        ),
                        SizedBox(width: 16),
                        // Right Panel: Property Details
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PropertyImageCard(),
                            SizedBox(height: 16),
                            PropertyDetails(),
                          ],
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class PropertyOwnerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 1200;

    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(height: 8),
          Text(
            'Gaston Lapierre',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            '(Owner)',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.facebook, color: Colors.blue),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.camera_alt, color: Colors.pink),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.share, color: Colors.lightBlue),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.whatsapp, color: Colors.green),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 16),
          !isMobile
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: Icon(Icons.call),
                      label: Text('Call Us'),
                      onPressed: () {},
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: Icon(Icons.message),
                      label: Text('Message'),
                      onPressed: () {},
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: Icon(Icons.call),
                      label: Text('Call Us'),
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      icon: Icon(Icons.message),
                      label: Text('Message'),
                      onPressed: () {},
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

// Schedule a Tour Form
class ScheduleTourForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Schedule A Tour',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: 'dd-mm-yyyy',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: '12:00 PM',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              hintText: 'Your Full Name',
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}

// Property Image Card
class PropertyImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage('assets/images/props4.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text('For Sale', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}

class PropertyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'Hayfield Ashton Place Residences at Willow Brook Valley',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),

          // Address
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.purple, size: 16),
              SizedBox(width: 4),
              Text(
                '1668 Lincoln Drive Harrisburg, PA 17101 U.S.A',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
          SizedBox(height: 16),

          // Price and Details

          Text(
            '\$80,675.00',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).colorScheme.primary),
                borderRadius: BorderRadius.circular(10)),
            child: Wrap(
              children: [
                _buildIconText(Icons.bed, '5 Bedroom', context),
                SizedBox(width: 8),
                _buildIconText(Icons.bathtub, '4 Bathrooms', context),
                SizedBox(width: 8),
                _buildIconText(Icons.square_foot, '1800sqft', context),
                _buildIconText(Icons.bed, '5 Bedroom', context),
                SizedBox(width: 8),
                _buildIconText(Icons.bathtub, '4 Bathrooms', context),
                SizedBox(width: 8),
                _buildIconText(Icons.square_foot, '1800sqft', context),
              ],
            ),
          ),
          SizedBox(height: 16),

          // Facilities
          Text(
            'Some Facility :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: [
              _buildFacilityChip('Big Swimming Pool', context),
              _buildFacilityChip('Near Airport', context),
              _buildFacilityChip('Big Size Garden', context),
              _buildFacilityChip('4 Car Parking', context),
              _buildFacilityChip('24/7 Electricity', context),
              _buildFacilityChip('Personal Theater', context),
            ],
          ),
          SizedBox(height: 16),

          // Property Details
          Text(
            'Property Details :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Property refers to any item that an individual or a business holds legal title to. This can include tangible items, such as houses, cars, or appliances, as well as intangible items that hold potential future value, such as stock and bond certificates. Legally, property is classified into two categories: personal property and real property.',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 16),

          // Date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'View More Detail ->',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 14),
              ),
              Text(
                '10 May 2024',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconText(IconData icon, String text, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, size: 16),
          Text(
            text,
            style: TextStyle(fontSize: 12),
          ),
          Container(
            height: 10,
            width: 1,
            decoration:
                BoxDecoration(color: Theme.of(context).colorScheme.primary),
          )
        ],
      ),
    );
  }

  Widget _buildFacilityChip(String label, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Theme.of(context).colorScheme.primary)),
      child: Text(
        label,
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
