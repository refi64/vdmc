import 'package:vue/vue.dart';
import '../component.dart';

bool _initialized = false;
void _initialize() {
  if (_initialized) return;
  eval(r"""!function(t,e){if("object"==typeof exports&&"object"==typeof module)module.exports=e();else if("function"==typeof define&&define.amd)define([],e);else{var n=e();for(var i in n)("object"==typeof exports?exports:t)[i]=n[i]}}(window,function(){return function(t){var e={};function n(i){if(e[i])return e[i].exports;var o=e[i]={i:i,l:!1,exports:{}};return t[i].call(o.exports,o,o.exports,n),o.l=!0,o.exports}return n.m=t,n.c=e,n.d=function(t,e,i){n.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:i})},n.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},n.t=function(t,e){if(1&e&&(t=n(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var i=Object.create(null);if(n.r(i),Object.defineProperty(i,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var o in t)n.d(i,o,function(e){return t[e]}.bind(null,o));return i},n.n=function(t){var e=t&&t.__esModule?function(){return t.default}:function(){return t};return n.d(e,"a",e),e},n.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},n.p="",n(n.s=31)}({0:function(t,e,n){"use strict";var i={inheritAttrs:!1},o=["primary","secondary","background","surface","on-primary","on-secondary","on-surface","primary-bg","secondary-bg","text-primary-on-light","text-secondary-on-light","text-hint-on-light","text-disabled-on-light","text-icon-on-light","text-primary-on-dark","text-secondary-on-dark","text-hint-on-dark","text-disabled-on-dark","text-icon-on-dark"],r={props:{theming:{type:String,default:""}},mounted:function(){o.indexOf(this.theming)>-1&&this.$el.classList.add("mdc-theme--"+this.theming)}};n.d(e,"a",function(){return i}),n.d(e,"b",function(){return r})},1:function(t,e,n){"use strict";
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
 */var i,o;function r(t){var e=arguments.length>1&&void 0!==arguments[1]&&arguments[1],n=i;if("boolean"==typeof i&&!e)return n;if(t.CSS&&"function"==typeof t.CSS.supports){var o=t.CSS.supports("--css-vars","yes"),r=t.CSS.supports("(--css-vars: yes)")&&t.CSS.supports("color","#00000000");return n=!(!o&&!r||function(t){var e=t.document,n=e.createElement("div");n.className="mdc-ripple-surface--test-edge-var-bug",e.body.appendChild(n);var i=t.getComputedStyle(n),o=null!==i&&"solid"===i.borderTopStyle;return n.remove(),o}(t)),e||(i=n),n}}function a(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:window,e=arguments.length>1&&void 0!==arguments[1]&&arguments[1];if(void 0===o||e){var n=!1;try{t.document.addEventListener("test",null,{get passive(){n=!0}})}catch(t){}o=n}return!!o&&{passive:!0}}function s(t){return["webkitMatchesSelector","msMatchesSelector","matches"].filter(function(e){return e in t}).pop()}function u(t,e,n){var i,o,r=e.x,a=e.y,s=r+n.left,u=a+n.top;return"touchstart"===t.type?(i=t.changedTouches[0].pageX-s,o=t.changedTouches[0].pageY-u):(i=t.pageX-s,o=t.pageY-u),{x:i,y:o}}n.d(e,"d",function(){return r}),n.d(e,"a",function(){return a}),n.d(e,"b",function(){return s}),n.d(e,"c",function(){return u})},2:function(t,e,n){"use strict";function i(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function o(t,e,n){return e&&i(t.prototype,e),n&&i(t,n),t}
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
 */var r=function(){function t(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,t),this.adapter_=e}return o(t,null,[{key:"cssClasses",get:function(){return{}}},{key:"strings",get:function(){return{}}},{key:"numbers",get:function(){return{}}},{key:"defaultAdapter",get:function(){return{}}}]),o(t,[{key:"init",value:function(){}},{key:"destroy",value:function(){}}]),t}();e.a=r},3:function(t,e,n){"use strict";function i(t,e,n,i,o,r,a,s){var u,c="function"==typeof t?t.options:t;if(e&&(c.render=e,c.staticRenderFns=n,c._compiled=!0),i&&(c.functional=!0),r&&(c._scopeId="data-v-"+r),a?(u=function(t){(t=t||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(t=__VUE_SSR_CONTEXT__),o&&o.call(this,t),t&&t._registeredComponents&&t._registeredComponents.add(a)},c._ssrRegister=u):o&&(u=s?function(){o.call(this,this.$root.$options.shadowRoot)}:o),u)if(c.functional){c._injectStyles=u;var l=c.render;c.render=function(t,e){return u.call(e),l(t,e)}}else{var d=c.beforeCreate;c.beforeCreate=d?[].concat(d,u):[u]}return{exports:t,options:c}}n.d(e,"a",function(){return i})},31:function(t,e,n){"use strict";n.r(e);var i=n(6),o=n(4),r=n(2),a={ROOT:"mdc-icon-button"},s={DATA_TOGGLE_ON_LABEL:"data-toggle-on-label",DATA_TOGGLE_ON_CONTENT:"data-toggle-on-content",DATA_TOGGLE_ON_CLASS:"data-toggle-on-class",DATA_TOGGLE_OFF_LABEL:"data-toggle-off-label",DATA_TOGGLE_OFF_CONTENT:"data-toggle-off-content",DATA_TOGGLE_OFF_CLASS:"data-toggle-off-class",ARIA_PRESSED:"aria-pressed",ARIA_LABEL:"aria-label",CHANGE_EVENT:"MDCIconButtonToggle:change"};
/**
 * @license
 * Copyright 2018 Google Inc. All Rights Reserved.
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
 */function u(t){return(u="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function c(){return(c=Object.assign||function(t){for(var e=1;e<arguments.length;e++){var n=arguments[e];for(var i in n)Object.prototype.hasOwnProperty.call(n,i)&&(t[i]=n[i])}return t}).apply(this,arguments)}function l(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function d(t){return(d=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function f(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function p(t,e,n){return e&&f(t.prototype,e),n&&f(t,n),t}function _(t,e){return(_=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}
/**
 * @license
 * Copyright 2018 Google Inc. All Rights Reserved.
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
 */var h=function(t){function e(t){var n;return l(this,e),(n=function(t,e){return!e||"object"!==u(e)&&"function"!=typeof e?function(t){if(void 0===t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return t}(t):e}(this,d(e).call(this,c(e.defaultAdapter,t)))).on_=!1,n.disabled_=!1,n.savedTabIndex_=-1,n.toggleOnData_=null,n.toggleOffData_=null,n.clickHandler_=function(){return n.toggleFromEvt_()},n}return function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&_(t,e)}(e,r.a),p(e,null,[{key:"cssClasses",get:function(){return a}},{key:"strings",get:function(){return s}},{key:"defaultAdapter",get:function(){return{addClass:function(){},removeClass:function(){},registerInteractionHandler:function(){},deregisterInteractionHandler:function(){},setText:function(){},getTabIndex:function(){return 0},setTabIndex:function(){},getAttr:function(){return""},setAttr:function(){},removeAttr:function(){},notifyChange:function(){}}}}]),p(e,[{key:"init",value:function(){this.refreshToggleData(),this.savedTabIndex_=this.adapter_.getTabIndex(),this.adapter_.registerInteractionHandler("click",this.clickHandler_)}},{key:"destroy",value:function(){this.adapter_.deregisterInteractionHandler("click",this.clickHandler_)}},{key:"refreshToggleData",value:function(){this.toggleOnData_={label:this.adapter_.getAttr(s.DATA_TOGGLE_ON_LABEL),content:this.adapter_.getAttr(s.DATA_TOGGLE_ON_CONTENT),cssClass:this.adapter_.getAttr(s.DATA_TOGGLE_ON_CLASS)},this.toggleOffData_={label:this.adapter_.getAttr(s.DATA_TOGGLE_OFF_LABEL),content:this.adapter_.getAttr(s.DATA_TOGGLE_OFF_CONTENT),cssClass:this.adapter_.getAttr(s.DATA_TOGGLE_OFF_CLASS)}}},{key:"toggleFromEvt_",value:function(){this.toggle();var t=this.on_;this.adapter_.notifyChange({isOn:t})}},{key:"isOn",value:function(){return this.on_}},{key:"toggle",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:!this.on_;this.on_=t;var n=e.strings,i=n.ARIA_LABEL,o=n.ARIA_PRESSED;this.adapter_.setAttr(o,this.on_.toString());var r=(this.on_?this.toggleOffData_:this.toggleOnData_).cssClass;r&&this.adapter_.removeClass(r);var a=this.on_?this.toggleOnData_:this.toggleOffData_,s=a.content,u=a.label,c=a.cssClass;c&&this.adapter_.addClass(c),s&&this.adapter_.setText(s),u&&this.adapter_.setAttr(i,u)}}]),e}(),v=function t(){l(this,t)};v.prototype.label,v.prototype.content,v.prototype.cssClass;var g=h;function y(t){return(y="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function m(t,e,n){return(m="undefined"!=typeof Reflect&&Reflect.get?Reflect.get:function(t,e,n){var i=function(t,e){for(;!Object.prototype.hasOwnProperty.call(t,e)&&null!==(t=b(t)););return t}(t,e);if(i){var o=Object.getOwnPropertyDescriptor(i,e);return o.get?o.get.call(n):o.value}})(t,e,n||t)}function b(t){return(b=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function A(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function O(t,e,n){return e&&A(t.prototype,e),n&&A(t,n),t}function T(t,e){return(T=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}
/**
 * @license
 * Copyright 2018 Google Inc. All Rights Reserved.
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
 */var E=function(t){function e(){var t,n;!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,e);for(var i=arguments.length,o=new Array(i),r=0;r<i;r++)o[r]=arguments[r];return(n=function(t,e){return!e||"object"!==y(e)&&"function"!=typeof e?function(t){if(void 0===t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return t}(t):e}(this,(t=b(e)).call.apply(t,[this].concat(o)))).ripple_=n.initRipple_(),n}return function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&T(t,e)}(e,o.a),O(e,null,[{key:"attachTo",value:function(t){return new e(t)}}]),O(e,[{key:"initRipple_",value:function(){var t=new i.a(this.root_);return t.unbounded=!0,t}},{key:"destroy",value:function(){this.ripple_.destroy(),m(b(e.prototype),"destroy",this).call(this)}},{key:"getDefaultFoundation",value:function(){var t=this;return new g({addClass:function(e){return t.iconEl_.classList.add(e)},removeClass:function(e){return t.iconEl_.classList.remove(e)},registerInteractionHandler:function(e,n){return t.root_.addEventListener(e,n)},deregisterInteractionHandler:function(e,n){return t.root_.removeEventListener(e,n)},setText:function(e){return t.iconEl_.textContent=e},getTabIndex:function(){return t.root_.tabIndex},setTabIndex:function(e){return t.root_.tabIndex=e},getAttr:function(e,n){return t.root_.getAttribute(e,n)},setAttr:function(e,n){return t.root_.setAttribute(e,n)},removeAttr:function(e){return t.root_.removeAttribute(e)},notifyChange:function(e){return t.emit(g.strings.CHANGE_EVENT,e)}})}},{key:"initialSyncWithDOM",value:function(){this.on="true"===this.root_.getAttribute(g.strings.ARIA_PRESSED)}},{key:"refreshToggleData",value:function(){this.foundation_.refreshToggleData()}},{key:"iconEl_",get:function(){var t=this.root_.dataset.iconInnerSelector;return t?this.root_.querySelector(t):this.root_}},{key:"ripple",get:function(){return this.ripple_}},{key:"on",get:function(){return this.foundation_.isOn()},set:function(t){this.foundation_.toggle(t)}}]),e}(),S=n(0),C={mixins:[S.a,S.b],model:{prop:"value",event:"change"},props:{toggleOnContent:{type:String,default:""},toggleOnLabel:{type:String,default:""},toggleOnClass:{type:String,default:""},toggleOffContent:{type:String,default:""},toggleOffLabel:{type:String,default:""},toggleOffClass:{type:String,default:""},value:{type:Boolean,default:!1}},data:function(){return{mdcIconButtonToggle:void 0,mdcRipple:void 0,slotObserver:void 0}},watch:{value:function(t){void 0!==this.mdcIconButtonToggle&&(this.mdcIconButtonToggle.on=t)}},mounted:function(){var t=this;this.update(),this.slotObserver=new MutationObserver(function(){return t.update()}),this.slotObserver.observe(this.$el,{childList:!0,subtree:!0})},beforeDestroy:function(){void 0!==this.mdcIconButtonToggle&&this.mdcIconButtonToggle.destroy(),void 0!==this.mdcRipple&&this.mdcRipple.destroy()},methods:{update:function(){(this.isToggleButton()||this.isToggleButtonViaSlots())&&(this.mdcIconButtonToggle=E.attachTo(this.$el),this.mdcIconButtonToggle.on=this.value),this.isIconButton()&&(this.mdcRipple=i.a.attachTo(this.$el),this.mdcRipple.unbounded=!0)},isIconButton:function(){return this.$slots.default},isToggleButton:function(){return""!==this.toggleOnContent&&""!==this.toggleOffContent},isToggleButtonViaSlots:function(){return""===this.toggleOnContent&&""===this.toggleOffContent&&this.$slots.toggleOn&&this.$slots.toggleOff}}},w=n(3),k=Object(w.a)(C,function(){var t=this,e=t.$createElement;return(t._self._c||e)("button",t._g(t._b({staticClass:"mdc-icon-button",attrs:{"data-toggle-on-content":t.toggleOnContent,"data-toggle-on-label":t.toggleOnLabel,"data-toggle-on-class":t.toggleOnClass,"data-toggle-off-content":t.toggleOffContent,"data-toggle-off-label":t.toggleOffLabel,"data-toggle-off-class":t.toggleOffClass},on:{"MDCIconButtonToggle:change":function(e){t.$emit("change",e.detail.isOn)}}},"button",t.$attrs,!1),t.$listeners),[t.isIconButton?t._t("default"):t.isToggleButtonViaSlots&&!t.value?t._t("toggleOn"):t.isToggleButtonViaSlots&&t.value?t._t("toggleOff"):t._e()],2)},[],!1,null,null,null).exports,I=(n(85),n(5)),D={install:function(t){t.component("m-icon-button",k)}};e.default=D,Object(I.b)(D)},4:function(t,e,n){"use strict";var i=n(2);function o(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function r(t,e,n){return e&&o(t.prototype,e),n&&o(t,n),t}
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
 */var a=function(){function t(e){var n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:void 0;!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,t),this.root_=e;for(var i=arguments.length,o=new Array(i>2?i-2:0),r=2;r<i;r++)o[r-2]=arguments[r];this.initialize.apply(this,o),this.foundation_=void 0===n?this.getDefaultFoundation():n,this.foundation_.init(),this.initialSyncWithDOM()}return r(t,null,[{key:"attachTo",value:function(e){return new t(e,new i.a)}}]),r(t,[{key:"initialize",value:function(){}},{key:"getDefaultFoundation",value:function(){throw new Error("Subclasses must override getDefaultFoundation to return a properly configured foundation class")}},{key:"initialSyncWithDOM",value:function(){}},{key:"destroy",value:function(){this.foundation_.destroy()}},{key:"listen",value:function(t,e){this.root_.addEventListener(t,e)}},{key:"unlisten",value:function(t,e){this.root_.removeEventListener(t,e)}},{key:"emit",value:function(t,e){var n,i=arguments.length>2&&void 0!==arguments[2]&&arguments[2];"function"==typeof CustomEvent?n=new CustomEvent(t,{detail:e,bubbles:i}):(n=document.createEvent("CustomEvent")).initCustomEvent(t,i,!1,e),this.root_.dispatchEvent(n)}}]),t}();e.a=a},5:function(t,e,n){"use strict";function i(t,e){return e=e||100,function(){if(!t.debouncing){var n=Array.prototype.slice.apply(arguments);t.lastReturnVal=t.apply(window,n),t.debouncing=!0}return clearTimeout(t.debounceTimeout),t.debounceTimeout=setTimeout(function(){t.debouncing=!1},e),t.lastReturnVal}}function o(t){"undefined"!=typeof window&&window.Vue&&window.Vue.use(t)}n.d(e,"a",function(){return i}),n.d(e,"b",function(){return o})},6:function(t,e,n){"use strict";var i=n(4),o=n(2),r={ROOT:"mdc-ripple-upgraded",UNBOUNDED:"mdc-ripple-upgraded--unbounded",BG_FOCUSED:"mdc-ripple-upgraded--background-focused",FG_ACTIVATION:"mdc-ripple-upgraded--foreground-activation",FG_DEACTIVATION:"mdc-ripple-upgraded--foreground-deactivation"},a={VAR_LEFT:"--mdc-ripple-left",VAR_TOP:"--mdc-ripple-top",VAR_FG_SIZE:"--mdc-ripple-fg-size",VAR_FG_SCALE:"--mdc-ripple-fg-scale",VAR_FG_TRANSLATE_START:"--mdc-ripple-fg-translate-start",VAR_FG_TRANSLATE_END:"--mdc-ripple-fg-translate-end"},s={PADDING:10,INITIAL_ORIGIN_SCALE:.6,DEACTIVATION_TIMEOUT_MS:225,FG_DEACTIVATION_MS:150,TAP_DELAY_MS:300},u=n(1);
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
 */function c(t){return(c="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function l(){return(l=Object.assign||function(t){for(var e=1;e<arguments.length;e++){var n=arguments[e];for(var i in n)Object.prototype.hasOwnProperty.call(n,i)&&(t[i]=n[i])}return t}).apply(this,arguments)}function d(t){return(d=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function f(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function p(t,e,n){return e&&f(t.prototype,e),n&&f(t,n),t}function _(t,e){return(_=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}
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
 */var h=["touchstart","pointerdown","mousedown","keydown"],v=["touchend","pointerup","mouseup"],g=[],y=function(t){function e(t){var n;return function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,e),(n=function(t,e){return!e||"object"!==c(e)&&"function"!=typeof e?function(t){if(void 0===t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return t}(t):e}(this,d(e).call(this,l(e.defaultAdapter,t)))).layoutFrame_=0,n.frame_={width:0,height:0},n.activationState_=n.defaultActivationState_(),n.initialSize_=0,n.maxRadius_=0,n.activateHandler_=function(t){return n.activate_(t)},n.deactivateHandler_=function(t){return n.deactivate_(t)},n.focusHandler_=function(){return requestAnimationFrame(function(){return n.adapter_.addClass(e.cssClasses.BG_FOCUSED)})},n.blurHandler_=function(){return requestAnimationFrame(function(){return n.adapter_.removeClass(e.cssClasses.BG_FOCUSED)})},n.resizeHandler_=function(){return n.layout()},n.unboundedCoords_={left:0,top:0},n.fgScale_=0,n.activationTimer_=0,n.fgDeactivationRemovalTimer_=0,n.activationAnimationHasEnded_=!1,n.activationTimerCallback_=function(){n.activationAnimationHasEnded_=!0,n.runDeactivationUXLogicIfReady_()},n.previousActivationEvent_=null,n}return function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&_(t,e)}(e,o.a),p(e,null,[{key:"cssClasses",get:function(){return r}},{key:"strings",get:function(){return a}},{key:"numbers",get:function(){return s}},{key:"defaultAdapter",get:function(){return{browserSupportsCssVars:function(){},isUnbounded:function(){},isSurfaceActive:function(){},isSurfaceDisabled:function(){},addClass:function(){},removeClass:function(){},containsEventTarget:function(){},registerInteractionHandler:function(){},deregisterInteractionHandler:function(){},registerDocumentInteractionHandler:function(){},deregisterDocumentInteractionHandler:function(){},registerResizeHandler:function(){},deregisterResizeHandler:function(){},updateCssVariable:function(){},computeBoundingRect:function(){},getWindowPageOffset:function(){}}}}]),p(e,[{key:"isSupported_",value:function(){return this.adapter_.browserSupportsCssVars()}},{key:"defaultActivationState_",value:function(){return{isActivated:!1,hasDeactivationUXRun:!1,wasActivatedByPointer:!1,wasElementMadeActive:!1,activationEvent:null,isProgrammatic:!1}}},{key:"init",value:function(){var t=this;if(this.isSupported_()){this.registerRootHandlers_();var n=e.cssClasses,i=n.ROOT,o=n.UNBOUNDED;requestAnimationFrame(function(){t.adapter_.addClass(i),t.adapter_.isUnbounded()&&(t.adapter_.addClass(o),t.layoutInternal_())})}}},{key:"destroy",value:function(){var t=this;if(this.isSupported_()){if(this.activationTimer_){clearTimeout(this.activationTimer_),this.activationTimer_=0;var n=e.cssClasses.FG_ACTIVATION;this.adapter_.removeClass(n)}this.deregisterRootHandlers_(),this.deregisterDeactivationHandlers_();var i=e.cssClasses,o=i.ROOT,r=i.UNBOUNDED;requestAnimationFrame(function(){t.adapter_.removeClass(o),t.adapter_.removeClass(r),t.removeCssVars_()})}}},{key:"registerRootHandlers_",value:function(){var t=this;h.forEach(function(e){t.adapter_.registerInteractionHandler(e,t.activateHandler_)}),this.adapter_.registerInteractionHandler("focus",this.focusHandler_),this.adapter_.registerInteractionHandler("blur",this.blurHandler_),this.adapter_.isUnbounded()&&this.adapter_.registerResizeHandler(this.resizeHandler_)}},{key:"registerDeactivationHandlers_",value:function(t){var e=this;"keydown"===t.type?this.adapter_.registerInteractionHandler("keyup",this.deactivateHandler_):v.forEach(function(t){e.adapter_.registerDocumentInteractionHandler(t,e.deactivateHandler_)})}},{key:"deregisterRootHandlers_",value:function(){var t=this;h.forEach(function(e){t.adapter_.deregisterInteractionHandler(e,t.activateHandler_)}),this.adapter_.deregisterInteractionHandler("focus",this.focusHandler_),this.adapter_.deregisterInteractionHandler("blur",this.blurHandler_),this.adapter_.isUnbounded()&&this.adapter_.deregisterResizeHandler(this.resizeHandler_)}},{key:"deregisterDeactivationHandlers_",value:function(){var t=this;this.adapter_.deregisterInteractionHandler("keyup",this.deactivateHandler_),v.forEach(function(e){t.adapter_.deregisterDocumentInteractionHandler(e,t.deactivateHandler_)})}},{key:"removeCssVars_",value:function(){var t=this,n=e.strings;Object.keys(n).forEach(function(e){0===e.indexOf("VAR_")&&t.adapter_.updateCssVariable(n[e],null)})}},{key:"activate_",value:function(t){var e=this;if(!this.adapter_.isSurfaceDisabled()){var n=this.activationState_;if(!n.isActivated){var i=this.previousActivationEvent_;i&&t&&i.type!==t.type||(n.isActivated=!0,n.isProgrammatic=null===t,n.activationEvent=t,n.wasActivatedByPointer=!n.isProgrammatic&&("mousedown"===t.type||"touchstart"===t.type||"pointerdown"===t.type),t&&g.length>0&&g.some(function(t){return e.adapter_.containsEventTarget(t)})?this.resetActivationState_():(t&&(g.push(t.target),this.registerDeactivationHandlers_(t)),n.wasElementMadeActive=this.checkElementMadeActive_(t),n.wasElementMadeActive&&this.animateActivation_(),requestAnimationFrame(function(){g=[],n.wasElementMadeActive||" "!==t.key&&32!==t.keyCode||(n.wasElementMadeActive=e.checkElementMadeActive_(t),n.wasElementMadeActive&&e.animateActivation_()),n.wasElementMadeActive||(e.activationState_=e.defaultActivationState_())})))}}}},{key:"checkElementMadeActive_",value:function(t){return!t||"keydown"!==t.type||this.adapter_.isSurfaceActive()}},{key:"activate",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:null;this.activate_(t)}},{key:"animateActivation_",value:function(){var t=this,n=e.strings,i=n.VAR_FG_TRANSLATE_START,o=n.VAR_FG_TRANSLATE_END,r=e.cssClasses,a=r.FG_DEACTIVATION,s=r.FG_ACTIVATION,u=e.numbers.DEACTIVATION_TIMEOUT_MS;this.layoutInternal_();var c="",l="";if(!this.adapter_.isUnbounded()){var d=this.getFgTranslationCoordinates_(),f=d.startPoint,p=d.endPoint;c="".concat(f.x,"px, ").concat(f.y,"px"),l="".concat(p.x,"px, ").concat(p.y,"px")}this.adapter_.updateCssVariable(i,c),this.adapter_.updateCssVariable(o,l),clearTimeout(this.activationTimer_),clearTimeout(this.fgDeactivationRemovalTimer_),this.rmBoundedActivationClasses_(),this.adapter_.removeClass(a),this.adapter_.computeBoundingRect(),this.adapter_.addClass(s),this.activationTimer_=setTimeout(function(){return t.activationTimerCallback_()},u)}},{key:"getFgTranslationCoordinates_",value:function(){var t,e=this.activationState_,n=e.activationEvent;return{startPoint:t={x:(t=e.wasActivatedByPointer?Object(u.c)(n,this.adapter_.getWindowPageOffset(),this.adapter_.computeBoundingRect()):{x:this.frame_.width/2,y:this.frame_.height/2}).x-this.initialSize_/2,y:t.y-this.initialSize_/2},endPoint:{x:this.frame_.width/2-this.initialSize_/2,y:this.frame_.height/2-this.initialSize_/2}}}},{key:"runDeactivationUXLogicIfReady_",value:function(){var t=this,n=e.cssClasses.FG_DEACTIVATION,i=this.activationState_,o=i.hasDeactivationUXRun,r=i.isActivated;(o||!r)&&this.activationAnimationHasEnded_&&(this.rmBoundedActivationClasses_(),this.adapter_.addClass(n),this.fgDeactivationRemovalTimer_=setTimeout(function(){t.adapter_.removeClass(n)},s.FG_DEACTIVATION_MS))}},{key:"rmBoundedActivationClasses_",value:function(){var t=e.cssClasses.FG_ACTIVATION;this.adapter_.removeClass(t),this.activationAnimationHasEnded_=!1,this.adapter_.computeBoundingRect()}},{key:"resetActivationState_",value:function(){var t=this;this.previousActivationEvent_=this.activationState_.activationEvent,this.activationState_=this.defaultActivationState_(),setTimeout(function(){return t.previousActivationEvent_=null},e.numbers.TAP_DELAY_MS)}},{key:"deactivate_",value:function(t){var e=this,n=this.activationState_;if(n.isActivated){var i=l({},n);n.isProgrammatic?(requestAnimationFrame(function(){return e.animateDeactivation_(null,i)}),this.resetActivationState_()):(this.deregisterDeactivationHandlers_(),requestAnimationFrame(function(){e.activationState_.hasDeactivationUXRun=!0,e.animateDeactivation_(t,i),e.resetActivationState_()}))}}},{key:"deactivate",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:null;this.deactivate_(t)}},{key:"animateDeactivation_",value:function(t,e){var n=e.wasActivatedByPointer,i=e.wasElementMadeActive;(n||i)&&this.runDeactivationUXLogicIfReady_()}},{key:"layout",value:function(){var t=this;this.layoutFrame_&&cancelAnimationFrame(this.layoutFrame_),this.layoutFrame_=requestAnimationFrame(function(){t.layoutInternal_(),t.layoutFrame_=0})}},{key:"layoutInternal_",value:function(){this.frame_=this.adapter_.computeBoundingRect();var t=Math.max(this.frame_.height,this.frame_.width);this.maxRadius_=this.adapter_.isUnbounded()?t:Math.sqrt(Math.pow(this.frame_.width,2)+Math.pow(this.frame_.height,2))+e.numbers.PADDING,this.initialSize_=t*e.numbers.INITIAL_ORIGIN_SCALE,this.fgScale_=this.maxRadius_/this.initialSize_,this.updateLayoutCssVars_()}},{key:"updateLayoutCssVars_",value:function(){var t=e.strings,n=t.VAR_FG_SIZE,i=t.VAR_LEFT,o=t.VAR_TOP,r=t.VAR_FG_SCALE;this.adapter_.updateCssVariable(n,"".concat(this.initialSize_,"px")),this.adapter_.updateCssVariable(r,this.fgScale_),this.adapter_.isUnbounded()&&(this.unboundedCoords_={left:Math.round(this.frame_.width/2-this.initialSize_/2),top:Math.round(this.frame_.height/2-this.initialSize_/2)},this.adapter_.updateCssVariable(i,"".concat(this.unboundedCoords_.left,"px")),this.adapter_.updateCssVariable(o,"".concat(this.unboundedCoords_.top,"px")))}},{key:"setUnbounded",value:function(t){var n=e.cssClasses.UNBOUNDED;t?this.adapter_.addClass(n):this.adapter_.removeClass(n)}}]),e}();function m(t){return(m="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function b(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}function A(t,e){for(var n=0;n<e.length;n++){var i=e[n];i.enumerable=i.enumerable||!1,i.configurable=!0,"value"in i&&(i.writable=!0),Object.defineProperty(t,i.key,i)}}function O(t){return(O=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function T(t,e){return(T=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}
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
 */n.d(e,"a",function(){return E}),n.d(e,"b",function(){return y}),n.d(e,!1,function(){});var E=function(t){function e(){var t,n;b(this,e);for(var i=arguments.length,o=new Array(i),r=0;r<i;r++)o[r]=arguments[r];return(n=function(t,e){return!e||"object"!==m(e)&&"function"!=typeof e?function(t){if(void 0===t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return t}(t):e}(this,(t=O(e)).call.apply(t,[this].concat(o)))).disabled=!1,n.unbounded_,n}var n,o,r;return function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&T(t,e)}(e,i.a),n=e,r=[{key:"attachTo",value:function(t){var n=(arguments.length>1&&void 0!==arguments[1]?arguments[1]:{}).isUnbounded,i=void 0===n?void 0:n,o=new e(t);return void 0!==i&&(o.unbounded=i),o}},{key:"createAdapter",value:function(t){var e=u.b(HTMLElement.prototype);return{browserSupportsCssVars:function(){return u.d(window)},isUnbounded:function(){return t.unbounded},isSurfaceActive:function(){return t.root_[e](":active")},isSurfaceDisabled:function(){return t.disabled},addClass:function(e){return t.root_.classList.add(e)},removeClass:function(e){return t.root_.classList.remove(e)},containsEventTarget:function(e){return t.root_.contains(e)},registerInteractionHandler:function(e,n){return t.root_.addEventListener(e,n,u.a())},deregisterInteractionHandler:function(e,n){return t.root_.removeEventListener(e,n,u.a())},registerDocumentInteractionHandler:function(t,e){return document.documentElement.addEventListener(t,e,u.a())},deregisterDocumentInteractionHandler:function(t,e){return document.documentElement.removeEventListener(t,e,u.a())},registerResizeHandler:function(t){return window.addEventListener("resize",t)},deregisterResizeHandler:function(t){return window.removeEventListener("resize",t)},updateCssVariable:function(e,n){return t.root_.style.setProperty(e,n)},computeBoundingRect:function(){return t.root_.getBoundingClientRect()},getWindowPageOffset:function(){return{x:window.pageXOffset,y:window.pageYOffset}}}}}],(o=[{key:"setUnbounded_",value:function(){this.foundation_.setUnbounded(this.unbounded_)}},{key:"activate",value:function(){this.foundation_.activate()}},{key:"deactivate",value:function(){this.foundation_.deactivate()}},{key:"layout",value:function(){this.foundation_.layout()}},{key:"getDefaultFoundation",value:function(){return new y(e.createAdapter(this))}},{key:"initialSyncWithDOM",value:function(){this.unbounded="mdcRippleIsUnbounded"in this.root_.dataset}},{key:"unbounded",get:function(){return this.unbounded_},set:function(t){this.unbounded_=Boolean(t),this.setUnbounded_()}}])&&A(n.prototype,o),r&&A(n,r),e}(),S=function t(){b(this,t)};S.prototype.root_,S.prototype.unbounded,S.prototype.disabled},85:function(t,e,n){}})});""");
  loadStyle(r"""@keyframes a{0%{animation-timing-function:cubic-bezier(.4,0,.2,1);transform:translate(var(--mdc-ripple-fg-translate-start,0)) scale(1)}to{transform:translate(var(--mdc-ripple-fg-translate-end,0)) scale(var(--mdc-ripple-fg-scale,1))}}@keyframes b{0%{animation-timing-function:linear;opacity:0}to{opacity:var(--mdc-ripple-fg-opacity,0)}}@keyframes c{0%{animation-timing-function:linear;opacity:var(--mdc-ripple-fg-opacity,0)}to{opacity:0}}.mdc-ripple-surface--test-edge-var-bug{--mdc-ripple-surface-test-edge-var:1px solid #000;visibility:hidden}.mdc-ripple-surface--test-edge-var-bug:before{border:var(--mdc-ripple-surface-test-edge-var)}.mdc-icon-button{--mdc-ripple-fg-size:0;--mdc-ripple-left:0;--mdc-ripple-top:0;--mdc-ripple-fg-scale:1;--mdc-ripple-fg-translate-end:0;--mdc-ripple-fg-translate-start:0;-webkit-tap-highlight-color:rgba(0,0,0,0);will-change:transform,opacity;width:48px;height:48px;padding:12px;font-size:24px;display:inline-block;position:relative;box-sizing:border-box;border:none;outline:none;background-color:transparent;fill:currentColor;color:inherit;text-decoration:none;cursor:pointer;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.mdc-icon-button:after,.mdc-icon-button:before{position:absolute;border-radius:50%;opacity:0;pointer-events:none;content:""}.mdc-icon-button:before{transition:opacity 15ms linear;z-index:1}.mdc-icon-button.mdc-ripple-upgraded:before{transform:scale(var(--mdc-ripple-fg-scale,1))}.mdc-icon-button.mdc-ripple-upgraded:after{top:0;left:0;transform:scale(0);transform-origin:center center}.mdc-icon-button.mdc-ripple-upgraded--unbounded:after{top:var(--mdc-ripple-top,0);left:var(--mdc-ripple-left,0)}.mdc-icon-button.mdc-ripple-upgraded--foreground-activation:after{animation:225ms a forwards,75ms b forwards}.mdc-icon-button.mdc-ripple-upgraded--foreground-deactivation:after{animation:.15s c;transform:translate(var(--mdc-ripple-fg-translate-end,0)) scale(var(--mdc-ripple-fg-scale,1))}.mdc-icon-button:after,.mdc-icon-button:before{top:0%;left:0%;width:100%;height:100%}.mdc-icon-button.mdc-ripple-upgraded:after,.mdc-icon-button.mdc-ripple-upgraded:before{top:var(--mdc-ripple-top,0%);left:var(--mdc-ripple-left,0%);width:var(--mdc-ripple-fg-size,100%);height:var(--mdc-ripple-fg-size,100%)}.mdc-icon-button.mdc-ripple-upgraded:after{width:var(--mdc-ripple-fg-size,100%);height:var(--mdc-ripple-fg-size,100%)}.mdc-icon-button img,.mdc-icon-button svg{width:24px;height:24px}.mdc-icon-button:disabled{color:rgba(0,0,0,.38);color:var(--mdc-theme-text-disabled-on-light,rgba(0,0,0,.38));cursor:default;pointer-events:none}.mdc-icon-button:after,.mdc-icon-button:before{background-color:#000}.mdc-icon-button:hover:before{opacity:.04}.mdc-icon-button.mdc-ripple-upgraded--background-focused:before,.mdc-icon-button:not(.mdc-ripple-upgraded):focus:before{transition-duration:75ms;opacity:.12}.mdc-icon-button:not(.mdc-ripple-upgraded):after{transition:opacity .15s linear}.mdc-icon-button:not(.mdc-ripple-upgraded):active:after{transition-duration:75ms;opacity:.16}.mdc-icon-button.mdc-ripple-upgraded{--mdc-ripple-fg-opacity:0.16}.mdc-icon-button--disabled{color:rgba(0,0,0,.38);color:var(--mdc-theme-text-disabled-on-light,rgba(0,0,0,.38));pointer-events:none}""");
  _initialized = true;
}

