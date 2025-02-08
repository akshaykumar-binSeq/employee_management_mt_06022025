import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDialogs {
  static bool _isDialogOpen = false;
  static late Widget _currentDialog;

  static void setLoadingDialog(
      {bool isDismissible = false,
      Alignment alignment = Alignment.center,
      String? text}) {
    if (!_isDialogOpen) {
      _currentDialog = PopScope(
        onPopInvokedWithResult: (b, d) {
          if (isDismissible) {
            Get.back();
            _isDialogOpen = false;
            _currentDialog = const SizedBox.shrink();
          }
          // return false;
        },
        child: Align(
          alignment: alignment,
          child: Container(
            margin: const EdgeInsets.all(12),
            height: 200,
            child: Material(
              borderRadius: BorderRadius.circular(22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  isDismissible
                      ? Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.cancel,
                                color: Colors.black12,
                              ),
                            ),
                            onTap: () {
                              closeDialog();
                            },
                          ),
                        )
                      : Container(),
                  Expanded(
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Center(
                          child: SizedBox(
                            height: 70,
                            width: 70,
                            child: Stack(
                              children: [
                                const SizedBox(
                                  height: 70,
                                  width: 70,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                ),
                                Center(
                                  child: Image.asset(
                                    'assets/app_icon/playstore.png',
                                    height: 42,
                                    width: 42,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Text(
                          text ?? 'Please wait..',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      Get.dialog(_currentDialog,
          barrierDismissible: false, barrierColor: Colors.black26);
      _isDialogOpen = true;
    }
  }

  static void closeDialog() {
    if (_isDialogOpen) {
      Get.overlayContext?.findRootAncestorStateOfType<NavigatorState>()?.pop();
      _isDialogOpen = false;
      _currentDialog = const SizedBox.shrink();
    }
  }
}
