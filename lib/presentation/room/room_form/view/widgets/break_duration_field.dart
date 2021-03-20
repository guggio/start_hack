/*
 * break_duration_field.dart  
 *
 * Creator:
 * 3/20/21 8:23 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 8:23 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/domain/room/break_duration.dart';
import 'package:start_hack/presentation/room/room_form/bloc/room_form_bloc.dart';

class BreakDurationField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomFormBloc, RoomFormState>(
      builder: (context, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text("Break duration"),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey, width: 1),
            ),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: BreakDuration.values.length,
              itemBuilder: (context, index) {
                var breakDuration = BreakDuration.values[index];
                return GestureDetector(
                  onTap: () {
                    context
                        .read<RoomFormBloc>()
                        .add(RoomFormEvent.breakDurationChanged(breakDuration));
                  },
                  child: buildBox(state, breakDuration),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 4),
            ),
          )
        ],
      ),
    );
  }

  Widget buildBox(RoomFormState state, BreakDuration breakDuration) {
    final bool selected = state.room.breakDuration == breakDuration;
    return Container(
      width: 133.33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
            color: selected ? Color(0xff9841e4) : Colors.transparent, width: 2),
      ),
      padding: EdgeInsets.all(4),
      alignment: Alignment.center,
      child: Text(
        breakDuration.getDisplayName(),
        style: selected
            ? TextStyle(
                fontSize: 14,
                fontFamily: "Inter",
                fontWeight: FontWeight.w500,
              )
            : TextStyle(fontSize: 14),
      ),
    );
  }
}
