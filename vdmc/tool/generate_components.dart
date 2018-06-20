import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

class Prop {
  String name, type, value;

  Prop(this.name, this.type, [this.value]);
}

class BoolProp extends Prop {
  BoolProp(String name, [bool value = false]): super(name, 'bool', value.toString());
}

class RequiredNumProp extends Prop {
  RequiredNumProp(String name): super(name, 'int');
}

class NumProp extends Prop {
  NumProp(String name, [num value]): super(name, 'num', value?.toString());
}

class RequiredStringProp extends Prop {
  RequiredStringProp(String name): super(name, 'String');
}

class StringProp extends Prop {
  StringProp(String name, [String value = '']):
    super(name, 'String', value != null ? "'$value'" : null);
}

class ObjectProp extends Prop {
  List<String> fields;

  ObjectProp(String name, String type, this.fields): super(name, type);
}

class Redirect {
  String name, type, code;

  Redirect(this.name, this.type, this.code);
}

class Method {
  String name;
  String returns;
  List<String> takes;

  Method(this.name, {this.returns = 'void', this.takes = const []});
}

class Model {
  String prop, event;

  Model({this.prop, this.event = 'change'});
}

class Component {
  String name;
  String code;
  List<Prop> props;
  List<Redirect> redirects;
  Model model;
  List<String> events;
  List<Method> methods;
  bool slot;
  List<String> slots;

  Component({this.name, this.code = '', this.redirects = const [], this.props = const [],
             this.model, this.events = const [], this.methods = const [], this.slot,
             this.slots = const []});
}

