/*
 * room_type_field.dart  
 *
 * Creator:
 * 3/20/21 3:04 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 3:04 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/domain/room/room_type.dart';
import 'package:start_hack/presentation/room/bloc/room_form_bloc.dart';

class RoomTypeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomFormBloc, RoomFormState>(
        builder: (context, state) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text("Type of room"),
                ),
                Container(
                  height: 50,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: RoomType.values.length,
                    itemBuilder: (context, index) {
                      var type = RoomType.values[index];
                      return GestureDetector(
                        onTap: () {
                          context
                              .read<RoomFormBloc>()
                              .add(RoomFormEvent.typeChanged(type));
                        },
                        child: Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          color: state.room.type == type
                              ? const Color(0xFF2573CC)
                              : Colors.transparent,
                          child: Container(
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.all(4),
                            alignment: Alignment.center,
                            child: Text(
                              type.getDisplayName(),
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 4),
                  ),
                )
              ],
            ));
  }

  Column createTypeField(RoomFormState state) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 8),
          child: const Text("Type of room"),
        ),
        Container(
          height: 50,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: RoomType.values.length,
            itemBuilder: (context, index) {
              var type = RoomType.values[index];
              return GestureDetector(
                onTap: () {
                  context
                      .read<RoomFormBloc>()
                      .add(RoomFormEvent.typeChanged(type));
                },
                child: Material(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  color: state.room.type == type
                      ? const Color(0xFF2573CC)
                      : Colors.transparent,
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    child: Text(
                      type.getDisplayName(),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(width: 4),
          ),
        )
      ],
    );
  }
}
