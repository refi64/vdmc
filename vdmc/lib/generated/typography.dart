import 'package:vue/vue.dart';
import '../component.vue.dart';

bool _initialized = false;
void _initialize() {
  if (_initialized) return;
  eval(r"""!function(t,e){if("object"==typeof exports&&"object"==typeof module)module.exports=e();else if("function"==typeof define&&define.amd)define([],e);else{var n=e();for(var r in n)("object"==typeof exports?exports:t)[r]=n[r]}}(window,function(){return function(t){var e={};function n(r){if(e[r])return e[r].exports;var o=e[r]={i:r,l:!1,exports:{}};return t[r].call(o.exports,o,o.exports,n),o.l=!0,o.exports}return n.m=t,n.c=e,n.d=function(t,e,r){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:r})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var r=Object.create(null);if(n.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var o in t)n.d(r,o,function(e){return t[e]}.bind(null,o));return r},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=44)}({0:function(t,e,n){"use strict";var r={inheritAttrs:!1},o=["primary","secondary","background","surface","on-primary","on-secondary","on-surface","primary-bg","secondary-bg","text-primary-on-light","text-secondary-on-light","text-hint-on-light","text-disabled-on-light","text-icon-on-light","text-primary-on-dark","text-secondary-on-dark","text-hint-on-dark","text-disabled-on-dark","text-icon-on-dark"],i={props:{theming:{type:String,default:""}},mounted:function(){o.indexOf(this.theming)>-1&&this.$el.classList.add("mdc-theme--"+this.theming)}};n.d(e,"a",function(){return r}),n.d(e,"b",function(){return i})},3:function(t,e,n){"use strict";function r(t,e,n,r,o,i,s,u){var a,l="function"==typeof t?t.options:t;if(e&&(l.render=e,l.staticRenderFns=n,l._compiled=!0),r&&(l.functional=!0),i&&(l._scopeId="data-v-"+i),s?(a=function(t){(t=t||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(t=__VUE_SSR_CONTEXT__),o&&o.call(this,t),t&&t._registeredComponents&&t._registeredComponents.add(s)},l._ssrRegister=a):o&&(a=u?function(){o.call(this,this.$root.$options.shadowRoot)}:o),a)if(l.functional){l._injectStyles=a;var c=l.render;l.render=function(t,e){return a.call(e),c(t,e)}}else{var d=l.beforeCreate;l.beforeCreate=d?[].concat(d,a):[a]}return{exports:t,options:l}}n.d(e,"a",function(){return r})},44:function(t,e,n){"use strict";n.r(e);var r=n(0),o={mixins:[r.a,r.b],props:{level:{type:Number,required:!0,validator:function(t){return t>0&&t<=2}}},computed:{classes:function(){var t={};return t["mdc-typography--body"+this.level]=!0,t}}},i=n(3),s=Object(i.a)(o,function(){var t=this.$createElement;return(this._self._c||t)("span",{class:this.classes},[this._t("default")],2)},[],!1,null,null,null).exports,u={mixins:[r.a,r.b]},a=Object(i.a)(u,function(){var t=this.$createElement;return(this._self._c||t)("span",{staticClass:"mdc-typography--button"},[this._t("default")],2)},[],!1,null,null,null).exports,l={mixins:[r.a,r.b]},c=Object(i.a)(l,function(){var t=this.$createElement;return(this._self._c||t)("span",{staticClass:"mdc-typography--caption"},[this._t("default")],2)},[],!1,null,null,null).exports,d={mixins:[r.a,r.b],props:{level:{type:Number,required:!0,validator:function(t){return t>=1&&t<=6}}},computed:{classes:function(){var t={};return t["mdc-typography--headline"+this.level]=!0,t}}},p=Object(i.a)(d,function(){var t=this.$createElement;return(this._self._c||t)("span",{class:this.classes},[this._t("default")],2)},[],!1,null,null,null).exports,f={mixins:[r.a,r.b]},m=Object(i.a)(f,function(){var t=this.$createElement;return(this._self._c||t)("span",{staticClass:"mdc-typography--overline"},[this._t("default")],2)},[],!1,null,null,null).exports,h={mixins:[r.a,r.b],props:{level:{type:Number,required:!0,validator:function(t){return t>0&&t<=2}}},computed:{classes:function(){var t={};return t["mdc-typography--subheading"+this.level]=!0,t}}},y=Object(i.a)(h,function(){var t=this.$createElement;return(this._self._c||t)("span",{class:this.classes},[this._t("default")],2)},[],!1,null,null,null).exports,b={mixins:[r.a,r.b]},_=Object(i.a)(b,function(){var t=this.$createElement;return(this._self._c||t)("div",{staticClass:"mdc-typography"},[this._t("default")],2)},[],!1,null,null,null).exports,v=(n(47),n(5)),x={install:function(t){t.component("m-typo-body",s),t.component("m-typo-button",a),t.component("m-typo-caption",c),t.component("m-typo-headline",p),t.component("m-typo-overline",m),t.component("m-typo-subheading",y),t.component("m-typography",_)}};e.default=x,Object(v.b)(x)},47:function(t,e,n){},5:function(t,e,n){"use strict";function r(t,e){return e=e||100,function(){if(!t.debouncing){var n=Array.prototype.slice.apply(arguments);t.lastReturnVal=t.apply(window,n),t.debouncing=!0}return clearTimeout(t.debounceTimeout),t.debounceTimeout=setTimeout(function(){t.debouncing=!1},e),t.lastReturnVal}}function o(t){"undefined"!=typeof window&&window.Vue&&window.Vue.use(t)}n.d(e,"a",function(){return r}),n.d(e,"b",function(){return o})}})});""");
  loadStyle(r""".mdc-typography{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased}.mdc-typography--headline1{font-size:6rem;line-height:6rem;letter-spacing:-.01562em}.mdc-typography--headline1,.mdc-typography--headline2{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;font-weight:300;text-decoration:inherit;text-transform:inherit}.mdc-typography--headline2{font-size:3.75rem;line-height:3.75rem;letter-spacing:-.00833em}.mdc-typography--headline3{font-size:3rem;line-height:3.125rem;letter-spacing:normal}.mdc-typography--headline3,.mdc-typography--headline4{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;font-weight:400;text-decoration:inherit;text-transform:inherit}.mdc-typography--headline4{font-size:2.125rem;line-height:2.5rem;letter-spacing:.00735em}.mdc-typography--headline5{font-size:1.5rem;font-weight:400;letter-spacing:normal}.mdc-typography--headline5,.mdc-typography--headline6{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;line-height:2rem;text-decoration:inherit;text-transform:inherit}.mdc-typography--headline6{font-size:1.25rem;font-weight:500;letter-spacing:.0125em}.mdc-typography--subtitle1{font-size:1rem;line-height:1.75rem;font-weight:400;letter-spacing:.00937em}.mdc-typography--subtitle1,.mdc-typography--subtitle2{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;text-decoration:inherit;text-transform:inherit}.mdc-typography--subtitle2{font-size:.875rem;line-height:1.375rem;font-weight:500;letter-spacing:.00714em}.mdc-typography--body1{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;font-size:1rem;line-height:1.5rem;font-weight:400;letter-spacing:.03125em;text-decoration:inherit;text-transform:inherit}.mdc-typography--body2{font-size:.875rem;letter-spacing:.01786em}.mdc-typography--body2,.mdc-typography--caption{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;line-height:1.25rem;font-weight:400;text-decoration:inherit;text-transform:inherit}.mdc-typography--caption{font-size:.75rem;letter-spacing:.03333em}.mdc-typography--button{font-size:.875rem;line-height:2.25rem;letter-spacing:.08929em}.mdc-typography--button,.mdc-typography--overline{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;font-weight:500;text-decoration:none;text-transform:uppercase}.mdc-typography--overline{font-size:.75rem;line-height:2rem;letter-spacing:.16667em}""");
  _initialized = true;
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-typography
  v-on="$listeners"
  :theming="theming"
>
  <slot v-if="$slots.default"></slot>
</m-typography>''')
class MTypography extends VueComponentBase with BaseMixin {
  MTypography() { _initialize(); }
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-typo-body
  v-on="$listeners"
  :theming="theming"
  :level="level"
>
  <slot v-if="$slots.default"></slot>
</m-typo-body>''')
class MTypoBody extends VueComponentBase with BaseMixin {
  MTypoBody() { _initialize(); }
  @prop
  num level;
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-typo-button
  v-on="$listeners"
  :theming="theming"
>
  <slot v-if="$slots.default"></slot>
</m-typo-button>''')
class MTypoButton extends VueComponentBase with BaseMixin {
  MTypoButton() { _initialize(); }
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-typo-caption
  v-on="$listeners"
  :theming="theming"
>
  <slot v-if="$slots.default"></slot>
</m-typo-caption>''')
class MTypoCaption extends VueComponentBase with BaseMixin {
  MTypoCaption() { _initialize(); }
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-typo-headline
  v-on="$listeners"
  :theming="theming"
  :level="level"
>
  <slot v-if="$slots.default"></slot>
</m-typo-headline>''')
class MTypoHeadline extends VueComponentBase with BaseMixin {
  MTypoHeadline() { _initialize(); }
  @prop
  num level;
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-typo-overline
  v-on="$listeners"
  :theming="theming"
>
  <slot v-if="$slots.default"></slot>
</m-typo-overline>''')
class MTypoOverline extends VueComponentBase with BaseMixin {
  MTypoOverline() { _initialize(); }
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-typo-subheading
  v-on="$listeners"
  :theming="theming"
  :level="level"
>
  <slot v-if="$slots.default"></slot>
</m-typo-subheading>''')
class MTypoSubheading extends VueComponentBase with BaseMixin {
  MTypoSubheading() { _initialize(); }
  @prop
  num level;
}
