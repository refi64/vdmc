import 'package:vue/vue.dart';
import '../component.dart';

bool _initialized = false;
void _initialize() {
  if (_initialized) return;
  eval(r"""!function(t,e){if("object"==typeof exports&&"object"==typeof module)module.exports=e();else if("function"==typeof define&&define.amd)define([],e);else{var n=e();for(var o in n)("object"==typeof exports?exports:t)[o]=n[o]}}(window,function(){return function(t){var e={};function n(o){if(e[o])return e[o].exports;var r=e[o]={i:o,l:!1,exports:{}};return t[o].call(r.exports,r,r.exports,n),r.l=!0,r.exports}return n.m=t,n.c=e,n.d=function(t,e,o){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:o})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var o=Object.create(null);if(n.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var r in t)n.d(o,r,function(e){return t[e]}.bind(null,r));return o},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=22)}({0:function(t,e,n){"use strict";var o={inheritAttrs:!1},r=["primary","secondary","background","surface","on-primary","on-secondary","on-surface","primary-bg","secondary-bg","text-primary-on-light","text-secondary-on-light","text-hint-on-light","text-disabled-on-light","text-icon-on-light","text-primary-on-dark","text-secondary-on-dark","text-hint-on-dark","text-disabled-on-dark","text-icon-on-dark"],i={props:{theming:{type:String,default:""}},mounted:function(){r.indexOf(this.theming)>-1&&this.$el.classList.add("mdc-theme--"+this.theming)}};n.d(e,"a",function(){return o}),n.d(e,"b",function(){return i})},11:function(t,e,n){"use strict";var o=n(4),r=n(2),i={LABEL_FLOAT_ABOVE:"mdc-floating-label--float-above",LABEL_SHAKE:"mdc-floating-label--shake"};
/**
 * @license
 * Copyright 2017 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */function a(t){return(a="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function u(){return(u=Object.assign||function(t){for(var e=1;e<arguments.length;e++){var n=arguments[e];for(var o in n)Object.prototype.hasOwnProperty.call(n,o)&&(t[o]=n[o])}return t}).apply(this,arguments)}function s(t){return(s=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function c(t,e){for(var n=0;n<e.length;n++){var o=e[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}function f(t,e,n){return e&&c(t.prototype,e),n&&c(t,n),t}function l(t,e){return(l=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}
/**
 * @license
 * Copyright 2016 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */var d=function(t){function e(t){var n;return function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,e),(n=function(t,e){return!e||"object"!==a(e)&&"function"!=typeof e?function(t){if(void 0===t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return t}(t):e}(this,s(e).call(this,u(e.defaultAdapter,t)))).shakeAnimationEndHandler_=function(){return n.handleShakeAnimationEnd_()},n}return function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&l(t,e)}(e,r.a),f(e,null,[{key:"cssClasses",get:function(){return i}},{key:"defaultAdapter",get:function(){return{addClass:function(){},removeClass:function(){},getWidth:function(){},registerInteractionHandler:function(){},deregisterInteractionHandler:function(){}}}}]),f(e,[{key:"init",value:function(){this.adapter_.registerInteractionHandler("animationend",this.shakeAnimationEndHandler_)}},{key:"destroy",value:function(){this.adapter_.deregisterInteractionHandler("animationend",this.shakeAnimationEndHandler_)}},{key:"getWidth",value:function(){return this.adapter_.getWidth()}},{key:"shake",value:function(t){var n=e.cssClasses.LABEL_SHAKE;t?this.adapter_.addClass(n):this.adapter_.removeClass(n)}},{key:"float",value:function(t){var n=e.cssClasses,o=n.LABEL_FLOAT_ABOVE,r=n.LABEL_SHAKE;t?this.adapter_.addClass(o):(this.adapter_.removeClass(o),this.adapter_.removeClass(r))}},{key:"handleShakeAnimationEnd_",value:function(){var t=e.cssClasses.LABEL_SHAKE;this.adapter_.removeClass(t)}}]),e}();function p(t){return(p="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function y(t,e){for(var n=0;n<e.length;n++){var o=e[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}function h(t){return(h=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function b(t,e){return(b=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}
/**
 * @license
 * Copyright 2016 Google Inc. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */n.d(e,"a",function(){return v}),n.d(e,!1,function(){return d});var v=function(t){function e(){return function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,e),function(t,e){return!e||"object"!==p(e)&&"function"!=typeof e?function(t){if(void 0===t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return t}(t):e}(this,h(e).apply(this,arguments))}var n,r,i;return function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&b(t,e)}(e,o.a),n=e,i=[{key:"attachTo",value:function(t){return new e(t)}}],(r=[{key:"shake",value:function(t){this.foundation_.shake(t)}},{key:"float",value:function(t){this.foundation_.float(t)}},{key:"getWidth",value:function(){return this.foundation_.getWidth()}},{key:"getDefaultFoundation",value:function(){var t=this;return new d({addClass:function(e){return t.root_.classList.add(e)},removeClass:function(e){return t.root_.classList.remove(e)},getWidth:function(){return t.root_.offsetWidth},registerInteractionHandler:function(e,n){return t.root_.addEventListener(e,n)},deregisterInteractionHandler:function(e,n){return t.root_.removeEventListener(e,n)}})}}])&&y(n.prototype,r),i&&y(n,i),e}()},2:function(t,e,n){"use strict";function o(t,e){for(var n=0;n<e.length;n++){var o=e[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}function r(t,e,n){return e&&o(t.prototype,e),n&&o(t,n),t}
/**
 * @license
 * Copyright 2016 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */var i=function(){function t(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,t),this.adapter_=e}return r(t,null,[{key:"cssClasses",get:function(){return{}}},{key:"strings",get:function(){return{}}},{key:"numbers",get:function(){return{}}},{key:"defaultAdapter",get:function(){return{}}}]),r(t,[{key:"init",value:function(){}},{key:"destroy",value:function(){}}]),t}();e.a=i},22:function(t,e,n){"use strict";n.r(e);var o=n(11),r=n(0),i={mixins:[r.a,r.b],props:{floatAbove:{type:Boolean,default:!1},shake:{type:Boolean,default:!1}},data:function(){return{mdcFloatingLabel:void 0}},computed:{classes:function(){return{"mdc-floating-label--float-above":this.floatAbove,"mdc-floating-label--shake":this.shake}}},mounted:function(){this.mdcFloatingLabel=o.a.attachTo(this.$el)},beforeDestroy:function(){this.mdcFloatingLabel.destroy()}},a=n(3),u=Object(a.a)(i,function(){var t=this.$createElement;return(this._self._c||t)("label",this._b({staticClass:"mdc-floating-label",class:this.classes},"label",this.$attrs,!1),[this._t("default")],2)},[],!1,null,null,null).exports,s=(n(91),n(5)),c={install:function(t){t.component("m-floating-label",u)}};e.default=c,Object(s.b)(c)},3:function(t,e,n){"use strict";function o(t,e,n,o,r,i,a,u){var s,c="function"==typeof t?t.options:t;if(e&&(c.render=e,c.staticRenderFns=n,c._compiled=!0),o&&(c.functional=!0),i&&(c._scopeId="data-v-"+i),a?(s=function(t){(t=t||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(t=__VUE_SSR_CONTEXT__),r&&r.call(this,t),t&&t._registeredComponents&&t._registeredComponents.add(a)},c._ssrRegister=s):r&&(s=u?function(){r.call(this,this.$root.$options.shadowRoot)}:r),s)if(c.functional){c._injectStyles=s;var f=c.render;c.render=function(t,e){return s.call(e),f(t,e)}}else{var l=c.beforeCreate;c.beforeCreate=l?[].concat(l,s):[s]}return{exports:t,options:c}}n.d(e,"a",function(){return o})},4:function(t,e,n){"use strict";var o=n(2);function r(t,e){for(var n=0;n<e.length;n++){var o=e[n];o.enumerable=o.enumerable||!1,o.configurable=!0,"value"in o&&(o.writable=!0),Object.defineProperty(t,o.key,o)}}function i(t,e,n){return e&&r(t.prototype,e),n&&r(t,n),t}
/**
 * @license
 * Copyright 2016 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */var a=function(){function t(e){var n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:void 0;!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,t),this.root_=e;for(var o=arguments.length,r=new Array(o>2?o-2:0),i=2;i<o;i++)r[i-2]=arguments[i];this.initialize.apply(this,r),this.foundation_=void 0===n?this.getDefaultFoundation():n,this.foundation_.init(),this.initialSyncWithDOM()}return i(t,null,[{key:"attachTo",value:function(e){return new t(e,new o.a)}}]),i(t,[{key:"initialize",value:function(){}},{key:"getDefaultFoundation",value:function(){throw new Error("Subclasses must override getDefaultFoundation to return a properly configured foundation class")}},{key:"initialSyncWithDOM",value:function(){}},{key:"destroy",value:function(){this.foundation_.destroy()}},{key:"listen",value:function(t,e){this.root_.addEventListener(t,e)}},{key:"unlisten",value:function(t,e){this.root_.removeEventListener(t,e)}},{key:"emit",value:function(t,e){var n,o=arguments.length>2&&void 0!==arguments[2]&&arguments[2];"function"==typeof CustomEvent?n=new CustomEvent(t,{detail:e,bubbles:o}):(n=document.createEvent("CustomEvent")).initCustomEvent(t,o,!1,e),this.root_.dispatchEvent(n)}}]),t}();e.a=a},5:function(t,e,n){"use strict";function o(t,e){return e=e||100,function(){if(!t.debouncing){var n=Array.prototype.slice.apply(arguments);t.lastReturnVal=t.apply(window,n),t.debouncing=!0}return clearTimeout(t.debounceTimeout),t.debounceTimeout=setTimeout(function(){t.debouncing=!1},e),t.lastReturnVal}}function r(t){"undefined"!=typeof window&&window.Vue&&window.Vue.use(t)}n.d(e,"a",function(){return o}),n.d(e,"b",function(){return r})},91:function(t,e,n){}})});""");
  loadStyle(r""".mdc-floating-label{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;font-size:1rem;line-height:1.75rem;font-weight:400;letter-spacing:.00937em;text-decoration:inherit;text-transform:inherit;position:absolute;bottom:8px;left:0;transform-origin:left top;transition:transform .15s cubic-bezier(.4,0,.2,1),color .15s cubic-bezier(.4,0,.2,1);line-height:1.15rem;cursor:text}.mdc-floating-label[dir=rtl],[dir=rtl] .mdc-floating-label{right:0;left:auto;transform-origin:right top}.mdc-floating-label--float-above{cursor:auto;transform:translateY(-100%) scale(.75)}.mdc-floating-label--shake{animation:a .25s 1}@keyframes a{0%{transform:translateX(0%) translateY(-100%) scale(.75)}33%{animation-timing-function:cubic-bezier(.5,0,.70173,.49582);transform:translateX(4%) translateY(-100%) scale(.75)}66%{animation-timing-function:cubic-bezier(.30244,.38135,.55,.95635);transform:translateX(-4%) translateY(-100%) scale(.75)}to{transform:translateX(0%) translateY(-100%) scale(.75)}}""");
  _initialized = true;
}

@VueComponent(template: r'''
<m-float-above
  v-on="$listeners"
  :theming="theming"
  ref="inner"
  :floatAbove="floatAbove"
  :shake="shake"
>
  <slot v-if="$slots.default"></slot>
</m-float-above>''')
class MFloatAbove extends VueComponentBase with BaseMixin {
  MFloatAbove() { _initialize(); }
  @override
  void lifecycleCreated() {
  }
  @ref
  dynamic inner;
  @prop
  bool floatAbove = false;
  @prop
  bool shake = false;
}
