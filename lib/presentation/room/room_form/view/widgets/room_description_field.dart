/*
 * room_description_field.dart  
 *
 * Creator:
 * 3/20/21 3:07 PM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 3:07 PM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/presentation/room/room_form/bloc/room_form_bloc.dart';

class RoomDescriptionField extends StatelessWidget {
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
                  "Add description\nLet people understand what's amazing"),
            ),
            Container(
              height: 75,
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                initialValue: "",
                autocorrect: false,
                decoration: InputDecoration(
                  labelText:
                      "  Eg: Intention, desired outcomes, agenda, roles,\n rules, time",
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.transparent, width: 1)),
                ),
                onChanged: (value) {
                  context
                      .read<RoomFormBloc>()
                      .add(RoomFormEvent.descriptionChanged(value));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
