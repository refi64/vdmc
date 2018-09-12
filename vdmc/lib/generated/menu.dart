import 'package:vue/vue.dart';
import '../component.template.dart';
import 'dart:html';

bool _initialized = false;
void _initialize() {
  if (_initialized) return;
  eval(r"""!function(e,t){if("object"==typeof exports&&"object"==typeof module)module.exports=t();else if("function"==typeof define&&define.amd)define([],t);else{var n=t();for(var r in n)("object"==typeof exports?exports:e)[r]=n[r]}}(window,function(){return function(e){var t={};function n(r){if(t[r])return t[r].exports;var i=t[r]={i:r,l:!1,exports:{}};return e[r].call(i.exports,i,i.exports,n),i.l=!0,i.exports}return n.m=e,n.c=t,n.d=function(e,t,r){n.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:r})},n.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},n.t=function(e,t){if(1&t&&(e=n(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var r=Object.create(null);if(n.r(r),Object.defineProperty(r,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var i in e)n.d(r,i,function(t){return e[t]}.bind(null,i));return r},n.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return n.d(t,"a",t),t},n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},n.p="",n(n.s=36)}({0:function(e,t,n){"use strict";var r={inheritAttrs:!1},i=["primary","secondary","background","surface","on-primary","on-secondary","on-surface","primary-bg","secondary-bg","text-primary-on-light","text-secondary-on-light","text-hint-on-light","text-disabled-on-light","text-icon-on-light","text-primary-on-dark","text-secondary-on-dark","text-hint-on-dark","text-disabled-on-dark","text-icon-on-dark"],o={props:{theming:{type:String,default:""}},mounted:function(){i.indexOf(this.theming)>-1&&this.$el.classList.add("mdc-theme--"+this.theming)}};n.d(t,"a",function(){return r}),n.d(t,"b",function(){return o})},2:function(e,t,n){"use strict";function r(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}function i(e,t,n){return t&&r(e.prototype,t),n&&r(e,n),e}
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
 */var o=function(){function e(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};!function(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}(this,e),this.adapter_=t}return i(e,null,[{key:"cssClasses",get:function(){return{}}},{key:"strings",get:function(){return{}}},{key:"numbers",get:function(){return{}}},{key:"defaultAdapter",get:function(){return{}}}]),i(e,[{key:"init",value:function(){}},{key:"destroy",value:function(){}}]),e}();t.a=o},3:function(e,t,n){"use strict";function r(e,t,n,r,i,o,s,a){var u,c="function"==typeof e?e.options:e;if(t&&(c.render=t,c.staticRenderFns=n,c._compiled=!0),r&&(c.functional=!0),o&&(c._scopeId="data-v-"+o),s?(u=function(e){(e=e||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(e=__VUE_SSR_CONTEXT__),i&&i.call(this,e),e&&e._registeredComponents&&e._registeredComponents.add(s)},c._ssrRegister=u):i&&(u=a?function(){i.call(this,this.$root.$options.shadowRoot)}:i),u)if(c.functional){c._injectStyles=u;var l=c.render;c.render=function(e,t){return u.call(t),l(e,t)}}else{var d=c.beforeCreate;c.beforeCreate=d?[].concat(d,u):[u]}return{exports:e,options:c}}n.d(t,"a",function(){return r})},36:function(e,t,n){"use strict";n.r(t);var r,i=n(4),o=n(2),s={ROOT:"mdc-menu",OPEN:"mdc-menu--open",ANIMATING_OPEN:"mdc-menu--animating-open",ANIMATING_CLOSED:"mdc-menu--animating-closed",SELECTED_LIST_ITEM:"mdc-list-item--selected"},a={ITEMS_SELECTOR:".mdc-menu__items",SELECTED_EVENT:"MDCMenu:selected",CANCEL_EVENT:"MDCMenu:cancel",ARIA_DISABLED_ATTR:"aria-disabled"},u={SELECTED_TRIGGER_DELAY:50,TRANSITION_OPEN_DURATION:120,TRANSITION_CLOSE_DURATION:75,MARGIN_TO_EDGE:32,ANCHOR_TO_MENU_WIDTH_RATIO:.67,OFFSET_TO_MENU_HEIGHT_RATIO:.1},c={TOP_LEFT:0,TOP_RIGHT:4,BOTTOM_LEFT:1,BOTTOM_RIGHT:5,TOP_START:8,TOP_END:12,BOTTOM_START:9,BOTTOM_END:13};
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
 */
function l(e){return(l="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e})(e)}function d(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function f(){return(f=Object.assign||function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var r in n)Object.prototype.hasOwnProperty.call(n,r)&&(e[r]=n[r])}return e}).apply(this,arguments)}function h(e){return(h=Object.setPrototypeOf?Object.getPrototypeOf:function(e){return e.__proto__||Object.getPrototypeOf(e)})(e)}function _(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}function m(e,t,n){return t&&_(e.prototype,t),n&&_(e,n),e}function p(e,t){return(p=Object.setPrototypeOf||function(e,t){return e.__proto__=t,e})(e,t)}
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
 */var g=function(e){function t(e){var n;return function(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}(this,t),(n=function(e,t){return!t||"object"!==l(t)&&"function"!=typeof t?function(e){if(void 0===e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return e}(e):t}(this,h(t).call(this,f(t.defaultAdapter,e)))).clickHandler_=function(e){return n.handlePossibleSelected_(e)},n.keydownHandler_=function(e){return n.handleKeyboardDown_(e)},n.keyupHandler_=function(e){return n.handleKeyboardUp_(e)},n.documentClickHandler_=function(e){return n.handleDocumentClick_(e)},n.isOpen_=!1,n.openAnimationEndTimerId_=0,n.closeAnimationEndTimerId_=0,n.selectedTriggerTimerId_=0,n.animationRequestId_=0,n.dimensions_,n.itemHeight_,n.anchorCorner_=c.TOP_START,n.anchorMargin_={top:0,right:0,bottom:0,left:0},n.measures_=null,n.selectedIndex_=-1,n.rememberSelection_=!1,n.quickOpen_=!1,n.keyDownWithinMenu_=!1,n}return function(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function");e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,writable:!0,configurable:!0}}),t&&p(e,t)}(t,o.a),m(t,null,[{key:"cssClasses",get:function(){return s}},{key:"strings",get:function(){return a}},{key:"numbers",get:function(){return u}},{key:"Corner",get:function(){return c}},{key:"defaultAdapter",get:function(){return{addClass:function(){},removeClass:function(){},hasClass:function(){return!1},hasNecessaryDom:function(){return!1},getAttributeForEventTarget:function(){},getInnerDimensions:function(){return{}},hasAnchor:function(){return!1},getAnchorDimensions:function(){return{}},getWindowDimensions:function(){return{}},getNumberOfItems:function(){return 0},registerInteractionHandler:function(){},deregisterInteractionHandler:function(){},registerBodyClickHandler:function(){},deregisterBodyClickHandler:function(){},getIndexForEventTarget:function(){return 0},notifySelected:function(){},notifyCancel:function(){},saveFocus:function(){},restoreFocus:function(){},isFocused:function(){return!1},focus:function(){},getFocusedItemIndex:function(){return-1},focusItemAtIndex:function(){},isRtl:function(){return!1},setTransformOrigin:function(){},setPosition:function(){},setMaxHeight:function(){},setAttrForOptionAtIndex:function(){},rmAttrForOptionAtIndex:function(){},addClassForOptionAtIndex:function(){},rmClassForOptionAtIndex:function(){}}}}]),m(t,[{key:"init",value:function(){var e=t.cssClasses,n=e.ROOT,r=e.OPEN;if(!this.adapter_.hasClass(n))throw new Error("".concat(n," class required in root element."));if(!this.adapter_.hasNecessaryDom())throw new Error("Required DOM nodes missing in ".concat(n," component."));this.adapter_.hasClass(r)&&(this.isOpen_=!0),this.adapter_.registerInteractionHandler("click",this.clickHandler_),this.adapter_.registerInteractionHandler("keyup",this.keyupHandler_),this.adapter_.registerInteractionHandler("keydown",this.keydownHandler_)}},{key:"destroy",value:function(){clearTimeout(this.selectedTriggerTimerId_),clearTimeout(this.openAnimationEndTimerId_),clearTimeout(this.closeAnimationEndTimerId_),cancelAnimationFrame(this.animationRequestId_),this.adapter_.deregisterInteractionHandler("click",this.clickHandler_),this.adapter_.deregisterInteractionHandler("keyup",this.keyupHandler_),this.adapter_.deregisterInteractionHandler("keydown",this.keydownHandler_),this.adapter_.deregisterBodyClickHandler(this.documentClickHandler_)}},{key:"setAnchorCorner",value:function(e){this.anchorCorner_=e}},{key:"setAnchorMargin",value:function(e){this.anchorMargin_.top="number"==typeof e.top?e.top:0,this.anchorMargin_.right="number"==typeof e.right?e.right:0,this.anchorMargin_.bottom="number"==typeof e.bottom?e.bottom:0,this.anchorMargin_.left="number"==typeof e.left?e.left:0}},{key:"setRememberSelection",value:function(e){this.rememberSelection_=e,this.setSelectedIndex(-1)}},{key:"setQuickOpen",value:function(e){this.quickOpen_=e}},{key:"focusOnOpen_",value:function(e){if(null===e){if(this.rememberSelection_&&this.selectedIndex_>=0)return void this.adapter_.focusItemAtIndex(this.selectedIndex_);this.adapter_.focus(),this.adapter_.isFocused()||this.adapter_.focusItemAtIndex(0)}else this.adapter_.focusItemAtIndex(e)}},{key:"handleDocumentClick_",value:function(e){for(var t=e.target;t&&t!==document.documentElement;){if(-1!==this.adapter_.getIndexForEventTarget(t))return;t=t.parentNode}this.adapter_.notifyCancel(),this.close(e)}},{key:"handleKeyboardDown_",value:function(e){if(e.altKey||e.ctrlKey||e.metaKey)return!0;var t=e.keyCode,n=e.key,r=e.shiftKey,i="Tab"===n||9===t,o="ArrowUp"===n||38===t,s="ArrowDown"===n||40===t,a="Space"===n||32===t,u="Enter"===n||13===t;this.keyDownWithinMenu_=u||a;var c=this.adapter_.getFocusedItemIndex(),l=this.adapter_.getNumberOfItems()-1;return r&&i&&0===c?(this.adapter_.focusItemAtIndex(l),e.preventDefault(),!1):!r&&i&&c===l?(this.adapter_.focusItemAtIndex(0),e.preventDefault(),!1):((o||s||a)&&e.preventDefault(),o?0===c||this.adapter_.isFocused()?this.adapter_.focusItemAtIndex(l):this.adapter_.focusItemAtIndex(c-1):s&&(c===l||this.adapter_.isFocused()?this.adapter_.focusItemAtIndex(0):this.adapter_.focusItemAtIndex(c+1)),!0)}},{key:"handleKeyboardUp_",value:function(e){if(e.altKey||e.ctrlKey||e.metaKey)return!0;var t=e.keyCode,n=e.key,r="Escape"===n||27===t;return("Enter"===n||13===t||"Space"===n||32===t)&&(this.keyDownWithinMenu_&&this.handlePossibleSelected_(e),this.keyDownWithinMenu_=!1),r&&(this.adapter_.notifyCancel(),this.close()),!0}},{key:"handlePossibleSelected_",value:function(e){var t=this;if("true"!==this.adapter_.getAttributeForEventTarget(e.target,a.ARIA_DISABLED_ATTR)){var n=this.adapter_.getIndexForEventTarget(e.target);n<0||this.selectedTriggerTimerId_||(this.selectedTriggerTimerId_=setTimeout(function(){t.selectedTriggerTimerId_=0,t.close(),t.rememberSelection_&&t.setSelectedIndex(n),t.adapter_.notifySelected({index:n})},u.SELECTED_TRIGGER_DELAY))}}},{key:"getAutoLayoutMeasurements_",value:function(){var e=this.adapter_.getAnchorDimensions(),t=this.adapter_.getWindowDimensions();return{viewport:t,viewportDistance:{top:e.top,right:t.width-e.right,left:e.left,bottom:t.height-e.bottom},anchorHeight:e.height,anchorWidth:e.width,menuHeight:this.dimensions_.height,menuWidth:this.dimensions_.width}}},{key:"getOriginCorner_",value:function(){var e=c.TOP_LEFT,t=this.measures_,n=t.viewportDistance,r=t.anchorHeight,i=t.anchorWidth,o=t.menuHeight,s=t.menuWidth,a=Boolean(1&this.anchorCorner_),u=a?n.top+r+this.anchorMargin_.bottom:n.top+this.anchorMargin_.top,l=o-(a?n.bottom-this.anchorMargin_.bottom:n.bottom+r-this.anchorMargin_.top);l>0&&o-u<l&&(e|=1);var d=this.adapter_.isRtl(),f=Boolean(8&this.anchorCorner_),h=Boolean(4&this.anchorCorner_),_=h&&!d||!h&&f&&d,m=s-(_?n.left+i+this.anchorMargin_.right:n.left+this.anchorMargin_.left),p=s-(_?n.right-this.anchorMargin_.right:n.right+i-this.anchorMargin_.left);return(m<0&&_&&d||h&&!_&&m<0||p>0&&m<p)&&(e|=4),e}},{key:"getHorizontalOriginOffset_",value:function(e){var t=this.measures_.anchorWidth,n=Boolean(4&e),r=Boolean(4&this.anchorCorner_);return n?r?t-this.anchorMargin_.left:this.anchorMargin_.right:r?t-this.anchorMargin_.right:this.anchorMargin_.left}},{key:"getVerticalOriginOffset_",value:function(e){var n=this.measures_,r=n.viewport,i=n.viewportDistance,o=n.anchorHeight,s=n.menuHeight,a=Boolean(1&e),u=t.numbers.MARGIN_TO_EDGE,c=Boolean(1&this.anchorCorner_),l=!c,d=0;return a?(d=c?o-this.anchorMargin_.top:-this.anchorMargin_.bottom,l&&s>i.top+o&&(d=-(Math.min(s,r.height-u)-(i.top+o)))):(d=c?o+this.anchorMargin_.bottom:this.anchorMargin_.top,l&&s>i.bottom+o&&(d=-(Math.min(s,r.height-u)-(i.bottom+o)))),d}},{key:"getMenuMaxHeight_",value:function(e){var t=0,n=this.measures_.viewportDistance,r=Boolean(1&e);return 1&this.anchorCorner_&&(t=r?n.top+this.anchorMargin_.top:n.bottom-this.anchorMargin_.bottom),t}},{key:"autoPosition_",value:function(){var e;if(this.adapter_.hasAnchor()){this.measures_=this.getAutoLayoutMeasurements_();var t=this.getOriginCorner_(),n=this.getMenuMaxHeight_(t),r=1&t?"bottom":"top",i=4&t?"right":"left",o=this.getHorizontalOriginOffset_(t),s=this.getVerticalOriginOffset_(t),a=(d(e={},i,o?o+"px":"0"),d(e,r,s?s+"px":"0"),e),c=this.measures_,l=c.anchorWidth,f=c.menuHeight;if(l/c.menuWidth>u.ANCHOR_TO_MENU_WIDTH_RATIO&&(i="center"),!(1&this.anchorCorner_)&&Math.abs(s/f)>u.OFFSET_TO_MENU_HEIGHT_RATIO){var h=100*Math.abs(s/f),_=1&t?100-h:h;r=Math.round(100*_)/100+"%"}this.adapter_.setTransformOrigin("".concat(i," ").concat(r)),this.adapter_.setPosition(a),this.adapter_.setMaxHeight(n?n+"px":""),this.measures_=null}}},{key:"open",value:function(){var e=this,n=(arguments.length>0&&void 0!==arguments[0]?arguments[0]:{}).focusIndex,r=void 0===n?null:n;this.adapter_.saveFocus(),this.quickOpen_||this.adapter_.addClass(t.cssClasses.ANIMATING_OPEN),this.animationRequestId_=requestAnimationFrame(function(){e.dimensions_=e.adapter_.getInnerDimensions(),e.autoPosition_(),e.adapter_.addClass(t.cssClasses.OPEN),e.focusOnOpen_(r),e.adapter_.registerBodyClickHandler(e.documentClickHandler_),e.quickOpen_||(e.openAnimationEndTimerId_=setTimeout(function(){e.openAnimationEndTimerId_=0,e.adapter_.removeClass(t.cssClasses.ANIMATING_OPEN)},u.TRANSITION_OPEN_DURATION))}),this.isOpen_=!0}},{key:"close",value:function(){var e=this,n=arguments.length>0&&void 0!==arguments[0]?arguments[0]:null;n&&"true"===this.adapter_.getAttributeForEventTarget(n.target,a.ARIA_DISABLED_ATTR)||(this.adapter_.deregisterBodyClickHandler(this.documentClickHandler_),this.quickOpen_||this.adapter_.addClass(t.cssClasses.ANIMATING_CLOSED),requestAnimationFrame(function(){e.adapter_.removeClass(t.cssClasses.OPEN),e.quickOpen_||(e.closeAnimationEndTimerId_=setTimeout(function(){e.closeAnimationEndTimerId_=0,e.adapter_.removeClass(t.cssClasses.ANIMATING_CLOSED)},u.TRANSITION_CLOSE_DURATION))}),this.isOpen_=!1,this.adapter_.restoreFocus())}},{key:"isOpen",value:function(){return this.isOpen_}},{key:"getSelectedIndex",value:function(){return this.selectedIndex_}},{key:"setSelectedIndex",value:function(e){if(e!==this.selectedIndex_){var t=this.selectedIndex_;t>=0&&(this.adapter_.rmAttrForOptionAtIndex(t,"aria-selected"),this.adapter_.rmClassForOptionAtIndex(t,s.SELECTED_LIST_ITEM)),this.selectedIndex_=e>=0&&e<this.adapter_.getNumberOfItems()?e:-1,this.selectedIndex_>=0&&(this.adapter_.setAttrForOptionAtIndex(this.selectedIndex_,"aria-selected","true"),this.adapter_.addClassForOptionAtIndex(this.selectedIndex_,s.SELECTED_LIST_ITEM))}}}]),t}();function y(e){return(y="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e})(e)}function v(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}function b(e){return(b=Object.setPrototypeOf?Object.getPrototypeOf:function(e){return e.__proto__||Object.getPrototypeOf(e)})(e)}function O(e,t){return(O=Object.setPrototypeOf||function(e,t){return e.__proto__=t,e})(e,t)}
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
 */var I=function(e){function t(){var e,n;!function(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}(this,t);for(var r=arguments.length,i=new Array(r),o=0;o<r;o++)i[o]=arguments[o];return(n=function(e,t){return!t||"object"!==y(t)&&"function"!=typeof t?function(e){if(void 0===e)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return e}(e):t}(this,(e=b(t)).call.apply(e,[this].concat(i)))).previousFocus_,n}var n,o,s;return function(e,t){if("function"!=typeof t&&null!==t)throw new TypeError("Super expression must either be null or a function");e.prototype=Object.create(t&&t.prototype,{constructor:{value:e,writable:!0,configurable:!0}}),t&&O(e,t)}(t,i.a),n=t,s=[{key:"attachTo",value:function(e){return new t(e)}}],(o=[{key:"show",value:function(){var e=(arguments.length>0&&void 0!==arguments[0]?arguments[0]:{}).focusIndex,t=void 0===e?null:e;this.foundation_.open({focusIndex:t})}},{key:"hide",value:function(){this.foundation_.close()}},{key:"setAnchorCorner",value:function(e){this.foundation_.setAnchorCorner(e)}},{key:"setAnchorMargin",value:function(e){this.foundation_.setAnchorMargin(e)}},{key:"getOptionByIndex",value:function(e){return e<this.items.length?this.items[e]:null}},{key:"getDefaultFoundation",value:function(){var e=this;return new g({addClass:function(t){return e.root_.classList.add(t)},removeClass:function(t){return e.root_.classList.remove(t)},hasClass:function(t){return e.root_.classList.contains(t)},hasNecessaryDom:function(){return Boolean(e.itemsContainer_)},getAttributeForEventTarget:function(e,t){return e.getAttribute(t)},getInnerDimensions:function(){var t=e.itemsContainer_;return{width:t.offsetWidth,height:t.offsetHeight}},hasAnchor:function(){return e.root_.parentElement&&e.root_.parentElement.classList.contains("mdc-menu-anchor")},getAnchorDimensions:function(){return e.root_.parentElement.getBoundingClientRect()},getWindowDimensions:function(){return{width:window.innerWidth,height:window.innerHeight}},getNumberOfItems:function(){return e.items.length},registerInteractionHandler:function(t,n){return e.root_.addEventListener(t,n)},deregisterInteractionHandler:function(t,n){return e.root_.removeEventListener(t,n)},registerBodyClickHandler:function(e){return document.body.addEventListener("click",e)},deregisterBodyClickHandler:function(e){return document.body.removeEventListener("click",e)},getIndexForEventTarget:function(t){return e.items.indexOf(t)},notifySelected:function(t){return e.emit(g.strings.SELECTED_EVENT,{index:t.index,item:e.items[t.index]})},notifyCancel:function(){return e.emit(g.strings.CANCEL_EVENT,{})},saveFocus:function(){e.previousFocus_=document.activeElement},restoreFocus:function(){e.previousFocus_&&e.previousFocus_.focus&&e.previousFocus_.focus()},isFocused:function(){return document.activeElement===e.root_},focus:function(){return e.root_.focus()},getFocusedItemIndex:function(){return e.items.indexOf(document.activeElement)},focusItemAtIndex:function(t){return e.items[t].focus()},isRtl:function(){return"rtl"===getComputedStyle(e.root_).getPropertyValue("direction")},setTransformOrigin:function(t){e.root_.style["".concat(function(e){var t=arguments.length>1&&void 0!==arguments[1]&&arguments[1];if(void 0===r||t){var n="transform"in e.document.createElement("div").style?"transform":"webkitTransform";r=n}return r}(window),"-origin")]=t},setPosition:function(t){e.root_.style.left="left"in t?t.left:null,e.root_.style.right="right"in t?t.right:null,e.root_.style.top="top"in t?t.top:null,e.root_.style.bottom="bottom"in t?t.bottom:null},setMaxHeight:function(t){e.root_.style.maxHeight=t},setAttrForOptionAtIndex:function(t,n,r){return e.items[t].setAttribute(n,r)},rmAttrForOptionAtIndex:function(t,n){return e.items[t].removeAttribute(n)},addClassForOptionAtIndex:function(t,n){return e.items[t].classList.add(n)},rmClassForOptionAtIndex:function(t,n){return e.items[t].classList.remove(n)}})}},{key:"open",get:function(){return this.foundation_.isOpen()},set:function(e){e?this.foundation_.open():this.foundation_.close()}},{key:"itemsContainer_",get:function(){return this.root_.querySelector(g.strings.ITEMS_SELECTOR)}},{key:"items",get:function(){var e=this.itemsContainer_;return[].slice.call(e.querySelectorAll(".mdc-list-item[role]"))}},{key:"selectedItemIndex",set:function(e){this.foundation_.setSelectedIndex(e)},get:function(){return this.foundation_.getSelectedIndex()}},{key:"rememberSelection",set:function(e){this.foundation_.setRememberSelection(e)}},{key:"quickOpen",set:function(e){this.foundation_.setQuickOpen(e)}}])&&v(n.prototype,o),s&&v(n,s),t}(),T=n(0),E={mixins:[T.a,T.b],model:{prop:"open",event:"change"},props:{open:{type:Boolean,default:!1},quickOpen:{type:Boolean,default:!1}},data:function(){return{mdcMenu:void 0,slotObserver:void 0}},computed:{model:{get:function(){return this.open},set:function(e){this.$emit("change",e)}}},watch:{open:function(){this.mdcMenu.open=this.open},quickOpen:function(){this.mdcMenu.quickOpen=this.quickOpen}},mounted:function(){var e=this;this.updateSlot(),this.slotObserver=new MutationObserver(function(){return e.updateSlot()}),this.slotObserver.observe(this.$el,{childList:!0,subtree:!0}),this.mdcMenu=I.attachTo(this.$el)},beforeDestroy:function(){this.slotObserver.disconnect(),this.mdcMenu.destroy()},methods:{updateSlot:function(){this.$slots.default&&this.$slots.default.map(function(e){e.elm.classList.add("mdc-menu__items"),e.elm.setAttribute("role","menu"),e.elm.setAttribute("aria-hidden","true"),e.componentOptions.children.filter(function(e){return e.elm.className.indexOf("mdc-list-item")>-1}).map(function(e){e.elm.setAttribute("tabindex","0"),e.elm.setAttribute("role","menuitem")})})},onSelect:function(e){this.model=!1,this.$emit("select",e.detail)},onCancel:function(){this.model=!1,this.$emit("cancel")}}},A=n(3),k=Object(A.a)(E,function(){var e=this.$createElement;return(this._self._c||e)("div",{staticClass:"mdc-menu",attrs:{tabindex:"-1"},on:{"MDCMenu:selected":this.onSelect,"MDCMenu:cancel":this.onCancel}},[this._t("default")],2)},[],!1,null,null,null).exports,C=Object(A.a)({},function(){var e=this.$createElement;return(this._self._c||e)("div",{staticClass:"mdc-menu-anchor"},[this._t("default")],2)},[],!1,null,null,null).exports,x=(n(75),n(5)),w={install:function(e){e.component("m-menu",k),e.component("m-menu-anchor",C)}};t.default=w,Object(x.b)(w)},4:function(e,t,n){"use strict";var r=n(2);function i(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}function o(e,t,n){return t&&i(e.prototype,t),n&&i(e,n),e}
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
 */var s=function(){function e(t){var n=arguments.length>1&&void 0!==arguments[1]?arguments[1]:void 0;!function(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}(this,e),this.root_=t;for(var r=arguments.length,i=new Array(r>2?r-2:0),o=2;o<r;o++)i[o-2]=arguments[o];this.initialize.apply(this,i),this.foundation_=void 0===n?this.getDefaultFoundation():n,this.foundation_.init(),this.initialSyncWithDOM()}return o(e,null,[{key:"attachTo",value:function(t){return new e(t,new r.a)}}]),o(e,[{key:"initialize",value:function(){}},{key:"getDefaultFoundation",value:function(){throw new Error("Subclasses must override getDefaultFoundation to return a properly configured foundation class")}},{key:"initialSyncWithDOM",value:function(){}},{key:"destroy",value:function(){this.foundation_.destroy()}},{key:"listen",value:function(e,t){this.root_.addEventListener(e,t)}},{key:"unlisten",value:function(e,t){this.root_.removeEventListener(e,t)}},{key:"emit",value:function(e,t){var n,r=arguments.length>2&&void 0!==arguments[2]&&arguments[2];"function"==typeof CustomEvent?n=new CustomEvent(e,{detail:t,bubbles:r}):(n=document.createEvent("CustomEvent")).initCustomEvent(e,r,!1,t),this.root_.dispatchEvent(n)}}]),e}();t.a=s},5:function(e,t,n){"use strict";function r(e,t){return t=t||100,function(){if(!e.debouncing){var n=Array.prototype.slice.apply(arguments);e.lastReturnVal=e.apply(window,n),e.debouncing=!0}return clearTimeout(e.debounceTimeout),e.debounceTimeout=setTimeout(function(){e.debouncing=!1},t),e.lastReturnVal}}function i(e){"undefined"!=typeof window&&window.Vue&&window.Vue.use(e)}n.d(t,"a",function(){return r}),n.d(t,"b",function(){return i})},75:function(e,t,n){}})});""");
  loadStyle(r""".mdc-menu{box-shadow:0 3px 1px -2px rgba(0,0,0,.2),0 2px 2px 0 rgba(0,0,0,.14),0 1px 5px 0 rgba(0,0,0,.12);background-color:#fff;background-color:var(--mdc-theme-background,#fff);display:none;position:absolute;box-sizing:border-box;min-width:170px;max-width:calc(100vw - 32px);max-height:calc(100vh - 32px);margin:0;padding:0;transform:scale(1);transform-origin:top left;border-radius:2px;opacity:0;white-space:nowrap;overflow-x:hidden;overflow-y:auto;will-change:transform,opacity;z-index:1}.mdc-menu:focus{outline:none}.mdc-menu--animating-open{display:inline-block;transform:scale(.8);transition:opacity .03s linear,transform .12s cubic-bezier(0,0,.2,1);opacity:0;overflow-y:hidden}.mdc-menu--open{display:inline-block;transform:scale(1);opacity:1}.mdc-menu--animating-closed{display:inline-block;transition:opacity 75ms linear;opacity:0;overflow-y:hidden}.mdc-menu__items{box-sizing:border-box;transform:scale(1);overflow-x:hidden;overflow-y:auto;will-change:transform}.mdc-menu__items>.mdc-list-item{cursor:pointer}.mdc-menu--animating .mdc-menu__items{overflow-y:hidden}.mdc-menu--animating-open>.mdc-menu__items{transform:scale(1.25)}.mdc-menu--open>.mdc-menu__items{transform:scale(1)}[dir=rtl] .mdc-menu{transform-origin:top right}.mdc-menu .mdc-list,.mdc-menu .mdc-list-group{padding:8px 0}.mdc-menu .mdc-list-item{font-family:Roboto,sans-serif;-moz-osx-font-smoothing:grayscale;-webkit-font-smoothing:antialiased;font-size:1rem;line-height:1.75rem;font-weight:400;letter-spacing:.00937em;text-decoration:inherit;text-transform:inherit;position:relative;outline:none;color:inherit;text-decoration:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.mdc-menu .mdc-list-item__graphic{color:rgba(0,0,0,.54);color:var(--mdc-theme-text-secondary-on-background,rgba(0,0,0,.54))}.mdc-menu .mdc-list-item[aria-disabled=true]{color:rgba(0,0,0,.38);color:var(--mdc-theme-text-disabled-on-background,rgba(0,0,0,.38));cursor:default;pointer-events:none}.mdc-menu .mdc-list-item[aria-disabled=true]:focus:before{opacity:0}.mdc-menu-anchor{position:relative;overflow:visible}""");
  _initialized = true;
}

