/*
 * room_date_field.dart  
 *
 * Creator:
 * 3/20/21 2:56 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 2:56 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/domain/room/period.dart';
import 'package:start_hack/presentation/room/room_form/bloc/room_form_bloc.dart';

class RoomDateField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomFormBloc, RoomFormState>(
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.watch_later_outlined),
          const SizedBox(width: 8),
          Text("Today"),
          const SizedBox(width: 8),
          buildTimeField(context, state.room.from),
        ],
      ),
    );
  }

  GestureDetector buildTimeField(BuildContext context, TimeOfDay time) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        showDialog(
          context: context,
          builder: (builderContext) => BlocProvider.value(
            value: context.read<RoomFormBloc>(),
            child: _buildTimePicker(time),
          ),
        );
      },
      child: Text(time.getTimeString()),
    );
  }

  Widget _buildTimePicker(TimeOfDay time) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(16),
      child: _initContent(time),
    );
  }

  Widget _initContent(TimeOfDay timeOfDay) {
    return BlocBuilder<RoomFormBloc, RoomFormState>(
      builder: (context, state) {
        final initalTime = timeOfDay;
        return SizedBox(
          height: 125,
          width: 10,
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: new BoxDecoration(
              color: const Color(0xFFFFFFFF),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
            ),
            child: CupertinoDatePicker(
              onDateTimeChanged: (time) {
                    context.read<RoomFormBloc>().add(RoomFormEvent.fromChanged(
                        TimeOfDay.fromDateTime(time)));
              },
              mode: CupertinoDatePickerMode.time,
              use24hFormat: true,
              initialDateTime: DateTime(
                  2021, 1, 1, initalTime.hour, initalTime.minute, 0, 0),
              minuteInterval: 15,
            ),
          ),
        );
      },
    );
  }
}
