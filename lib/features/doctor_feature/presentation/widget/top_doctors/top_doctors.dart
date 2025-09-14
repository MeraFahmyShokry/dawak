import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/response_builder.dart';
import 'package:clean_arc/core/presentation/widget/show_all_widget.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/top_review_doctors_model/top_review_doctors_model.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/main_doctors/main_doctors_cubit.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/top_doctors/top_doctors_cubit.dart';
import 'package:clean_arc/features/doctor_feature/presentation/view/tob_review_doctors_view.dart';
import 'package:clean_arc/features/doctor_feature/presentation/widget/items/doctor_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopDoctors extends StatelessWidget {
  const TopDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainDoctorsCubit, MainDoctorsState>(
      builder: (context, state) {
        return Column(
          children: [
            ShowAllWidget(
              title: context.translate.bestDoctors,
              onTap: () {
                NavigationHelper.push(context, TopReviewDoctorView());
              },
            ),
            SizedBox(height: 10),
            ListView.separated(
              padding: EdgeInsets.all(5),
              separatorBuilder: (context, index) => SizedBox(height: 16),
              shrinkWrap: true,
              itemCount: state.doctors?.value?.length ?? 0,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => DoctorItems(
                id: state.doctors?.value?[index].doctorId,
                title: state.doctors?.value?[index].doctorName,
                specialist: '{أخصائي طب الأعصاب}',
                rate: state.doctors?.value?[index].averageRating.toString() ?? '',
                // distance: state.success?.value?[index].d.toString(),
                image: state.doctors?.value?[index].imagUrl.toString(),
              ),
            ),
          ],
        );
      },
    );
  }
}
