import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tpumpy/tpumpy/admin/presentation/pages/properties/widgets/stats_card_widget.dart';
import 'package:tpumpy/tpumpy/props/data/cartegory.dart';
import '../../../../../props/data/property.dart';
import '../widgets/costume_app_bar.dart';
import '../widgets/property_card.dart';
import '../widgets/property_summary_card.dart';

class PropertyManagementPage extends StatefulWidget {
  @override
  _PropertyManagementPageState createState() => _PropertyManagementPageState();
}

class _PropertyManagementPageState extends State<PropertyManagementPage> {
  final List<Map<String, dynamic>> foundProperties = [];

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _detailsController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  String _selectedCategory = 'Residential';
  bool _electricity = true;
  bool _security = true;
  bool _water = true;
  int _bedrooms = 1;
  int _bathrooms = 1;
  String _paymentPlan = 'outright';

  List<File> _images = [];
  File? _video;

  String? _editingId;

  final ImagePicker _picker = ImagePicker();

  void _addOrUpdateProperty() {
    if (_formKey.currentState!.validate()) {
      final Property newProperty = Property(
        id: _editingId ?? DateTime.now().millisecondsSinceEpoch.toString(),
        title: _titleController.text,
        details: _detailsController.text,
        price: double.parse(_priceController.text),
        address: _addressController.text,
        cartegory: Cartegory.homes,
        eletricity: _electricity,
        security: _security,
        water: _water,
        bedrooms: _bedrooms,
        bathrooms: _bathrooms,
        packingSpace: _paymentPlan,
        images: [],
        video: "_video",
      );

      setState(() {
        if (_editingId != null) {
          final index =
              newProperties.indexWhere((property) => property.id == _editingId);
          newProperties[index] = newProperty;
          _editingId = null;
        } else {
          newProperties.add(newProperty);
        }
      });

      _clearForm();
      Navigator.pop(context);
    }
  }

  void _editProperty(Map<String, dynamic> property) {
    setState(() {
      _editingId = property['id'];
      _titleController.text = property['title'];
      _detailsController.text = property['details'];
      _priceController.text = property['price'].toString();
      _addressController.text = property['address'];
      _selectedCategory = property['category'];
      final features = property['features'];
      _electricity = features['electricity'];
      _security = features['security'];
      _water = features['water'];
      _bedrooms = features['bedrooms'];
      _bathrooms = features['bathrooms'];
      _paymentPlan = property['paymentPlan'];
      _images = List<File>.from(property['images']);
      _video = property['video'];
    });

    _showPropertyFormDialog();
  }

  void _deleteProperty(String id) {
    setState(() {
      newProperties.removeWhere((property) => property.id == id);
    });
  }

  void _clearForm() {
    _titleController.clear();
    _detailsController.clear();
    _priceController.clear();
    _addressController.clear();
    _selectedCategory = 'Residential';
    _electricity = true;
    _security = true;
    _water = true;
    _bedrooms = 1;
    _bathrooms = 1;
    _paymentPlan = 'outright';
    _images = [];
    _video = null;
    _editingId = null;
  }

  Future<void> _pickImages() async {
    final pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null) {
      setState(() {
        _images = pickedFiles.map((file) => File(file.path)).toList();
      });
    }
  }

  Future<void> _pickVideo() async {
    final pickedFile = await _picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _video = File(pickedFile.path);
      });
    }
  }

  void _showPropertyFormDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(_editingId != null ? 'Edit Property' : 'Add Property'),
          content: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    controller: _titleController,
                    decoration: InputDecoration(labelText: 'Title'),
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter a title' : null,
                  ),
                  TextFormField(
                    controller: _detailsController,
                    decoration: InputDecoration(labelText: 'Details'),
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter details' : null,
                  ),
                  TextFormField(
                    controller: _priceController,
                    decoration: InputDecoration(labelText: 'Price'),
                    keyboardType: TextInputType.number,
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter a price' : null,
                  ),
                  TextFormField(
                    controller: _addressController,
                    decoration: InputDecoration(labelText: 'Address'),
                    validator: (value) =>
                        value!.isEmpty ? 'Please enter an address' : null,
                  ),
                  DropdownButtonFormField<String>(
                    value: _selectedCategory,
                    decoration: InputDecoration(labelText: 'Category'),
                    items: ['Residential', 'Commercial']
                        .map((category) => DropdownMenuItem(
                            value: category, child: Text(category)))
                        .toList(),
                    onChanged: (value) => setState(() {
                      _selectedCategory = value!;
                    }),
                  ),
                  SwitchListTile(
                    title: Text('Electricity'),
                    value: _electricity,
                    onChanged: (value) => setState(() {
                      _electricity = value;
                    }),
                  ),
                  SwitchListTile(
                    title: Text('Security'),
                    value: _security,
                    onChanged: (value) => setState(() {
                      _security = value;
                    }),
                  ),
                  SwitchListTile(
                    title: Text('Water'),
                    value: _water,
                    onChanged: (value) => setState(() {
                      _water = value;
                    }),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Bedrooms'),
                          keyboardType: TextInputType.number,
                          initialValue: _bedrooms.toString(),
                          onChanged: (value) => _bedrooms = int.parse(value),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(labelText: 'Bathrooms'),
                          keyboardType: TextInputType.number,
                          initialValue: _bathrooms.toString(),
                          onChanged: (value) => _bathrooms = int.parse(value),
                        ),
                      ),
                    ],
                  ),
                  DropdownButtonFormField<String>(
                    value: _paymentPlan,
                    decoration: InputDecoration(labelText: 'Payment Plan'),
                    items: ['outright', 'installment', 'coownership']
                        .map((plan) =>
                            DropdownMenuItem(value: plan, child: Text(plan)))
                        .toList(),
                    onChanged: (value) => setState(() {
                      _paymentPlan = value!;
                    }),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: _pickImages,
                    icon: Icon(Icons.image),
                    label: Text('Upload Images'),
                  ),
                  if (_images.isNotEmpty)
                    Wrap(
                      children: _images
                          .map((image) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.file(
                                  image,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ))
                          .toList(),
                    ),
                  SizedBox(height: 10),
                  ElevatedButton.icon(
                    onPressed: _pickVideo,
                    icon: Icon(Icons.video_library),
                    label: Text('Upload Video'),
                  ),
                  if (_video != null)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'Video Selected: ${_video!.path.split('/').last}'),
                    ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                _clearForm();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: _addOrUpdateProperty,
              child: Text(_editingId != null ? 'Update' : 'Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: StatsCards(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: _showPropertyFormDialog,
                      icon: Icon(Icons.add),
                      label: Text('Add Property'),
                    ),
                    SizedBox(height: 20),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: [
                        PropertyCard(
                          property: newProperties[0],
                        ),
                        PropertyCard(property: newProperties[0]),
                        PropertyCard(property: newProperties[0]),
                        PropertyCard(property: newProperties[0]),
                        PropertyCard(property: newProperties[0]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
