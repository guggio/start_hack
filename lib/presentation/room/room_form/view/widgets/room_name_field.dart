/*
 * room_name_field.dart  
 *
 * Creator:
 * 3/20/21 3:01 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 3:01 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/presentation/room/room_form/bloc/room_form_bloc.dart';

class RoomNameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomFormBloc, RoomFormState>(
      builder: (context, state) => Container(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                  "Add your topic\nThis will be the title of the room"),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                cursorColor: Colors.black,
                initialValue: "",
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "  Eg: Mom's spaghetti",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1)),
                ),
                onChanged: (value) {
                  context
                      .read<RoomFormBloc>()
                      .add(RoomFormEvent.nameChanged(value));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container createNameField(BuildContext context) {
    return Container(
      width: 500,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: const Text(
                "Add your topic\nThis will be the title of the room"),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              initialValue: "",
              // TODO: sebastianguggisberg -> with controller
              autocorrect: false,
              decoration: InputDecoration(labelText: "Eg: Mom's spaghetti"),
              onChanged: (value) {
                context
                    .read<RoomFormBloc>()
                    .add(RoomFormEvent.nameChanged(value));
              },
            ),
          ),
        ],
      ),
    );
  }
}
