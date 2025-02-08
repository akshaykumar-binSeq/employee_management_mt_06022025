import 'package:employee_management_mt_06022025/app/common/constants.dart';
import 'package:employee_management_mt_06022025/app/modules/employee/views/add_or_edit_employee_view.dart';
import 'package:employee_management_mt_06022025/app/modules/employee/views/widgets/employee_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/employee_controller.dart';

class EmployeeView extends GetView<EmployeeController> {
  const EmployeeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Employee List',
          style: Get.textTheme.titleLarge?.copyWith(
            color: secondaryColor,
          ),
        ),
      ),

      // floatingActionButton: AddEmployeeView()
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => AddOrEditEmployeeView());
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Same as ClipRRect
        ),
        backgroundColor: primaryColor, // Customize color
        child: Icon(Icons.add, size: 30, color: secondaryColor),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.loadEmployees();
          return Future.value();
        },
        child: Obx(
          () => SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: controller.isLoading.value
                ? SizedBox(
                    height: Get.height - 80,
                    width: Get.width,
                    child: Center(child: CircularProgressIndicator()),
                  )
                : controller.employees.value.isEmpty
                    ? SizedBox(
                        height: Get.height - 80,
                        width: Get.width,
                        child: Image.asset('assets/empty_data.png'),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            color: secondaryAccentColor,
                            child: Text(
                              'Current Employees',
                              style: Get.textTheme.titleMedium?.copyWith(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.currentEmployees.length,
                            itemBuilder: (context, index) {
                              return EmployeeListTile(
                                  controller.currentEmployees[index]);
                            },
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            color: secondaryAccentColor,
                            child: Text(
                              'Previous Employees',
                              style: Get.textTheme.titleMedium?.copyWith(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: controller.previousEmployees.length,
                            itemBuilder: (context, index) {
                              return EmployeeListTile(
                                  controller.previousEmployees[index]);
                            },
                          ),
                        ],
                      ),
          ),
        ),
      ),
    );
  }
}
