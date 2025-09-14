import 'package:clean_arc/core/presentation/widget/CustomAppBar.dart';
import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/features/Consultation_logs_feature/widget/ConsultationLogItem.dart';
import 'package:clean_arc/features/Labs_feature/view/widget/SortResultsWidget.dart';
import 'package:flutter/material.dart';

class ConsultationLogsView extends StatelessWidget {
  const ConsultationLogsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: context.translate.consultationlogs),
      body: Column(
        children: [
          AzizSort(resultCount: 150, onSortTap: () {}),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const ConsultationLogItem(
                  doctorName: 'Dr. Mostafa Ahmed',
                  status: 'The video call ended',
                  day: 'Fri',
                  imageUrl: 'https://randomuser.me/api/portraits/men/4.jpg',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
