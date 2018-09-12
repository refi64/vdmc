import 'package:vue/vue.dart';
import '../component.template.dart';

bool _initialized = false;
void _initialize() {
  if (_initialized) return;
  eval(r"""!function(t,e){if("object"==typeof exports&&"object"==typeof module)module.exports=e();else if("function"==typeof define&&define.amd)define([],e);else{var n=e();for(var o in n)("object"==typeof exports?exports:t)[o]=n[o]}}(window,function(){return function(t){var e={};function n(o){if(e[o])return e[o].exports;var r=e[o]={i:o,l:!1,exports:{}};return t[o].call(r.exports,r,r.exports,n),r.l=!0,r.exports}return n.m=t,n.c=e,n.d=function(t,e,o){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:o})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var o=Object.create(null);if(n.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var r in t)n.d(o,r,function(e){return t[e]}.bind(null,r));return o},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=15)}({0:function(t,e,n){"use strict";var o={inheritAttrs:!1},r=["primary","secondary","background","surface","on-primary","on-secondary","on-surface","primary-bg","secondary-bg","text-primary-on-light","text-secondary-on-light","text-hint-on-light","text-disabled-on-light","text-icon-on-light","text-primary-on-dark","text-secondary-on-dark","text-hint-on-dark","text-disabled-on-dark","text-icon-on-dark"],i={props:{theming:{type:String,default:""}},mounted:function(){r.indexOf(this.theming)>-1&&this.$el.classList.add("mdc-theme--"+this.theming)}};n.d(e,"a",function(){return o}),n.d(e,"b",function(){return i})},15:function(t,e,n){"use strict";n.r(e);var o=n(0),r={mixins:[o.a,o.b],props:{topLeft:{type:Boolean,default:!1},topRight:{type:Boolean,default:!1},bottomRight:{type:Boolean,default:!1},bottomLeft:{type:Boolean,default:!1}}},i=n(3),a=Object(i.a)(r,function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"mdc-shape-container"},[t._t("default"),t._v(" "),t.topLeft?n("div",{staticClass:"mdc-shape-container__corner mdc-shape-container__corner--top-left"}):t._e(),t._v(" "),t.topRight?n("div",{staticClass:"mdc-shape-container__corner mdc-shape-container__corner--top-right"}):t._e(),t._v(" "),t.bottomRight?n("div",{staticClass:"mdc-shape-container__corner mdc-shape-container__corner--bottom-right"}):t._e(),t._v(" "),t.bottomleft?n("div",{staticClass:"mdc-shape-container__corner mdc-shape-container__corner--bottom-left"}):t._e()],2)},[],!1,null,null,null).exports,c=(n(65),n(5)),u={install:function(t){t.component("m-shape",a)}};e.default=u,Object(c.b)(u)},3:function(t,e,n){"use strict";function o(t,e,n,o,r,i,a,c){var u,s="function"==typeof t?t.options:t;if(e&&(s.render=e,s.staticRenderFns=n,s._compiled=!0),o&&(s.functional=!0),i&&(s._scopeId="data-v-"+i),a?(u=function(t){(t=t||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(t=__VUE_SSR_CONTEXT__),r&&r.call(this,t),t&&t._registeredComponents&&t._registeredComponents.add(a)},s._ssrRegister=u):r&&(u=c?function(){r.call(this,this.$root.$options.shadowRoot)}:r),u)if(s.functional){s._injectStyles=u;var d=s.render;s.render=function(t,e){return u.call(e),d(t,e)}}else{var f=s.beforeCreate;s.beforeCreate=f?[].concat(f,u):[u]}return{exports:t,options:s}}n.d(e,"a",function(){return o})},5:function(t,e,n){"use strict";function o(t,e){return e=e||100,function(){if(!t.debouncing){var n=Array.prototype.slice.apply(arguments);t.lastReturnVal=t.apply(window,n),t.debouncing=!0}return clearTimeout(t.debounceTimeout),t.debounceTimeout=setTimeout(function(){t.debouncing=!1},e),t.lastReturnVal}}function r(t){"undefined"!=typeof window&&window.Vue&&window.Vue.use(t)}n.d(e,"a",function(){return o}),n.d(e,"b",function(){return r})},65:function(t,e,n){}})});""");
  loadStyle(r""".mdc-shape-container{display:inline-block;position:relative;overflow:hidden}.mdc-shape-container__corner{position:absolute;z-index:1}.mdc-shape-container__corner:after,.mdc-shape-container__corner:before{position:absolute;box-sizing:border-box;width:100%;height:100%;content:""}.mdc-shape-container__corner--top-left{transform:rotate(-45deg)}.mdc-shape-container__corner--top-right{transform:rotate(45deg)}.mdc-shape-container__corner--bottom-right{transform:rotate(135deg)}.mdc-shape-container__corner--bottom-left{transform:rotate(-135deg)}""");
  _initialized = true;
}

@VueComponent(template: r'''
<m-shape
  v-on="$listeners"
  :theming="theming"
  ref="inner"
  :topLeft="topLeft"
  :topRight="topRight"
  :bottomRight="bottomRight"
  :bottomLeft="bottomLeft"
>
  <slot v-if="$slots.default"></slot>
</m-shape>''')
class MShape extends VueComponentBase with BaseMixin {
  MShape() { _initialize(); }
  @override
  void lifecycleCreated() {
  }
  @ref
  dynamic inner;
  @prop
  bool topLeft = false;
  @prop
  bool topRight = false;
  @prop
  bool bottomRight = false;
  @prop
  bool bottomLeft = false;
}
