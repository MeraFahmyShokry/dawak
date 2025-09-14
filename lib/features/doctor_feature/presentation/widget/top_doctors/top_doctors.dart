import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/assets.gen.dart';
import 'package:clean_arc/core/presentation/util/type_of_list.dart';
import 'package:clean_arc/core/presentation/widget/response_builder.dart';
import 'package:clean_arc/core/presentation/widget/show_all_widget.dart';
import 'package:clean_arc/core/routing/navigation_helper.dart';
import 'package:clean_arc/features/doctor_feature/domain/model/top_review_doctors_model/top_review_doctors_model.dart';
import 'package:clean_arc/features/doctor_feature/presentation/controller/top_doctors/top_doctors_cubit.dart';
import 'package:clean_arc/features/doctor_feature/presentation/view/tob_review_doctors_view.dart';
import 'package:clean_arc/features/doctor_feature/presentation/widget/items/doctor_items.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:clean_arc/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
class TopDoctorsWidget extends StatefulWidget {
  const TopDoctorsWidget({super.key});

  @override
  State<TopDoctorsWidget> createState() => _TopDoctorsWidgetState();
}

class _TopDoctorsWidgetState extends State<TopDoctorsWidget> {
  @override
  void initState() {
    context.read<DoctorReviewsCubit>().getAllDoctorReviews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DoctorReviewsCubit specialistsCubit = context.watch<DoctorReviewsCubit>();

    return Column(
      children: [
        ShowAllWidget(
          title: LocaleKeys.bestDoctors.tr(),
          onTap: () {
            NavigationHelper.push(context, TopReviewDoctorView());
          },
        ),
        SizedBox(
          height: 10,
        ),
        ResponseBuilderWidget<PaginatedList<TopDoctorsReview>>(
            onRetry: () {
              specialistsCubit.getAllDoctorReviews();
            },
            failure: specialistsCubit.state.isError,
            isLoading: specialistsCubit.state.isLoading,
            childBuilder: () {
              PaginatedState<TopDoctorsReview> state = specialistsCubit.state;
              return ListView.separated(
                padding: EdgeInsets.all(5),
                separatorBuilder: (context, index) => SizedBox(
                  height: 16,
                ),
                shrinkWrap: true,
                itemCount: state.isLoading ?? false
                    ? 20
                    : state.success?.value?.length ?? 0,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => DoctorItems(
                  id: state.success?.value?[index].doctorId,
                  title: state.success?.value?[index].doctorName,
                  specialist: '{أخصائي طب الأعصاب}',
                  rate: state.success?.value?[index].averageRating.toString() ??
                      '',
                  // distance: state.success?.value?[index].d.toString(),
                  image:state.success?.value?[index].imagUrl.toString(),
                ),
              );
            }),
      ],
    );
  }
}

