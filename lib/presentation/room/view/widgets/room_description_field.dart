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
import 'package:start_hack/presentation/room/bloc/room_form_bloc.dart';

class RoomDescriptionField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomFormBloc, RoomFormState>(
      builder: (context, state) => Container(
        width: 500,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                  "Add description\nLet people understand what's amazing"),
            ),
            TextFormField(
              initialValue: "",
              // TODO: sebastianguggisberg -> with controller
              autocorrect: false,
              decoration: InputDecoration(
                  labelText:
                      "Eg: Intention, desired outcomes, agenda, roles, rules, time"),
              onChanged: (value) {
                context
                    .read<RoomFormBloc>()
                    .add(RoomFormEvent.descriptionChanged(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}
