/*
 * room_form_page.dart  
 *
 * Creator:
 * 3/20/21 11:38 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 11:38 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:start_hack/domain/room/room.dart';
import 'package:start_hack/domain/room/room_type.dart';
import 'package:start_hack/injection.dart';
import 'package:start_hack/presentation/room/bloc/room_form_bloc.dart';
import 'package:start_hack/presentation/room/core/savings_overlay.dart';

class RoomFormPage extends StatelessWidget {
  final Room editedRoom;

  const RoomFormPage({
    Key key,
    @required this.editedRoom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RoomFormBloc>()
        ..add(RoomFormEvent.initialized(
          optionOf(editedRoom),
        )),
      child: BlocBuilder<RoomFormBloc, RoomFormState>(
        buildWhen: (previousState, currentState) =>
            previousState.isSaving != currentState.isSaving,
        builder: (context, state) {
          return Stack(
            children: <Widget>[
              RoomFormPageScaffold(),
              SavingOverlay(isSaving: state.isSaving)
            ],
          );
        },
      ),
    );
  }
}

class RoomFormPageScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RoomFormBloc, RoomFormState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Form(
            child: SingleChildScrollView(
              child: Align(
                alignment: const Alignment(0, -1 / 3),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      createTypeField(state),
                      const SizedBox(height: 32),
                      createNameField(context),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.watch_later_outlined),
                          Text(state.room.time.date.day.toString()),
                        ],
                      ),
                      const SizedBox(height: 32),
                      createDescriptionField(context),
                      const SizedBox(height: 32),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Invite-only?"),
                          CupertinoSwitch(
                              value: state.room.inviteOnly,
                              onChanged: (value) => context
                                  .read<RoomFormBloc>()
                                  .add(RoomFormEvent.inviteOnlyChanged(value)))
                        ],
                      ),
                      const SizedBox(height: 32),
                      ElevatedButton(
                        onPressed: state.informationComplete
                            ? () {
                                context
                                    .read<RoomFormBloc>()
                                    .add(const RoomFormEvent.saved());
                              }
                            : null,
                        child: const Text(
                          'Create room',
                          style: TextStyle(
                            color: Color(0xFF1962B5),
                            fontSize: 13,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
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

  Container createDescriptionField(BuildContext context) {
    return Container(
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
    );
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
