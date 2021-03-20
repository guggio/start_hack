/*
 * homepage.dart  
 *
 * Creator:
 * 3/20/21 6:01 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 6:01 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:start_hack/presentation/room/room_view/view/room_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: RoomView(),
    );
  }
}
