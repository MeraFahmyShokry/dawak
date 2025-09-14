// import 'package:clean_arc/core/utils_package/utils_package.dart';
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:clean_arc/features/medicine_feature/cubit_cubit/medicine_cubit.dart';
import 'package:clean_arc/features/medicine_feature/view/item/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWidget extends StatelessWidget {
  final IncrementType type;

  const CounterWidget({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicineCubit, MedicineState>(
      builder: (context, state) {
        final cubit = context.read<MedicineCubit>();

        int value = type == IncrementType.dosage
            ? state.dosage
            : type == IncrementType.duration
                ? state.duration
                : state.times;

        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  if (type == IncrementType.dosage) {
                    cubit.decrementDosage();
                  } else if (type == IncrementType.duration) {
                    cubit.decrementDuration();
                  } else {
                    cubit.decrementTimes();
                  }
                },
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.remove,
                          color: context.color.primaryColor?.withOpacity(0.6),
                        ))),
              ),
              Container(width: 1, height: 30, color: Colors.black),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextApp(
                  "$value",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(width: 1, height: 30, color: Colors.black),
              GestureDetector(
                onTap: () {
                  if (type == IncrementType.dosage) {
                    cubit.incrementDosage();
                  } else if (type == IncrementType.duration) {
                    cubit.incrementDuration();
                  } else {
                    cubit.incrementTimes();
                  }
                },
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.add,
                          color: context.color.primaryColor?.withOpacity(0.6),
                        ))),
              ),
            ],
          ),
        );
      },
    );
  }
}
