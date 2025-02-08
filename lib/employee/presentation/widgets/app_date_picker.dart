import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:employee_management_mt_06022025/common/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/widgets/app_button_widget.dart';

class AppDatePicker {
  static Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
  static DateTime nextMonday = DateTime.now().add(Duration(
    days: (DateTime.monday - DateTime.now().weekday + 7) % 7,
  ));

  static DateTime nextTuesday = DateTime.now().add(Duration(
    days: (DateTime.tuesday - DateTime.now().weekday + 7) % 7,
  ));

  static DateTime nextWeek = DateTime.now().add(Duration(days: 7));

  static bool isSameDate(DateTime? date1, DateTime? date2) {
    if (date1 == null || date2 == null) return false;
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  static Future<DateTime?> showDatePicker(
    DateTime? currentSelectedDate, {
    DateTime? minDate,
    bool showFutureDate = true,
    bool showNoDateButton = false,
  }) async {
    selectedDate.value = currentSelectedDate;
    await Get.dialog(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        insetPadding: EdgeInsets.all(16),
        contentPadding: EdgeInsets.all(16),
        surfaceTintColor: secondaryColor,
        backgroundColor: secondaryColor,
        content: SizedBox(
          width: Get.width - 32,
          // margin: EdgeInsets.all(16),
          child: Obx(
            () => Column(
              mainAxisSize: MainAxisSize.min, // Fix: Prevent unbounded height
              children: [
                // Quick selection buttons
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (showNoDateButton) ...[
                          AppButton(
                            label: 'No Date',
                            backgroundColor: selectedDate.value == null
                                ? primaryColor
                                : primaryAccentColor,
                            onPressed: () {
                              selectedDate.value = null;
                            },
                          ),
                          thinSpace,
                        ],
                        AppButton(
                          label: 'Today',
                          backgroundColor: selectedDate.value != null &&
                                  isSameDate(selectedDate.value, DateTime.now())
                              ? primaryColor
                              : primaryAccentColor,
                          onPressed: () {
                            selectedDate.value = DateTime.now();
                          },
                        ),
                        if (showFutureDate) ...[
                          thinSpace,
                          AppButton(
                            label: 'Next Monday',
                            backgroundColor: selectedDate.value == nextMonday
                                ? primaryColor
                                : primaryAccentColor,
                            onPressed: () {
                              selectedDate.value = nextMonday;
                            },
                          ),
                        ],
                      ],
                    ),
                    if (showFutureDate) ...[
                      thinSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AppButton(
                            label: 'Next Tuesday',
                            backgroundColor: selectedDate.value == nextTuesday
                                ? primaryColor
                                : primaryAccentColor,
                            onPressed: () {
                              selectedDate.value = nextTuesday;
                            },
                          ),
                          thinSpace,
                          AppButton(
                            label: 'Next Week',
                            backgroundColor: selectedDate.value == nextWeek
                                ? primaryColor
                                : primaryAccentColor,
                            onPressed: () {
                              selectedDate.value = nextWeek;
                            },
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
                thinSpace,
                Theme(
                  data: ThemeData(
                    colorScheme: ColorScheme.light(
                      primary: primaryColor, // Header, selected date, buttons
                      onPrimary: secondaryColor, // Text on primary color
                      surface: primaryAccentColor, // Calendar background
                      onSurface: Colors.black, // Text color
                    ),
                    textTheme: const TextTheme(
                      bodyMedium:
                          TextStyle(color: Colors.black), // Default text color
                    ),
                  ),
                  child: DatePicker(
                    centerLeadingDate: true,
                    padding: EdgeInsets.zero,
                    minDate: minDate ?? DateTime(2021, 1, 1),
                    maxDate: showFutureDate
                        ? DateTime(2030, 12, 31)
                        : DateTime.now(),
                    currentDate: DateTime.now(),
                    initialDate: minDate,
                    selectedDate: selectedDate.value,
                    onDateSelected: (v) => selectedDate.value = v,
                    slidersColor: Colors.grey,
                    highlightColor: primaryColor,
                    daysOfTheWeekTextStyle: Get.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    enabledCellsTextStyle: Get.textTheme.bodyLarge,
                    disabledCellsTextStyle: Get.textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                    currentDateTextStyle: Get.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                thickSpace,
                Divider(
                  color: Colors.grey.shade400,
                ),
                thinSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      selectedDate.value != null
                          ? formatDate(selectedDate.value!)!
                          : 'No Date',
                      style: Get.textTheme.labelLarge,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    AppButton(
                      label: 'Cancel',
                      backgroundColor: primaryAccentColor,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    AppButton(
                      label: 'Save',
                      backgroundColor: primaryColor,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    return selectedDate.value;
  }
}
