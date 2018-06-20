import 'package:vue/vue.dart';
import '../component.vue.dart';

bool _initialized = false;
void _initialize() {
  if (_initialized) return;
  eval(r"""!function(t,e){if("object"==typeof exports&&"object"==typeof module)module.exports=e();else if("function"==typeof define&&define.amd)define([],e);else{var n=e();for(var o in n)("object"==typeof exports?exports:t)[o]=n[o]}}(window,function(){return function(t){var e={};function n(o){if(e[o])return e[o].exports;var i=e[o]={i:o,l:!1,exports:{}};return t[o].call(i.exports,i,i.exports,n),i.l=!0,i.exports}return n.m=t,n.c=e,n.d=function(t,e,o){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:o})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var o=Object.create(null);if(n.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var i in t)n.d(o,i,function(e){return t[e]}.bind(null,i));return o},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=33)}({3:function(t,e,n){"use strict";function o(t,e,n,o,i,r,s,a){var u,l="function"==typeof t?t.options:t;if(e&&(l.render=e,l.staticRenderFns=n,l._compiled=!0),o&&(l.functional=!0),r&&(l._scopeId="data-v-"+r),s?(u=function(t){(t=t||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(t=__VUE_SSR_CONTEXT__),i&&i.call(this,t),t&&t._registeredComponents&&t._registeredComponents.add(s)},l._ssrRegister=u):i&&(u=a?function(){i.call(this,this.$root.$options.shadowRoot)}:i),u)if(l.functional){l._injectStyles=u;var c=l.render;l.render=function(t,e){return u.call(e),c(t,e)}}else{var d=l.beforeCreate;l.beforeCreate=d?[].concat(d,u):[u]}return{exports:t,options:l}}n.d(e,"a",function(){return o})},33:function(t,e,n){"use strict";function o(t,e,n){return e in t?Object.defineProperty(t,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):t[e]=n,t}n.r(e);var i={props:{standardColumn:{type:Number,validator:function(t){return t>=1&&t<=12}},masonryColumn:{type:Number,validator:function(t){return t>=1&&t<=12}},textProtection:{type:Boolean,default:!1}},computed:{classes:function(){var t={};this.standardColumn>0&&void 0===this.masonryColumn&&(t["image-list-standard-"+this.standardColumn]=!0);var e={};this.masonryColumn>0&&void 0===this.standardColumn&&(e["image-list-masonry-"+this.masonryColumn]=!0,e["mdc-image-list--masonry"]=!0);var n={};return n["mdc-image-list--with-text-protection"]=this.textProtection,function(t){for(var e=1;e<arguments.length;e++){var n=null!=arguments[e]?arguments[e]:{},i=Object.keys(n);"function"==typeof Object.getOwnPropertySymbols&&(i=i.concat(Object.getOwnPropertySymbols(n).filter(function(t){return Object.getOwnPropertyDescriptor(n,t).enumerable}))),i.forEach(function(e){o(t,e,n[e])})}return t}({},t,e,n)}}},r=n(3),s=Object(r.a)(i,function(){var t=this.$createElement;return(this._self._c||t)("ul",{staticClass:"mdc-image-list",class:this.classes},[this._t("default")],2)},[],!1,null,null,null).exports,a={props:{adjustAspectRatio:{type:Boolean,default:!0}},data:function(){return{slotObserver:void 0}},mounted:function(){var t=this;this.updateSlot(),this.slotObserver=new MutationObserver(function(){return t.updateSlot()}),this.slotObserver.observe(this.$el,{childList:!0,subtree:!0})},beforeDestroy:function(){this.slotObserver.disconnect()},methods:{updateSlot:function(){this.$slots.image&&this.$slots.image.map(function(t){t.elm.classList.add("mdc-image-list__image")})}}},u=Object(r.a)(a,function(){var t=this.$createElement,e=this._self._c||t;return e("li",{staticClass:"mdc-image-list__item"},[this.adjustAspectRatio?e("div",{staticClass:"mdc-image-list__image-aspect-container"},[this._t("image")],2):this._t("image"),this._v(" "),this.$slots.default?e("div",{staticClass:"mdc-image-list__supporting"},[e("span",{staticClass:"mdc-image-list__label"},[this._t("default")],2)]):this._e()],2)},[],!1,null,null,null).exports,l=n(5),c={install:function(t){t.component("m-image-list",s),t.component("m-image-list-item",u)}};e.default=c,Object(l.b)(c)},5:function(t,e,n){"use strict";function o(t,e){return e=e||100,function(){if(!t.debouncing){var n=Array.prototype.slice.apply(arguments);t.lastReturnVal=t.apply(window,n),t.debouncing=!0}return clearTimeout(t.debounceTimeout),t.debounceTimeout=setTimeout(function(){t.debouncing=!1},e),t.lastReturnVal}}function i(t){"undefined"!=typeof window&&window.Vue&&window.Vue.use(t)}n.d(e,"a",function(){return o}),n.d(e,"b",function(){return i})}})});""");
  _initialized = true;
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-image-list
  v-on="$listeners"
  :theming="theming"
  ref="inner"
  :standardColumn="standardColumn"
  :masonryColumn="masonryColumn"
  :textProtection="textProtection"
>
  <slot v-if="$slots.default"></slot>
</m-image-list>''')
class MImageList extends VueComponentBase with BaseMixin {
  MImageList() { _initialize(); }
  @ref
  dynamic inner;
  @prop
  num standardColumn;
  @prop
  num masonryColumn;
  @prop
  bool textProtection = false;
}

@VueComponent(mixins: const [BaseMixin], template: r'''
<m-image-list-item
  v-on="$listeners"
  :theming="theming"
  ref="inner"
  :adjustAspectRatio="adjustAspectRatio"
>
  <slot v-if="$slots.default"></slot>
  <template v-if="$slots.image" slot="image">
    <slot name="image"></slot>
  </template>
</m-image-list-item>''')
class MImageListItem extends VueComponentBase with BaseMixin {
  MImageListItem() { _initialize(); }
  @ref
  dynamic inner;
  @prop
  bool adjustAspectRatio = true;
}
