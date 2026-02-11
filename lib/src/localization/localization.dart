import 'package:flutter/material.dart';
import 'package:country_selector/country_selector.dart';

import 'generated/phone_field_localization_impl.dart';
import 'generated/phone_field_localization_impl_en.dart';

abstract class PhoneFieldLocalization {
  static const Set<LocalizationsDelegate> delegates = {
    ...CountrySelectorLocalization.localizationsDelegates,
    PhoneFieldLocalizationImpl.delegate,
  };

  static PhoneFieldLocalizationImpl of(BuildContext context) {
    return PhoneFieldLocalizationImpl.of(context) ??
        PhoneFieldLocalizationImplEn();
  }
}