final modules = {
  'button': [
    Component(
      name: 'button',
      props: [
        BoolProp('raised'),
        BoolProp('unelevated'),
        BoolProp('outlined'),
        BoolProp('dense'),
        StringProp('href'),
      ],
      model: Model(prop: 'checked', event: 'change'),
      slots: ['icon'],
    )
  ],

  'card': [
    Component(
      name: 'card',
      props: [
        BoolProp('outlined'),
        BoolProp('fullBleedAction'),
        BoolProp('primaryAction'),
      ],
      slots: ['media', 'actionButtons', 'actionIcons'],
    ),
  ],

  'chips': [
    Component(
      name: 'chip',
      props: [
        BoolProp('selected'),
      ],
      model: Model(prop: 'selected'),
      events: ['remove'],
      slot: true,
    ),
    Component(
      name: 'chip-set',
      props: [
        BoolProp('choice'),
        BoolProp('filter'),
        BoolProp('input'),
      ],
      slot: true,
    ),
  ],

  'checkbox': [
    Component(
      name: 'checkbox',
      props: [
        BoolProp('checked'),
        BoolProp('indeterminate'),
      ],
      model: Model(prop: 'checked'),
    ),
  ],

  'dialog': [
    Component(
      name: 'dialog',
      props: [
        BoolProp('scrollable'),
        BoolProp('open'),
      ],
      model: Model(prop: 'open'),
      events: ['accept', 'cancel'],
      slot: false,
      slots: ['header', 'body', 'acceptButton', 'cancelButton', 'dialogButton'],
    ),
  ],

  'drawer': [
    Component(
      name: 'drawer-permanent',
      slots: ['toolbarSpacer'],
    ),
    Component(
      name: 'drawer-persistent',
      props: [
        BoolProp('open', true),
      ],
      model: Model(prop: 'open'),
      slots: ['toolbarSpacer', 'header'],
    ),
    Component(
      name: 'drawer-temporary',
      props: [
        BoolProp('open'),
      ],
      model: Model(prop: 'open'),
      slots: ['toolbarSpacer', 'header'],
    ),
    Component(
      name: 'drawer-content',
      slot: true,
    ),
    Component(
      name: 'drawer-header',
      slot: true,
    ),
    Component(
      name: 'drawer-toolbar-spacer',
      slot: true,
    ),
  ],

  'elevation': [
    Component(
      name: 'elevation',
      props: [
        NumProp('level'),
        BoolProp('transition'),
      ],
      slot: true,
    )
  ],

  'fab': [
    Component(
      name: 'fab',
      props: [
        BoolProp('mini'),
        BoolProp('absoluteRight'),
        BoolProp('excited'),
      ],
      slot: true,
    ),
  ],

  'floating-label': [
    Component(
      name: 'float-above',
      props: [
        BoolProp('floatAbove'),
        BoolProp('shake'),
      ],
      slot: true,
    ),
  ],

  'form-field': [
    Component(
      name: 'form-field',
      props: [
        BoolProp('alignEnd'),
      ],
      slot: true,
    ),
  ],

  'icon-button': [
    Component(
      name: 'icon-button',
      props: [
        StringProp('toggleOnContent'),
        StringProp('toggleOnLabel'),
        StringProp('toggleOnClass'),
        StringProp('toggleOffContent'),
        StringProp('toggleOffLabel'),
        StringProp('toggleOffClass'),
        BoolProp('value'),
      ],
      model: Model(prop: 'value'),
      slots: ['toggleOn', 'toggleOff'],
    ),
  ],

  'icon': [
    Component(
      name: 'icon',
      props: [
        RequiredStringProp('icon'),
      ],
    ),
  ],

  'image-list': [
    Component(
      name: 'image-list',
      props: [
        NumProp('standardColumn'),
        NumProp('masonryColumn'),
        BoolProp('textProtection'),
      ],
      slot: true,
    ),
    Component(
      name: 'image-list-item',
      props: [
        BoolProp('adjustAspectRatio', true),
      ],
      slots: ['image'],
    ),
  ],

  'layout-grid': [
    Component(
      name: 'layout-grid',
      props: [
        BoolProp('fixedColumWidth'),
        StringProp('align', null),
      ],
      slot: true,
    ),
    Component(
      name: 'layout-grid-cell',
      props: [
        NumProp('span'),
        NumProp('spanDesktop'),
        NumProp('spanTablet'),
        NumProp('spanPhone'),
        NumProp('order'),
        StringProp('align', null),
      ],
      slot: true,
    ),
    Component(
      name: 'layout-grid-inner',
      slot: true,
    ),
  ],

  'line-ripple': [
    Component(
      name: 'line-ripple',
      methods: [
        Method('activate'),
        Method('deactivate'),
        Method('setRippleCenter', takes: ['num']),
      ],
    ),
  ],

  'linear-progress': [
    Component(
      name: 'linear-progress',
      props: [
        BoolProp('open'),
        BoolProp('indeterminate'),
        BoolProp('reverse'),
        NumProp('progress'),
        NumProp('buffer'),
      ],
    ),
  ],

  'list': [
    Component(
      name: 'list',
      props: [
        BoolProp('avatar'),
        BoolProp('dense'),
        BoolProp('twoLine'),
        BoolProp('nonInteractive'),
      ],
      slot: true,
    ),
    Component(
      name: 'list-divider',
      props: [
        BoolProp('inset'),
        BoolProp('padded'),
      ],
    ),
    Component(
      name: 'list-group',
      slot: true,
    ),
    Component(
      name: 'list-group-divider',
    ),
    Component(
      name: 'list-group-subheader',
      slot: true,
    ),
    Component(
      name: 'list-item',
      props: [
        BoolProp('activated'),
        BoolProp('selected'),
      ],
      slots: ['graphic', 'text', 'secondaryText', 'meta'],
    ),
  ],

  'menu': [
    Component(
      name: 'menu',
      props: [
        BoolProp('open'),
        BoolProp('quickOpen'),
      ],
      model: Model(prop: 'open'),
      events: ['select', 'cancel'],
      slot: true,
    ),
    Component(
      name: 'menu-anchor',
      slot: true,
    ),
  ],

  'notched-outline': [
    Component(
      name: 'notched-outline',
      props: [
        BoolProp('notched'),
      ],
    ),
  ],

  'radio': [
    Component(
      name: 'radio',
      props: [
        BoolProp('checked'),
        BoolProp('disabled'),
        StringProp('value'),
        StringProp('name'),
      ],
      model: Model(prop: 'checked'),
    ),
  ],

  'ripple': [
    Component(
      name: 'ripple',
      props: [
        BoolProp('unbounded'),
        BoolProp('accent'),
      ],
      slot: true,
    ),
  ],

  // 'select': [
  //   Component(
  //     name: 'select',
  //     props: [
  //       BoolProp('disabled'),
  //       BoolProp('box'),
  //     ],
  //     slots: ['label', 'bottomLine'],
  //   ),
  // ],

  'shape': [
    Component(
      name: 'shape',
      props: [
        BoolProp('topLeft'),
        BoolProp('topRight'),
        BoolProp('bottomRight'),
        BoolProp('bottomLeft'),
      ],
      slot: true,
    ),
  ],

  'slider': [
    Component(
      name: 'slider',
      props: [
        StringProp('label', null),
        BoolProp('displayMarkers'),
        BoolProp('discrete'),
        NumProp('value'),
        RequiredNumProp('min'),
        RequiredNumProp('max'),
        NumProp('step'),
        BoolProp('disabled'),
      ],
    ),
  ],

  'snackbar': [
    Component(
      name: 'snackbar',
      code: r'''
typedef void SnackbarActionHandler();

class SnackbarOptions {
  String message;
  int timeout;
  SnackbarActionHandler actionHandler;
  String actionText;
  bool multiline;
  bool actionOnBottom;

  SnackbarOptions({this.message, this.timeout, this.actionHandler, this.actionText,
                   this.multiline, this.actionOnBottom});
}
''',
      props: [
        BoolProp('alignStart'),
        BoolProp('dismissesOnAction', true),
        BoolProp('open'),
      ],
      redirects: [
        Redirect('options', 'SnackbarOptions', '''mapToJs({
      'message': options?.message,
      'timeout': options.timeout,
      'actionHandler': options?.actionHandler != null
                        ? allowInterop(options.actionHandler) : null,
      'actionText': options?.actionText,
      'multiline': options?.multiline,
      'actionOnBottom': options?.actionOnBottom,
    })'''),
      ],
    ),
  ],

  'switch': [
    Component(
      name: 'switch',
      props: [
        BoolProp('checked'),
        BoolProp('disabled'),
      ],
      model: Model(prop: 'checked'),
    ),
  ],

  'tabs': [
    Component(
      name: 'tab',
      props: [
        BoolProp('active'),
        BoolProp('label', true),
      ],
      slots: ['icon'],
    ),
    Component(
      name: 'tab-bar',
      props: [
        BoolProp('scrollable'),
        BoolProp('iconTabBar'),
        BoolProp('withIconAndText'),
      ],
      slot: true,
    ),
  ],

  'textfield': [
    Component(
      name: 'textfield',
      props: [
        StringProp('value'),
        BoolProp('disabled'),
        BoolProp('upgraded'),
        BoolProp('fullWidth'),
        BoolProp('box'),
        BoolProp('outlined'),
        BoolProp('dense'),
        BoolProp('focused'),
        BoolProp('textarea'),
      ],
      events: ['input'],
      slots: ['leadingIcon', 'trailingIcon', 'bottomLine'],
    ),
    Component(
      name: 'textfield-helptext',
      props: [
        BoolProp('persistent'),
        BoolProp('validationMsg'),
      ],
      slot: true,
    ),
  ],

  'theme': [
    Component(
      name: 'theme',
      redirects: [
        Redirect('customStyle', 'Map<String, String>', 'mapToJs(customStyle)'),
      ],
    ),
  ],

  'top-app-bar': [
    Component(
      name: 'top-app-bar',
      props: [
        BoolProp('collapsed'),
        BoolProp('short'),
        BoolProp('prominent'),
        BoolProp('dense'),
        BoolProp('fixed'),
      ],
      events: ['onNavigation'],
      slots: ['navigation', 'actions'],
    ),
    Component(
      name: 'top-app-bar-fixed-adjust',
      props: [
        BoolProp('dense'),
        BoolProp('short'),
        BoolProp('prominent'),
        BoolProp('denseProminent'),
      ],
      slot: true,
    ),
  ],

  'typography': [
    Component(
      name: 'typography',
      slot: true,
    ),
    Component(
      name: 'typo-body',
      props: [
        NumProp('level'),
      ],
      slot: true,
    ),
    Component(
      name: 'typo-button',
      slot: true,
    ),
    Component(
      name: 'typo-caption',
      slot: true,
    ),
    Component(
      name: 'typo-headline',
      props: [
        NumProp('level'),
      ],
      slot: true,
    ),
    Component(
      name: 'typo-overline',
      slot: true,
    ),
    Component(
      name: 'typo-subheading',
      props: [
        NumProp('level'),
      ],
      slot: true,
    ),
  ],
};

