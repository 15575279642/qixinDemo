(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-7e19b889"],{"0979":function(t,s,e){},a0c8:function(t,s,e){"use strict";var i=e("0979"),a=e.n(i);a.a},a20f:function(t,s,e){"use strict";e.r(s);var i=function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("div",{staticClass:"make-case"},[e("el-container",{attrs:{direction:"vertical"}},[e("div",{staticClass:"top"},[e("h1",[t._v(t._s(t.testList.dTitle)+" ")]),e("p",[t._v(t._s(t.testList.description))])]),e("div",{staticClass:"bottom"},[e("h1",[t._v("功能特点")]),t._l(t.testList.functionList,function(s){return e("p",[t._v(t._s(s))])})],2),e("img",{staticClass:"case01",attrs:{src:t.testList.picUrl,alt:""}})])],1)},a=[],n={name:"make-case",data:function(){return{serviceList:"",testList:""}},methods:{},mounted:function(){console.log(this.$route.params.exampleId);var t=this.$route.params.exampleId;this.$http.post("http://47.106.130.46:8081/example/getExamples/"+t,{},{emulateJSON:!0}).then(function(t){console.log(t),this.testList=t.body.data,console.log(this.testList.dTitle)})}},c=n,o=(e("a0c8"),e("2877")),l=Object(o["a"])(c,i,a,!1,null,null,null);s["default"]=l.exports}}]);
//# sourceMappingURL=chunk-7e19b889.c4a6bdbf.js.map