import 'package:vue/vue.dart';
import '../component.dart';

bool _initialized = false;
void _initialize() {
  if (_initialized) return;
  eval(r"""!function(e,t){if("object"==typeof exports&&"object"==typeof module)module.exports=t();else if("function"==typeof define&&define.amd)define([],t);else{var n=t();for(var o in n)("object"==typeof exports?exports:e)[o]=n[o]}}(window,function(){return function(e){var t={};function n(o){if(t[o])return t[o].exports;var r=t[o]={i:o,l:!1,exports:{}};return e[o].call(r.exports,r,r.exports,n),r.l=!0,r.exports}return n.m=e,n.c=t,n.d=function(e,t,o){n.o(e,t)||Object.defineProperty(e,t,{enumerable:!0,get:o})},n.r=function(e){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})},n.t=function(e,t){if(1&t&&(e=n(e)),8&t)return e;if(4&t&&"object"==typeof e&&e&&e.__esModule)return e;var o=Object.create(null);if(n.r(o),Object.defineProperty(o,"default",{enumerable:!0,value:e}),2&t&&"string"!=typeof e)for(var r in e)n.d(o,r,function(t){return e[t]}.bind(null,r));return o},n.n=function(e){var t=e&&e.__esModule?function(){return e.default}:function(){return e};return n.d(t,"a",t),t},n.o=function(e,t){return Object.prototype.hasOwnProperty.call(e,t)},n.p="",n(n.s=19)}({0:function(e,t,n){"use strict";var o={inheritAttrs:!1},r=["primary","secondary","background","surface","on-primary","on-secondary","on-surface","primary-bg","secondary-bg","text-primary-on-light","text-secondary-on-light","text-hint-on-light","text-disabled-on-light","text-icon-on-light","text-primary-on-dark","text-secondary-on-dark","text-hint-on-dark","text-disabled-on-dark","text-icon-on-dark"],i={props:{theming:{type:String,default:""}},mounted:function(){r.indexOf(this.theming)>-1&&this.$el.classList.add("mdc-theme--"+this.theming)}};n.d(t,"a",function(){return o}),n.d(t,"b",function(){return i})},19:function(e,t,n){"use strict";n.r(t);var o=n(0),r={mixins:[o.a,o.b],model:{prop:"checked",event:"change"},props:{checked:{type:Boolean,required:!1},disabled:{type:Boolean,required:!1}},computed:{classes:function(){return{"mdc-switch--disabled":this.disabled}},model:{get:function(){return this.checked},set:function(e){this.$emit("change",e)}}}},i=n(3),c=Object(i.a)(r,function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"mdc-switch",class:e.classes},[n("input",{directives:[{name:"model",rawName:"v-model",value:e.model,expression:"model"}],staticClass:"mdc-switch__native-control",attrs:{disabled:e.disabled,type:"checkbox"},domProps:{checked:Array.isArray(e.model)?e._i(e.model,null)>-1:e.model},on:{change:function(t){var n=e.model,o=t.target,r=!!o.checked;if(Array.isArray(n)){var i=e._i(n,null);o.checked?i<0&&(e.model=n.concat([null])):i>-1&&(e.model=n.slice(0,i).concat(n.slice(i+1)))}else e.model=r}}}),e._v(" "),e._m(0)])},[function(){var e=this.$createElement,t=this._self._c||e;return t("div",{staticClass:"mdc-switch__background"},[t("div",{staticClass:"mdc-switch__knob"})])}],!1,null,null,null).exports,s=(n(59),n(5)),a={install:function(e){e.component("m-switch",c)}};t.default=a,Object(s.b)(a)},3:function(e,t,n){"use strict";function o(e,t,n,o,r,i,c,s){var a,d="function"==typeof e?e.options:e;if(t&&(d.render=t,d.staticRenderFns=n,d._compiled=!0),o&&(d.functional=!0),i&&(d._scopeId="data-v-"+i),c?(a=function(e){(e=e||this.$vnode&&this.$vnode.ssrContext||this.parent&&this.parent.$vnode&&this.parent.$vnode.ssrContext)||"undefined"==typeof __VUE_SSR_CONTEXT__||(e=__VUE_SSR_CONTEXT__),r&&r.call(this,e),e&&e._registeredComponents&&e._registeredComponents.add(c)},d._ssrRegister=a):r&&(a=s?function(){r.call(this,this.$root.$options.shadowRoot)}:r),a)if(d.functional){d._injectStyles=a;var u=d.render;d.render=function(e,t){return a.call(t),u(e,t)}}else{var l=d.beforeCreate;d.beforeCreate=l?[].concat(l,a):[a]}return{exports:e,options:d}}n.d(t,"a",function(){return o})},5:function(e,t,n){"use strict";function o(e,t){return t=t||100,function(){if(!e.debouncing){var n=Array.prototype.slice.apply(arguments);e.lastReturnVal=e.apply(window,n),e.debouncing=!0}return clearTimeout(e.debounceTimeout),e.debounceTimeout=setTimeout(function(){e.debouncing=!1},t),e.lastReturnVal}}function r(e){"undefined"!=typeof window&&window.Vue&&window.Vue.use(e)}n.d(t,"a",function(){return o}),n.d(t,"b",function(){return r})},59:function(e,t,n){}})});""");
  loadStyle(r""".mdc-switch{display:inline-block;position:relative}.mdc-switch__native-control{position:absolute;top:-14px;left:-14px;width:48px;height:48px;display:inline-block;margin-top:-3px;margin-left:0;transition:transform 90ms cubic-bezier(.4,0,.2,1);opacity:0;cursor:pointer;z-index:2}.mdc-switch__native-control:checked{transform:translateX(14px)}.mdc-switch__native-control:checked[dir=rtl],[dir=rtl] .mdc-switch__native-control:checked{transform:translateX(-14px)}.mdc-switch__native-control:enabled:not(:checked)~.mdc-switch__background:before{background-color:#000;border-color:#000}.mdc-switch__native-control:enabled:not(:checked)~.mdc-switch__background .mdc-switch__knob{background-color:#fafafa;border-color:#fafafa}.mdc-switch__native-control:enabled:not(:checked)~.mdc-switch__background .mdc-switch__knob:before{background-color:#9e9e9e}.mdc-switch__native-control:enabled:checked~.mdc-switch__background .mdc-switch__knob,.mdc-switch__native-control:enabled:checked~.mdc-switch__background:before{background-color:#018786;background-color:var(--mdc-theme-secondary,#018786);border-color:#018786;border-color:var(--mdc-theme-secondary,#018786)}.mdc-switch__native-control:enabled:checked~.mdc-switch__background .mdc-switch__knob:before{background-color:#018786;background-color:var(--mdc-theme-secondary,#018786)}.mdc-switch__background{display:block;position:relative;width:34px;height:14px;border-radius:50%;outline:none;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.mdc-switch__background:before{display:block;position:absolute;top:0;right:0;bottom:0;left:0;transition:opacity 90ms cubic-bezier(.4,0,.2,1),background-color 90ms cubic-bezier(.4,0,.2,1),border-color 90ms cubic-bezier(.4,0,.2,1);border:1px solid;border-radius:7px;opacity:.38;content:""}.mdc-switch__knob{box-shadow:0 3px 1px -2px rgba(0,0,0,.2),0 2px 2px 0 rgba(0,0,0,.14),0 1px 5px 0 rgba(0,0,0,.12);left:0;right:auto;display:block;position:absolute;top:-3px;box-sizing:border-box;width:20px;height:20px;transform:translateX(0);transition:transform 90ms cubic-bezier(.4,0,.2,1),background-color 90ms cubic-bezier(.4,0,.2,1),border-color 90ms cubic-bezier(.4,0,.2,1);border:10px solid;border-radius:50%;z-index:1}.mdc-switch__knob[dir=rtl],[dir=rtl] .mdc-switch__knob{left:auto;right:0}.mdc-switch__knob:before{position:absolute;top:-24px;left:-24px;width:48px;height:48px;transform:scale(0);transition:transform 90ms cubic-bezier(.4,0,.2,1),background-color 90ms cubic-bezier(.4,0,.2,1);border-radius:50%;opacity:.2;content:""}.mdc-switch__native-control:focus~.mdc-switch__background .mdc-switch__knob:before{transform:scale(1)}.mdc-switch__native-control:checked~.mdc-switch__background:before{opacity:.5}.mdc-switch__native-control:checked~.mdc-switch__background .mdc-switch__knob{transform:translateX(14px)}.mdc-switch__native-control:checked~.mdc-switch__background .mdc-switch__knob[dir=rtl],[dir=rtl] .mdc-switch__native-control:checked~.mdc-switch__background .mdc-switch__knob{transform:translateX(-14px)}.mdc-switch__native-control:checked~.mdc-switch__background .mdc-switch__knob:before{opacity:.15}.mdc-switch__native-control:disabled{cursor:auto}.mdc-switch__native-control:disabled~.mdc-switch__background:before{background-color:#000;opacity:.12}.mdc-switch__native-control:disabled~.mdc-switch__background .mdc-switch__knob{border-width:1px;border-color:#bdbdbd;background-color:#bdbdbd}""");
  _initialized = true;
}

@VueComponent(template: r'''
<m-switch
  v-on="$listeners"
  :theming="theming"
  ref="inner"
  v-model="_checkedModel"
  :disabled="disabled"
>
</m-switch>''')
class MSwitch extends VueComponentBase with BaseMixin {
  static final change = VueEventSpec<bool>('change');
  VueEventSink<bool> changeSink;
  VueEventStream<bool> changeStream;
  MSwitch() { _initialize(); }
  @override
  void lifecycleCreated() {
    changeSink = MSwitch.change.createSink(this);
    changeStream = MSwitch.change.createStream(this);
  }
  @ref
  dynamic inner;
  @model(event: 'change')
  @prop
  bool checked = false;
  @prop
  bool disabled = false;
  @computed
  get _checkedModel => checked;
  @computed
  set _checkedModel(value) => changeSink.add(value);
}
