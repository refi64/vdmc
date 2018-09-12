import 'package:vue/vue.dart';

import 'package:vdmc/vdmc.dart';

@VueApp(el: '#app', components: const [MButton, MCard, MCheckbox, MChip, MChipSet,
                                       MIcon, MSwitch, MTopAppBar, MTypoBody, MTypoHeadline])
class App extends VueAppBase {
}

App app;

void main() {
  app = new App();
  app.create();
}