class SelectedDetail {
  Element item;
  num index;

  SelectedDetail({this.item, this.index});
}
      
@VueComponent(template: r'''
<m-menu
  v-on="$listeners"
  :theming="theming"
  ref="inner"
  v-model="_openModel"
  :quickOpen="quickOpen"
  @select="_selectEmit(arguments[0])"
  @cancel="_cancelEmit(null)"
>
  <slot v-if="$slots.default"></slot>
</m-menu>''')
class MMenu extends VueComponentBase with BaseMixin {
  static final select = VueEventSpec<SelectedDetail>('select');
  VueEventSink<SelectedDetail> selectSink;
  VueEventStream<SelectedDetail> selectStream;
  static final cancel = VueEventSpec<void>('cancel');
  VueEventSink<void> cancelSink;
  VueEventStream<void> cancelStream;
  static final change = VueEventSpec<bool>('change');
  VueEventSink<bool> changeSink;
  VueEventStream<bool> changeStream;
  MMenu() { _initialize(); }
  @override
  void lifecycleCreated() {
    selectSink = MMenu.select.createSink(this);
    selectStream = MMenu.select.createStream(this);
    cancelSink = MMenu.cancel.createSink(this);
    cancelStream = MMenu.cancel.createStream(this);
    changeSink = MMenu.change.createSink(this);
    changeStream = MMenu.change.createStream(this);
  }
  @ref
  dynamic inner;
  @model(event: 'change')
  @prop
  bool open = false;
  @prop
  bool quickOpen = false;
  @computed
  get _openModel => open;
  @computed
  set _openModel(value) => changeSink.add(value);
  @method
  _selectEmit(arg) => selectSink.add(arg);
  @method
  _cancelEmit() => cancelSink.add(null);
}

@VueComponent(template: r'''
<m-menu-anchor
  v-on="$listeners"
  :theming="theming"
  ref="inner"
>
  <slot v-if="$slots.default"></slot>
</m-menu-anchor>''')
class MMenuAnchor extends VueComponentBase with BaseMixin {
  MMenuAnchor() { _initialize(); }
  @override
  void lifecycleCreated() {
  }
  @ref
  dynamic inner;
}
