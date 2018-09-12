import 'package:vue/vue.dart';
import '../component.template.dart';

bool _initialized = false;
void _initialize() {
  if (_initialized) return;
  eval(r"""!function(t,e){if("object"==typeof exports&&"object"==typeof module)module.exports=e();else if("function"==typeof define&&define.amd)define([],e);else{var n=e();for(var o in n)("object"==typeof exports?exports:t)[o]=n[o]}}(window,function(){return function(t){var e={};function n(o){if(e[o])return e[o].exports;var r=e[o]={i:o,l:!1,exports:{}};return t[o].call(r.exports,r,r.exports,n),r.l=!0,r.exports}return n.m=t,n.c=e,n.d=function(t,e,o){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:o})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var o=Object.create(null);if(n.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var r in t)n.d(o,r,function(e){return t[e]}.bind(null,r));return o},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=23)}({0:function(t,e,n){"use strict";var o={inheritAttrs:!1},r=["primary","secondary","background","surface","on-primary","on-secondary","on-surface","primary-bg","secondary-bg","text-primary-on-light","text-secondary-on-light","text-hint-on-light","text-disabled-on-light","text-icon-on-light","text-primary-on-dark","text-secondary-on-dark","text-hint-on-dark","text-disabled-on-dark","text-icon-on-dark"],i={props:{theming:{type:String,default:""}},mounted:function(){r.indexOf(this.theming)>-1&&this.$el.classList.add("mdc-theme--"+this.theming)}};n.d(e,"a",function(){return o}),n.d(e,"b",function(){return i})},23:function(t,e,n){"use strict";n.r(e);var o=n(0),r={mixins:[o.a,o.b],props:{notched:{type:Boolean,default:!1}},computed:{classes:function(){return{"mdc-notched-outline--notched":this.notched}}}},i=n(3),u=Object(i.a)(r,function(){var t=this.$createElement,e=this._self._c||t;return e("div",[e("div",{staticClass:"mdc-notched-outline",class:this.classes},[e("svg",[e("path",{staticClass:"mdc-notched-outline__path"})])]),this._v(" "),e("div",{staticClass:"mdc-notched-outline__idle"})])},[],!1,null,null,null).exports,c=(n(73),n(5)),s={install:function(t){t.component("m-notched-outline",u)}};e.default=s,Object(c.b)(s)},3:function(t,e,n){"use strict";function o(t,e,n,o,r,i,u,c){var s,a="function"==typeof t?t.options:t;if(e&&(a.render=e,a.staticRenderFns=n,a._compiled=!0),o&&(a.functional=!0),i&&(a._scopeId="data-v-"+i),u?(s=function(t){(t=t||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(t=__VUE_SSR_CONTEXT__),r&&r.call(this,t),t&&t._registeredComponents&&t._registeredComponents.add(u)},a._ssrRegister=s):r&&(s=c?function(){r.call(this,this.$root.$options.shadowRoot)}:r),s)if(a.functional){a._injectStyles=s;var d=a.render;a.render=function(t,e){return s.call(e),d(t,e)}}else{var l=a.beforeCreate;a.beforeCreate=l?[].concat(l,s):[s]}return{exports:t,options:a}}n.d(e,"a",function(){return o})},5:function(t,e,n){"use strict";function o(t,e){return e=e||100,function(){if(!t.debouncing){var n=Array.prototype.slice.apply(arguments);t.lastReturnVal=t.apply(window,n),t.debouncing=!0}return clearTimeout(t.debounceTimeout),t.debounceTimeout=setTimeout(function(){t.debouncing=!1},e),t.lastReturnVal}}function r(t){"undefined"!=typeof window&&window.Vue&&window.Vue.use(t)}n.d(e,"a",function(){return o}),n.d(e,"b",function(){return r})},73:function(t,e,n){}})});""");
  loadStyle(r""".mdc-notched-outline{position:absolute;top:0;left:0;width:calc(100% - 1px);height:calc(100% - 2px);transition:opacity .15s cubic-bezier(.4,0,.2,1);opacity:0;overflow:hidden}.mdc-notched-outline svg{position:absolute;width:100%;height:100%}.mdc-notched-outline__idle{position:absolute;top:0;left:0;width:calc(100% - 4px);height:calc(100% - 4px);transition:opacity .15s cubic-bezier(.4,0,.2,1),border-color .15s cubic-bezier(.4,0,.2,1);border:1px solid;opacity:1}.mdc-notched-outline__path{stroke-width:1px;transition:stroke .15s cubic-bezier(.4,0,.2,1),stroke-width .15s cubic-bezier(.4,0,.2,1);fill:transparent}.mdc-notched-outline--notched{opacity:1}.mdc-notched-outline--notched~.mdc-notched-outline__idle{opacity:0}""");
  _initialized = true;
}

@VueComponent(template: r'''
<m-notched-outline
  v-on="$listeners"
  :theming="theming"
  ref="inner"
  :notched="notched"
>
</m-notched-outline>''')
class MNotchedOutline extends VueComponentBase with BaseMixin {
  MNotchedOutline() { _initialize(); }
  @override
  void lifecycleCreated() {
  }
  @ref
  dynamic inner;
  @prop
  bool notched = false;
}
