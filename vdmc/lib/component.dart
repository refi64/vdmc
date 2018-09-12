@JS()
library vdmc.component;

import 'dart:html';

import 'package:vue/vue.dart';

import 'package:js/js.dart';

export 'package:js/js.dart';
export 'package:js/js_util.dart';

@VueMixin()
abstract class BaseMixin implements VueMixinRequirements {
  @prop
  String theming = '';
}

@JS('window')
external dynamic get _window;

@JS('define.amd')
external dynamic get _amd;
@JS('define.amd')
external set _amd(dynamic value);

@JS('eval.call')
external void _eval(dynamic scope, String code);

void eval(String code) {
  // Prevent Webpack from assigning itself to an AMD module under DDC.
  var origAmd = _amd;
  _amd = null;
  _eval(_window, code);
  _amd = origAmd;
}

StyleElement _styleElement = null;

void loadStyle(String style) {
  if (_styleElement == null) {
    _styleElement = new StyleElement();
    _styleElement.appendText('/* vdmc injected styles */\n\n');
    document.head.insertBefore(_styleElement, document.head.childNodes[0]);
  }

  _styleElement.appendText(style);
}
