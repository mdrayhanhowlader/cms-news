import 'package:cms_maahadtahfizaddin/app/core/widgets/poppins_text.dart';
import 'package:cms_maahadtahfizaddin/app/data/constants/extensions/double_extension.dart';
import 'package:cms_maahadtahfizaddin/app/modules/common_appbar/views/common_appbar_view.dart';
import 'package:cms_maahadtahfizaddin/app/modules/home/views/responsive_home/desktop_home/widgets/hightlight_news.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeesView extends StatelessWidget {
  const FeesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CommonAppbarView(),
            const SizedBox(
              height: 10,
            ),
            const HighlightNews(),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: Get.width * 0.9,
              child: DataTable(
                columns: <DataColumn>[
                  DataColumn(
                    label: PoppinsText(
                      title: 'BILL',
                      size: 16,
                    ),
                  ),
                  DataColumn(
                    label: PoppinsText(
                      title: 'Types Of Fees',
                      size: 16,
                    ),
                  ),
                  DataColumn(
                    label: PoppinsText(
                      title: 'Information Of Fees',
                      size: 16,
                    ),
                  ),
                ],
                rows: <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '1', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Entry fee for lower middle men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '2', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Tuition fee for upper middle men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '3', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Library fee for lower middle men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '4', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Admission fee for men 2023', size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '5', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Examination fee for lower men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '6', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Sports fee for upper middle men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '7', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Laboratory fee for lower middle men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '8', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Bus fee for upper middle men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '9', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Miscellaneous fee for lower middle men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '10', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Hostel fee for men 2023', size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '11', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Mess fee for lower middle men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(PoppinsText(title: '12', size: 12)),
                      DataCell(PoppinsText(
                          title: 'Mess fee for lower middle men 2023',
                          size: 12)),
                      DataCell(InkWell(
                        child: PoppinsText(
                          title: 'CLICK HERE',
                          size: 12,
                          color: Colors.blue,
                        ),
                        onTap: () {
                          // Navigate to another page
                          Get.toNamed('/home');
                        },
                      )),
                    ],
                  ),
                  // Add more DataRow entries as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
