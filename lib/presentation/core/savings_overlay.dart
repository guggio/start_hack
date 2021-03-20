/*
 * savings_overlay.dart  
 *
 * Creator:
 * 3/20/21 11:41 AM sebastianguggisberg
 *
 * Maintainer:
 * 3/20/21 11:41 AM sebastianguggisberg
 *
 * Last Modification:
 * $Id: $
 *
 */

import 'package:flutter/material.dart';

class SavingOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
