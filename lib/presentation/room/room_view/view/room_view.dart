/*
 * room_view.dart  
 *
 * Creator:
 * 3/20/21 10:20 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 10:20 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/domain/room/room.dart';
import 'package:start_hack/injection.dart';
import 'package:start_hack/presentation/room/room_form/view/room_form_page.dart';
import 'package:start_hack/presentation/room/room_view/bloc/room_view_bloc.dart';

class RoomView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<RoomViewBloc>()..add(RoomViewEvent.loadAllStarted()),
      child: BlocBuilder<RoomViewBloc, RoomViewState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Align(
              alignment: const Alignment(0, -1 / 3),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Connect with the people you work with",
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                return Color(0xff7500C0);
                              },
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    RoomFormPage(editedRoom: null)));
                          },
                          child: const Text(
                            "Create a room",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    handleStates(context, state),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget handleStates(BuildContext context, RoomViewState state) {
    return state.map(
      initial: (_) => Center(
        child: CircularProgressIndicator(),
      ),
      loadInProgress: (_) => Center(
        child: CircularProgressIndicator(),
      ),
      loadSuccess: (success) => createGridView(context, [success.room]),
      multipleLoadSuccess: (success) => createGridView(context, success.rooms),
      loadFailure: (error) => Center(
        child: Text(error.loadingFailure.toString()),
      ),
    );
  }

  Widget createGridView(BuildContext context, List<Room> rooms) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      children: createRoomCards(context, rooms),
    );
  }

  List<Widget> createRoomCards(BuildContext context, List<Room> rooms) {
    return rooms.map((room) => createRoomCard(context, room)).toList();
  }

  Widget createRoomCard(BuildContext context, Room room) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Card(
          child: GestureDetector(
            onTap: () {
              print('Card tapped.');
            },
            child: const SizedBox(
              width: 75,
              height: 300,
              child: Text('A card that can be tapped'),
            ),
          ),
        ),
      ),
    );
  }
}