final URL = 'https://unpkg.com/material-components-vue@0.23.5/dist';

String pascalCase(String str) =>
  str.split('-').map((p) => p[0].toUpperCase() + p.substring(1)).join('');

void main(List<String> args) async {
  var script = Platform.script.toFilePath();
  var generatedDirectory = p.join(p.dirname(p.dirname(script)), 'lib', 'generated');

  var debug = false;
  if (args.isNotEmpty && args[0] == 'debug') {
    debug = true;
    args = args.sublist(1);
  }

  var all = new File(p.join(generatedDirectory, 'all.dart')).openWrite();

  for (var module in modules.keys) {
    var snakeCase = module.replaceAll('-', '_');

    all.writeln("export '$snakeCase.vue.dart';");

    if (args.isNotEmpty && !args.contains(module)) {
      continue;
    }

    var output = new File(p.join(generatedDirectory, '$snakeCase.dart')).openWrite();
    print('$module:');

    output.writeln("import 'package:vue/vue.dart';");
    output.writeln("import '../component.vue.dart';");
    output.writeln();

    var jsFile = debug ? 'index.js' : '$module.min.js';
    var js = (await http.get('$URL/$module/$jsFile')).body;
    var css = (await http.get('$URL/$module/$module.min.css')).body;

    output.writeln('bool _initialized = false;');
    output.writeln('void _initialize() {');
    output.writeln('  if (_initialized) return;');
    output.writeln('  eval(r"""$js""");');
    if (!css.contains('Cannot find module')) {
      output.writeln('  loadStyle(r"""$css""");');
    }
    output.writeln('  _initialized = true;');
    output.writeln('}');

    for (var component in modules[module]) {
      var name = component.name;
      var cls = 'M${pascalCase(name)}';
      print('  | $name');

      output.writeln();

      if (component.code.isNotEmpty) {
        output.writeln(component.code);
      }

      output.writeln("@VueComponent(mixins: const [BaseMixin], template: r'''");
      output.writeln('<m-$name');
      output.writeln('  v-on="\$listeners"');
      output.writeln('  :theming="theming"');
      output.writeln('  ref="inner"');

      for (var prop in component.props) {
        var propName = prop.name;
        if (component.model?.prop == propName) {
          var event = component.model.event;
          output.writeln('  :$propName="$propName"');
          output.writeln(
            '''  @$event="forward('$event', Array.prototype.slice.call(arguments))"''');
        } else {
          output.writeln('  :$propName="$propName"');
        }
      }

      for (var redirect in component.redirects) {
        output.writeln('  :${redirect.name}="_${redirect.name}"');
      }

      for (var event in component.events ?? []) {
        output.writeln('''  @$event="\$emit('$event')"''');
      }

      output.writeln('>');

      if (component.slot ?? component.slots.isNotEmpty) {
        output.writeln('  <slot v-if="\$slots.default"></slot>');
      }

      for (var slot in component.slots) {
        output.writeln('  <template v-if="\$slots.$slot" slot="$slot">');
        output.writeln('    <slot name="$slot"></slot>');
        output.writeln('  </template>');
      }

      output.writeln("</m-$name>''')");
      output.writeln('class $cls extends VueComponentBase with BaseMixin {');
      output.writeln('  $cls() { _initialize(); }');

      output.writeln('  @ref');
      output.writeln('  dynamic inner;');

      for (var prop in component.props) {
        output.writeln('  @prop');
        output.write('  ${prop.type} ${prop.name}');
        if (prop.value != null) {
          output.write(' = ${prop.value}');
        }
        output.writeln(';');
      }

      for (var redirect in component.redirects) {
        output.writeln('  @prop');
        output.writeln('  ${redirect.type} ${redirect.name};');
        output.writeln('  @computed');
        output.writeln('  dynamic get _${redirect.name} => ${redirect.code};');
      }

      for (var method in component.methods) {
        output.writeln('  @method');
        output.write('  ${method.returns} ${method.name}(');

        for (var i = 0; i < method.takes.length; i++) {
          output.write('${method.takes[i]} a$i, ');
        }

        output.write(") => callMethod(inner, '${method.name}', [");
        for (var i = 0; i < method.takes.length; i++) {
          output.write('a$i, ');
        }
        output.writeln(']);');
      }

      output.writeln('}');
    }

    output.close();
  }

  all.close();
}
