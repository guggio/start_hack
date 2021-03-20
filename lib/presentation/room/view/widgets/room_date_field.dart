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
import 'package:intl/intl.dart';
import 'package:start_hack/domain/room/period.dart';
import 'package:start_hack/domain/room/room_time.dart';
import 'package:start_hack/presentation/room/bloc/room_form_bloc.dart';

enum PeriodField { from, to }

class RoomDateField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomFormBloc, RoomFormState>(
      builder: (context, state) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.watch_later_outlined),
          Text(DateFormat('dd-MM-yyyy').format(state.room.time.date)),
          const SizedBox(width: 4),
          buildTimeField(context, state.room.time, PeriodField.from),
          const SizedBox(width: 4),
          buildTimeField(context, state.room.time, PeriodField.to),
        ],
      ),
    );
  }

  GestureDetector buildTimeField(
      BuildContext context, RoomTime time, PeriodField periodField) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        showDialog(
          context: context,
          builder: (builderContext) => BlocProvider.value(
            value: context.read<RoomFormBloc>(),
            child: _buildTimePicker(periodField, time),
          ),
        );
      },
      child: Text(
        getOpeningHour(time, periodField),
      ),
    );
  }

  String getOpeningHour(RoomTime time, PeriodField periodField) {
    final period = time.period;
    if (periodField == PeriodField.from) {
      return period.from.getTimeString();
    } else {
      return period.to.getTimeString();
    }
  }

  Widget _buildTimePicker(PeriodField periodField, RoomTime time) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(16),
      child: _initContent(periodField, time),
    );
  }

  Widget _initContent(PeriodField periodField, RoomTime roomTime) {
    return BlocBuilder<RoomFormBloc, RoomFormState>(
      builder: (context, state) {
        final initalTime = periodField == PeriodField.from
            ? roomTime.period.from
            : roomTime.period.to;

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
                if (validatePeriod(time, periodField, roomTime.period)) {
                  if (periodField == PeriodField.from) {
                    context.read<RoomFormBloc>().add(RoomFormEvent.fromChanged(
                        TimeOfDay.fromDateTime(time)));
                  } else {
                    context.read<RoomFormBloc>().add(
                        RoomFormEvent.toChanged(TimeOfDay.fromDateTime(time)));
                  }
                }
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

  bool validatePeriod(
      DateTime newTime, PeriodField periodField, Period previousPeriod) {
    if (periodField == PeriodField.from) {
      return !previousPeriod
          .copyWith(from: TimeOfDay.fromDateTime(newTime))
          .fromEqualsTo;
    } else {
      return !previousPeriod
          .copyWith(to: TimeOfDay.fromDateTime(newTime))
          .fromEqualsTo;
    }
  }
}
