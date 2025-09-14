import 'package:auto_route/auto_route.dart';
import 'package:clean_arc/core/presentation/extintions/context_extintions.dart';
import 'package:clean_arc/core/presentation/util/style/images/fonts.gen.dart';
import 'package:flutter/material.dart';

import '../../../../core/presentation/util/app_dimensions.dart';
import '../../../../core/presentation/util/style/fonts/font_weight_helper.dart';
import '../../../../core/presentation/util/style/images/assets.gen.dart';
import '../../../../core/presentation/widget/custom_button_button.dart';
import '../../../../core/presentation/widget/text_app.dart';
import '../../../../core/routing/navigation_helper.dart';
import '../components/book_appointment_app_bar_component.dart';
import '../components/book_appointment_progress_bar_component.dart';
import 'labeled_card_input_field_component.dart';
class CardDetailsComponent extends StatelessWidget {
  const CardDetailsComponent({
    super.key,
    required TextEditingController creditCardNumberController,
    required TextEditingController creditCardHolderNameController,
    required TextEditingController cvvController,
    required TextEditingController expiryDateController,
  })  : _creditCardNumberController = creditCardNumberController,
        _creditCardHolderNameController = creditCardHolderNameController,
        _cvvController = cvvController,
        _expiryDateController = expiryDateController;

  final TextEditingController _creditCardNumberController;
  final TextEditingController _creditCardHolderNameController;
  final TextEditingController _cvvController;
  final TextEditingController _expiryDateController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
      decoration: BoxDecoration(
        border: Border(left: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          LabeledCardInputFieldComponent(
            creditCardNumberController: _creditCardNumberController,
            title: context.translate.cardNumber,
            hintTxt: context.translate.pleasEnterValidCardNumber,
            inputType: TextInputType.number,
          ),
          LabeledCardInputFieldComponent(
            creditCardNumberController: _creditCardHolderNameController,
            title: context.translate.cardholderName,
            hintTxt: context.translate.enterYourCreditCardHolderName,
          ),
          Row(
            // spacing: 8,
            children: [
              Expanded(
                child: LabeledCardInputFieldComponent(
                  creditCardNumberController: _cvvController,
                  title: context.translate.cvv,
                  inputType: TextInputType.number,
                ),
              ),
              SizedBox( width: 8,),
              Expanded(
                child: LabeledCardInputFieldComponent(
                  creditCardNumberController: _expiryDateController,
                  title: context.translate.expiryDate,
                  hintTxt: context.translate.creditCardDateFormat,
                  inputType: TextInputType.datetime,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}