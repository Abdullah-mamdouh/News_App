import 'package:flutter/material.dart';

class PageModel {
  String _backgraond;
  String _title;
  String _description;
  IconData _icon;

  PageModel(this._backgraond,this._icon,this._title,this._description);

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  IconData get icon => _icon;

  set icon(IconData value) {
    _icon = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get backgraond => _backgraond;

  set backgraond(String value) {
    _backgraond = value;
  }

}
