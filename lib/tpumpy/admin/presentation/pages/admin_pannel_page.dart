import 'package:flutter/material.dart';
import 'package:tpumpy/tpumpy/admin/presentation/pages/properties/pages/create_new_property.dart';
import 'package:tpumpy/tpumpy/admin/presentation/pages/properties/widgets/table.dart';

import 'dashboard/admin_dashboard.dart';
import 'properties/pages/property_management_page.dart';

class AdminPanelPage extends StatefulWidget {
  final Widget? entryPage;
  const AdminPanelPage({
    this.entryPage,
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _AdminPanelPageState createState() => _AdminPanelPageState();
}

class _AdminPanelPageState extends State<AdminPanelPage> {
  Widget _curPendingPage = const AdminDashboard(); // Default page
  @override
  void initState() {
    // TODO: implement initState
    _curPendingPage = widget.entryPage ?? const AdminDashboard();
  }

  void navigateToPage(Widget page) {
    setState(() {
      _curPendingPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 800;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                // HelperFunctions.routePushTo(
                //     HomePage(
                //       initialIndex: 3,
                //     ),
                //     context);
              },
              child: const CircleAvatar(
                backgroundImage:
                    AssetImage('assets/profile.png'), // Profile image
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Joel Odufu',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.w100,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(
                  Icons.notification_add_sharp,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Settings action
            },
          ),
        ],
      ),
      drawer: isDesktop ? null : AdminSideMenu(onNavigate: navigateToPage),
      body: Row(
        children: [
          if (isDesktop)
            SizedBox(
              width: 250,
              child: AdminSideMenu(onNavigate: navigateToPage),
            ),
          Expanded(
            child: _curPendingPage,
          ),
        ],
      ),
    );
  }
}

class AdminSideMenu extends StatelessWidget {
  final Function(Widget) onNavigate;

  const AdminSideMenu({required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/dekolhome.png",
                  height: 60,
                ),
                const Text(
                  'DEKOL HOMES',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  '& Properties LTD',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 16,
                      letterSpacing: 5),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.dashboard, color: Colors.white),
            title:
                const Text('Dashboard', style: TextStyle(color: Colors.white)),
            onTap: () => onNavigate(AdminDashboard()),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.white),
            title:
                const Text('Properties', style: TextStyle(color: Colors.white)),
            onTap: () => onNavigate(PropertyManagementPage()),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.white),
            title: const Text('Users', style: TextStyle(color: Colors.white)),
            onTap: () => onNavigate(ListingTablePage()),
          ),
          ListTile(
            leading: const Icon(Icons.people, color: Colors.white),
            title: const Text('Clients', style: TextStyle(color: Colors.white)),
            onTap: () => onNavigate(AddPropertyPage()),
          ),
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.white),
            title: const Text('Notifications',
                style: TextStyle(color: Colors.white)),
            onTap: () => onNavigate(PropertyManagementPage()),
          ),
          ListTile(
            leading:
                const Icon(Icons.subdirectory_arrow_left, color: Colors.white),
            title: const Text('Installment',
                style: TextStyle(color: Colors.white)),
            onTap: () => onNavigate(PropertyManagementPage()),
          ),
          ListTile(
            leading: const Icon(Icons.donut_large, color: Colors.white),
            title: const Text('Co-Ownership',
                style: TextStyle(color: Colors.white)),
            onTap: () => onNavigate(PropertyManagementPage()),
          ),
          ListTile(
            leading: const Icon(Icons.donut_large, color: Colors.white),
            title:
                const Text('Payments', style: TextStyle(color: Colors.white)),
            onTap: () => onNavigate(PropertyManagementPage()),
          ),
        ],
      ),
    );
  }
}
