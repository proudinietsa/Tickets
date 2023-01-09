import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tickets/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);



  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 0;
    static final List<Widget>_widgetOptions =<Widget>[
    const HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile"),
  ];

    void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });

    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: _widgetOptions[_selectedIndex]),

      //Creating the Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // for displaying the current tapped button label
        onTap: _onItemTapped,
        elevation: 10, // Increasing size of the bar
        showSelectedLabels: false, //Avoiding showing Labels when the button is clicked
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey, //Selected color of the item
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed, //To avoid movement of the bottom navigation bar when an item is clicked
        //List of Items on the Navigation Bar
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), //Styling the home button on the Navigation bar
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: "Tickets"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
              activeIcon:
                  Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
