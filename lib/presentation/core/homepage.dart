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
import 'package:start_hack/presentation/room/view/room_form_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ROOOOOMS'),
      ),
      body: Center(
        child: Text('middle'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => RoomFormPage(editedRoom: null))),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
