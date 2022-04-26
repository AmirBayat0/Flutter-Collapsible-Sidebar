import 'package:flutter/material.dart';
import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Collapsible Sidebar',
      debugShowCheckedModeBanner: false,
      home: CollapsibleSideBar(),
    );
  }
}

class CollapsibleSideBar extends StatefulWidget {
  const CollapsibleSideBar({Key? key}) : super(key: key);

  @override
  State<CollapsibleSideBar> createState() => _CollapsibleSideBarState();
}

class _CollapsibleSideBarState extends State<CollapsibleSideBar> {
  late List<CollapsibleItem> _items;
  late String _title;

  @override
  void initState() {
    super.initState();
    _items = _generateItems;
    _title = _items.firstWhere((item) => item.isSelected).text;
  }

  List<CollapsibleItem> get _generateItems {
    return [
      /// Search
      CollapsibleItem(
        text: 'Search',
        icon: Icons.search,
        onPressed: () => setState(
          () => _title = 'Search',
        ),
      ),

      /// Dashboard
      CollapsibleItem(
          text: 'Dashboard',
          icon: Icons.assessment,
          onPressed: () => setState(
                () => _title = 'Dashboard',
              ),
          isSelected: true),

      /// Team
      CollapsibleItem(
        text: 'Team',
        icon: LineIcons.users,
        onPressed: () => setState(
          () => _title = 'Team',
        ),
      ),

      /// Chat
      CollapsibleItem(
        text: 'Chat',
        icon: LineIcons.facebookMessenger,
        onPressed: () => setState(
          () => _title = 'Chat',
        ),
      ),

      /// Followers
      CollapsibleItem(
        text: 'Followers',
        icon: Icons.person_add_alt_outlined,
        onPressed: () => setState(
          () => _title = 'Followers',
        ),
      ),

      /// Following
      CollapsibleItem(
        text: 'Following',
        icon: LineIcons.userCheck,
        onPressed: () => setState(
          () => _title = 'Following',
        ),
      ),

      /// Saved
      CollapsibleItem(
        text: 'Saved',
        icon: LineIcons.heart,
        onPressed: () => setState(
          () => _title = 'Saved',
        ),
      ),

      /// New Work
      CollapsibleItem(
        text: 'New Work',
        icon: LineIcons.plusSquare,
        onPressed: () => setState(
          () => _title = 'New Work',
        ),
      ),

      /// Sign Out'
      CollapsibleItem(
        text: 'Sign Out',
        icon: LineIcons.alternateSignOut,
        onPressed: () => setState(
          () => _title = 'Sign Out',
        ),
      ),

      /// Tell a Friend
      CollapsibleItem(
        text: 'Tell a Friend',
        icon: LineIcons.userFriends,
        onPressed: () => setState(
          () => _title = 'Tell a Friend',
        ),
      ),

      /// Help & FeedBack
      CollapsibleItem(
        text: 'Help & FeedBack',
        icon: LineIcons.questionCircle,
        onPressed: () => setState(
          () => _title = 'Help & FeedBack',
        ),
      ),
    ];
  }

  /////////////////////////////////////
  //@CodeWithFlexz on Instagram
  //
  //AmirBayat0 on Github
  //Programming with Flexz on Youtube
  /////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffE6E9EE),
          body: CollapsibleSidebar(
            screenPadding: 10.0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            onHoverPointer: SystemMouseCursors.click,
            onTitleTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Awesome Flutter SideBar Package')));
            },
            showToggleButton: true,
            borderRadius: 30,
            title: "CodeWithFlexz",
            titleBack: true,
            titleBackIcon: LineIcons.instagram,
            titleStyle: GoogleFonts.lato(fontSize: 22),
            unselectedIconColor: Colors.white38,
            unselectedTextColor: Colors.white38,
            selectedIconBox: const Color(0xff435BD5),
            selectedIconColor: const Color(0xffffffff),
            selectedTextColor: const Color(0xffffffff),
            toggleTitleStyle:
                GoogleFonts.oxygen(fontWeight: FontWeight.w400, fontSize: 20),
            textStyle:
                GoogleFonts.oxygen(fontWeight: FontWeight.w400, fontSize: 18),
            sidebarBoxShadow: [],
            backgroundColor: const Color(0xff2F49D0),
            body: _body(),
            items: _items,
          )),
    );
  }

  Stack _body() {
    return Stack(children: [
      Positioned(
        right: -40,
        top: 90,
        child: RotationTransition(
            turns: const AlwaysStoppedAnimation(90 / 360),
            child: SizedBox(
              width: 200,
              height: 60,
              child: Center(
                child: FittedBox(
                  child: Text(
                    _title,
                    style: GoogleFonts.oxanium(
                      fontSize: 35,
                      color: const Color(0xff435BD5),
                    ),
                  ),
                ),
              ),
            )),
      ),
    ]);
  }
}
