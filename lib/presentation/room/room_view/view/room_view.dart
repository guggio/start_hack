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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/domain/core/unique_id.dart';
import 'package:start_hack/domain/room/break_duration.dart';
import 'package:start_hack/domain/room/room.dart';
import 'package:start_hack/domain/room/room_type.dart';
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
                            fontSize: 36,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 16),
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
                              fontSize: 16,
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 32),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Open rooms",
          style: TextStyle(
            fontSize: 24,
            fontFamily: "Inter",
            fontWeight: FontWeight.w500,
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          crossAxisCount: 5,
          children: createRoomCards(context, rooms),
        ),
      ],
    );
  }

  List<Widget> createRoomCards(BuildContext context, List<Room> rooms) {
    rooms.sort((first, second) => compareRoomStartingTimes(first, second));
    return rooms
        .where((element) => isNowOrLater(element))
        .map((room) => createRoomCard(context, room))
        .toList();
  }

  Widget createRoomCard(BuildContext context, Room room) {
    return Container(
      padding: EdgeInsets.only(top: 8, right: 16),
      child: Card(
        child: GestureDetector(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      insetPadding: EdgeInsets.all(16),
                      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: new BoxDecoration(
                          color: const Color(0xFFFFFFFF),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SizedBox(
                          width: 250,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          return Color(0xff7500C0);
                                        },
                                      ),
                                    ),
                                    onPressed: null,
                                    child: Text(
                                      "Share",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  IconButton(
                                      icon: Icon(Icons.close),
                                      onPressed: () =>
                                          Navigator.of(context).pop()),
                                ],
                              ),
                              SizedBox(height: 8),
                              getNameWidget(room),
                              SizedBox(height: 24),
                              getDescriptionWidget(room),
                              SizedBox(height: 16),
                              getHostedByWidget(room),
                              SizedBox(height: 8),
                              getPositionWidget(room),
                              SizedBox(height: 24),
                              getTimeWidget(room),
                              SizedBox(height: 24),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        return Color(0xff7500C0);
                                      },
                                    ),
                                  ),
                                  onPressed: null,
                                  child: const Text(
                                    "Remind me",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ));
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: 30,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 8),
                    getNameWidget(room),
                    SizedBox(height: 24),
                    getHostedByWidget(room),
                    SizedBox(height: 8),
                    getPositionWidget(room),
                    SizedBox(height: 24),
                    getTimeWidget(room),
                    SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
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
                          "Join in now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getTimeWidget(Room room) {
    return Text(
      getTimeText(room),
      style: TextStyle(
        fontSize: 16,
        fontFamily: "Inter",
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Widget getPositionWidget(Room room) {
    return Text(
      getPosition(room.creator),
      style: TextStyle(
        fontSize: 10,
        fontFamily: "Inter",
      ),
    );
  }

  Widget getHostedByWidget(Room room) {
    return Text(
      "Hosted by " + getHostName(room.creator),
      style: TextStyle(
        fontSize: 14,
        fontFamily: "Inter",
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Widget getNameWidget(Room room) {
    return Text(
      room.name.getOrCrash() + " " + room.type.getEmoji(),
      style: TextStyle(
        fontSize: 18,
        // fontFamily: "Inter",
        fontWeight: FontWeight.w900,
      ),
    );
  }

  Widget getDescriptionWidget(Room room) {
    return Text(
      room.description.getOrCrash(),
      style: TextStyle(
        fontSize: 14,
        fontFamily: "Inter",
      ),
    );
  }

  int compareRoomStartingTimes(Room first, Room second) {
    final firstDate = DateTime(first.date.year, first.date.month,
        first.date.day, first.from.hour, first.from.minute);
    final secondDate = DateTime(second.date.year, second.date.month,
        second.date.day, second.from.hour, second.from.minute);
    return firstDate.compareTo(secondDate);
  }

  String getHostName(UniqueId hoster) {
    if (hoster.value == "Yc0D7XHMrFYZMY6J73SkZ9bxatS2") {
      return "Sebastian";
    } else if (hoster.value == "OxemnaiQMEa94d5wrSbqCWQo6Xn1") {
      return "Michael";
    } else if (hoster.value == "HXJil3Wy7uhCIGSPCAmvv2pxYnz2") {
      return "Sherry";
    } else {
      return "Alberto";
    }
  }

  String getPosition(UniqueId hoster) {
    if (hoster.value == "Yc0D7XHMrFYZMY6J73SkZ9bxatS2") {
      return "Software Engineer @Espressout";
    } else if (hoster.value == "OxemnaiQMEa94d5wrSbqCWQo6Xn1") {
      return "Software Engineer @Espressout";
    } else if (hoster.value == "HXJil3Wy7uhCIGSPCAmvv2pxYnz2") {
      return "Product Manager @Espressout";
    } else {
      return "Produt Designer @Espressout";
    }
  }

  bool isNowOrLater(Room room) {
    final date = DateTime(room.date.year, room.date.month, room.date.day,
        room.from.hour, room.from.minute);
    final plusBreakTime = date.add(getDuration(room));
    final now = DateTime.now();
    if (plusBreakTime.isBefore(now)) {
      return false;
    } else {
      return true;
    }
  }

  bool isNow(Room room) {
    final date = DateTime(room.date.year, room.date.month, room.date.day,
        room.from.hour, room.from.minute);
    final minusBreakTime = date.subtract(getDuration(room));
    final plusBreakTime = date.add(getDuration(room));
    final now = DateTime.now();
    if (plusBreakTime.isBefore(now)) {
      return false;
    } else if (minusBreakTime.isAfter(now) && plusBreakTime.isAfter(now)) {
      return false;
    } else {
      return true;
    }
  }

  String getTimeText(Room room) {
    final start = DateTime(room.date.year, room.date.month, room.date.day,
        room.from.hour, room.from.minute);
    final end = start.add(getDuration(room));
    String when;
    if (isNow(room)) {
      when = "Now";
    } else {
      when = "Today";
    }
    final String startHours = start.hour == 0 ? "00" : start.hour.toString();
    final String startMinutes =
        start.minute == 0 ? "00" : start.minute.toString();
    final String endHours = end.hour == 0 ? "00" : end.hour.toString();
    final String endMinutes = end.minute == 0 ? "00" : end.minute.toString();
    return "$when $startHours:$startMinutes - $endHours:$endMinutes";
  }

  Duration getDuration(Room room) {
    return Duration(
        minutes: room.breakDuration == BreakDuration.fifteen
            ? 15
            : room.breakDuration == BreakDuration.fortyfive
                ? 45
                : 60);
  }
}
