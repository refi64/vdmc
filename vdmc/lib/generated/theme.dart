import 'package:vue/vue.dart';
import '../component.vue.dart';

bool _initialized = false;
void _initialize() {
  if (_initialized) return;
  eval(r"""!function(e,t){if("object"==typeof exports&&"object"==typeof module)module.exports=t();else if("function"==typeof define&&define.amd)define([],t);else{var n=t();for(var o in n)("object"==typeof exports?exports:e)[o]=n[o]}}(window,function(){return function(e){var t={};function n(o){if(t[o])return t[o].exports;var r=t[o]={i:o,l:!1,exports:{}};return e[o].call(r.exports,r,r.exports,n),r.l=!0,r.exports}return n.m=e,n.c=t,n.d=function(e,t,o){n.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:o})},n.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},n.t=function(e,t){if(1&t&&(e=n(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var o=Object.create(null);if(n.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var r in e)n.d(o,r,function(t){return e[t]}.bind(null,r));return o},n.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return n.d(t,"a",t),t},n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},n.p="",n(n.s=14)}({14:function(e,t,n){"use strict";n.r(t);var o={props:{customStyle:{type:Object,default:function(){}}}},r=n(3),i=Object(r.a)(o,function(){var e=this.$createElement;return(this._self._c||e)("div",{style:this.customStyle},[this._t("default")],2)},[],!1,null,null,null).exports,u=(n(53),n(5)),c={install:function(e){e.component("m-theme",i)}};t.default=c,Object(u.b)(c)},3:function(e,t,n){"use strict";function o(e,t,n,o,r,i,u,c){var f,s="function"==typeof e?e.options:e;if(t&&(s.render=t,s.staticRenderFns=n,s._compiled=!0),o&&(s.functional=!0),i&&(s._scopeId="data-v-"+i),u?(f=function(e){(e=e||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(e=__VUE_SSR_CONTEXT__),r&&r.call(this,e),e&&e._registeredComponents&&e._registeredComponents.add(u)},s._ssrRegister=f):r&&(f=c?function(){r.call(this,this.$root.$options.shadowRoot)}:r),f)if(s.functional){s._injectStyles=f;var l=s.render;s.render=function(e,t){return f.call(t),l(e,t)}}else{var a=s.beforeCreate;s.beforeCreate=a?[].concat(a,f):[f]}return{exports:e,options:s}}n.d(t,"a",function(){return o})},5:function(e,t,n){"use strict";function o(e,t){return t=t||100,function(){if(!e.debouncing){var n=Array.prototype.slice.apply(arguments);e.lastReturnVal=e.apply(window,n),e.debouncing=!0}return clearTimeout(e.debounceTimeout),e.debounceTimeout=setTimeout(function(){e.debouncing=!1},t),e.lastReturnVal}}function r(e){"undefined"!=typeof window&&window.Vue&&window.Vue.use(e)}n.d(t,"a",function(){return o}),n.d(t,"b",function(){return r})},53:function(e,t,n){}})});""");
  loadStyle(r""":root{--mdc-theme-primary:#6200ee;--mdc-theme-secondary:#018786;--mdc-theme-background:#fff;--mdc-theme-surface:#fff;--mdc-theme-on-primary:#fff;--mdc-theme-on-secondary:#fff;--mdc-theme-on-surface:#000;--mdc-theme-text-primary-on-background:rgba(0,0,0,.87);--mdc-theme-text-secondary-on-background:rgba(0,0,0,.54);--mdc-theme-text-hint-on-background:rgba(0,0,0,.38);--mdc-theme-text-disabled-on-background:rgba(0,0,0,.38);--mdc-theme-text-icon-on-background:rgba(0,0,0,.38);--mdc-theme-text-primary-on-light:rgba(0,0,0,.87);--mdc-theme-text-secondary-on-light:rgba(0,0,0,.54);--mdc-theme-text-hint-on-light:rgba(0,0,0,.38);--mdc-theme-text-disabled-on-light:rgba(0,0,0,.38);--mdc-theme-text-icon-on-light:rgba(0,0,0,.38);--mdc-theme-text-primary-on-dark:#fff;--mdc-theme-text-secondary-on-dark:hsla(0,0%,100%,.7);--mdc-theme-text-hint-on-dark:hsla(0,0%,100%,.5);--mdc-theme-text-disabled-on-dark:hsla(0,0%,100%,.5);--mdc-theme-text-icon-on-dark:hsla(0,0%,100%,.5)}.mdc-theme--primary{color:#6200ee!important;color:var(--mdc-theme-primary,#6200ee)!important}.mdc-theme--secondary{color:#018786!important;color:var(--mdc-theme-secondary,#018786)!important}.mdc-theme--background{background-color:#fff;background-color:var(--mdc-theme-background,#fff)}.mdc-theme--surface{background-color:#fff;background-color:var(--mdc-theme-surface,#fff)}.mdc-theme--on-primary{color:#fff!important;color:var(--mdc-theme-on-primary,#fff)!important}.mdc-theme--on-secondary{color:#fff!important;color:var(--mdc-theme-on-secondary,#fff)!important}.mdc-theme--on-surface{color:#000!important;color:var(--mdc-theme-on-surface,#000)!important}.mdc-theme--text-primary-on-background{color:rgba(0,0,0,.87)!important;color:var(--mdc-theme-text-primary-on-background,rgba(0,0,0,.87))!important}.mdc-theme--text-secondary-on-background{color:rgba(0,0,0,.54)!important;color:var(--mdc-theme-text-secondary-on-background,rgba(0,0,0,.54))!important}.mdc-theme--text-hint-on-background{color:rgba(0,0,0,.38)!important;color:var(--mdc-theme-text-hint-on-background,rgba(0,0,0,.38))!important}.mdc-theme--text-disabled-on-background{color:rgba(0,0,0,.38)!important;color:var(--mdc-theme-text-disabled-on-background,rgba(0,0,0,.38))!important}.mdc-theme--text-icon-on-background{color:rgba(0,0,0,.38)!important;color:var(--mdc-theme-text-icon-on-background,rgba(0,0,0,.38))!important}.mdc-theme--text-primary-on-light{color:rgba(0,0,0,.87)!important;color:var(--mdc-theme-text-primary-on-light,rgba(0,0,0,.87))!important}.mdc-theme--text-secondary-on-light{color:rgba(0,0,0,.54)!important;color:var(--mdc-theme-text-secondary-on-light,rgba(0,0,0,.54))!important}.mdc-theme--text-hint-on-light{color:rgba(0,0,0,.38)!important;color:var(--mdc-theme-text-hint-on-light,rgba(0,0,0,.38))!important}.mdc-theme--text-disabled-on-light{color:rgba(0,0,0,.38)!important;color:var(--mdc-theme-text-disabled-on-light,rgba(0,0,0,.38))!important}.mdc-theme--text-icon-on-light{color:rgba(0,0,0,.38)!important;color:var(--mdc-theme-text-icon-on-light,rgba(0,0,0,.38))!important}.mdc-theme--text-primary-on-dark{color:#fff!important;color:var(--mdc-theme-text-primary-on-dark,#fff)!important}.mdc-theme--text-secondary-on-dark{color:hsla(0,0%,100%,.7)!important;color:var(--mdc-theme-text-secondary-on-dark,hsla(0,0%,100%,.7))!important}.mdc-theme--text-hint-on-dark{color:hsla(0,0%,100%,.5)!important;color:var(--mdc-theme-text-hint-on-dark,hsla(0,0%,100%,.5))!important}.mdc-theme--text-disabled-on-dark{color:hsla(0,0%,100%,.5)!important;color:var(--mdc-theme-text-disabled-on-dark,hsla(0,0%,100%,.5))!important}.mdc-theme--text-icon-on-dark{color:hsla(0,0%,100%,.5)!important;color:var(--mdc-theme-text-icon-on-dark,hsla(0,0%,100%,.5))!important}.mdc-theme--primary-bg{background-color:#6200ee!important;background-color:var(--mdc-theme-primary,#6200ee)!important}.mdc-theme--secondary-bg{background-color:#018786!important;background-color:var(--mdc-theme-secondary,#018786)!important}""");
  _initialized = true;
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-theme
  v-on="$listeners"
  :theming="theming"
  ref="inner"
  :customStyle="_customStyle"
>
</m-theme>''')
class MTheme extends VueComponentBase with BaseMixin {
  MTheme() { _initialize(); }
  @prop
  Map<String, String> customStyle;
  @computed
  dynamic get _customStyle => mapToJs(customStyle);
}