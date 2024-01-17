import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/local_db_services/local_db_services.dart';
import 'language_files/en_US.dart';
import 'language_files/id_ID.dart';
import 'language_files/ms_MY.dart';

class LocalizationService extends Translations {
  final localDBService = Get.find<LocalDBService>();
  // Dynamic Locale
  Locale get localeLang => _getLocaleFromLanguage(localDBService.getLanguage());

  // Default locale
  static final locale = Locale('en', 'US'); // NOT USING

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('en', 'US');

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    'English',
    'Bahasa Malaysia',
    'Bahasa Indonesia',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    Locale('en', 'US'),
    Locale('ms', 'MY'),
    Locale('id', 'ID'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': english,
        'ms_MY': malaysia,
        'id_ID': indonesia,
      };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    localDBService.setLanguage(lang);
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale!;
  }
}