@VueComponent(template: r'''
<m-icon-button
  v-on="$listeners"
  :theming="theming"
  ref="inner"
  :toggleOnContent="toggleOnContent"
  :toggleOnLabel="toggleOnLabel"
  :toggleOnClass="toggleOnClass"
  :toggleOffContent="toggleOffContent"
  :toggleOffLabel="toggleOffLabel"
  :toggleOffClass="toggleOffClass"
  v-model="_valueModel"
>
  <slot v-if="$slots.default"></slot>
  <template v-if="$slots.toggleOn" slot="toggleOn">
    <slot name="toggleOn"></slot>
  </template>
  <template v-if="$slots.toggleOff" slot="toggleOff">
    <slot name="toggleOff"></slot>
  </template>
</m-icon-button>''')
class MIconButton extends VueComponentBase with BaseMixin {
  static final change = VueEventSpec<bool>('change');
  VueEventSink<bool> changeSink;
  VueEventStream<bool> changeStream;
  MIconButton() { _initialize(); }
  @override
  void lifecycleCreated() {
    changeSink = MIconButton.change.createSink(this);
    changeStream = MIconButton.change.createStream(this);
  }
  @ref
  dynamic inner;
  @prop
  String toggleOnContent = '';
  @prop
  String toggleOnLabel = '';
  @prop
  String toggleOnClass = '';
  @prop
  String toggleOffContent = '';
  @prop
  String toggleOffLabel = '';
  @prop
  String toggleOffClass = '';
  @model(event: 'change')
  @prop
  bool value = false;
  @computed
  get _valueModel => value;
  @computed
  set _valueModel(value) => changeSink.add(value);
}
