(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/index/index"],{"06c3":function(n,t,i){"use strict";var e,a=function(){var n=this,t=n.$createElement,i=(n._self._c,n.__map(n.shangpinxinxilist,(function(t,i){var e=t.tupian.split(",");return{$orig:n.__get_orig(t),g0:e}}))),e=n.__map(n.shangpinxinxilist,(function(t,i){var e=t.tupian.split(",");return{$orig:n.__get_orig(t),g1:e}})),a=n.__map(n.hometongzhigonggaolist,(function(t,i){var e=t.tupian.split(",");return{$orig:n.__get_orig(t),g2:e}})),r=n.__map(n.hometongzhigonggaolist,(function(t,i){var e=t.tupian.split(",");return{$orig:n.__get_orig(t),g3:e}}));n.$mp.data=Object.assign({},{$root:{l0:i,l1:e,l2:a,l3:r}})},r=[];i.d(t,"b",(function(){return a})),i.d(t,"c",(function(){return r})),i.d(t,"a",(function(){return e}))},"1bb9":function(n,t,i){"use strict";(function(n){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var e=a(i("a34a"));function a(n){return n&&n.__esModule?n:{default:n}}function r(n,t,i,e,a,r,o){try{var u=n[r](o),c=u.value}catch(s){return void i(s)}u.done?t(c):Promise.resolve(c).then(e,a)}function o(n){return function(){var t=this,i=arguments;return new Promise((function(e,a){var o=n.apply(t,i);function u(n){r(o,e,a,u,c,"next",n)}function c(n){r(o,e,a,u,c,"throw",n)}u(void 0)}))}}i("67cb");var u=function(){Promise.all([i.e("common/vendor"),i.e("components/uni-ui/lib/uni-icons/uni-icons")]).then(function(){return resolve(i("27d0"))}.bind(null,i)).catch(i.oe)},c={components:{uniIcons:u},data:function(){return{autoplaySwiper:!0,intervalSwiper:5e3,swiperList:[],shangpinxinxilist:[],hometongzhigonggaolist:[],news:[]}},onShow:function(){var n=o(e.default.mark((function n(){var t,i,a,r,o,u,c,s;return e.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:return t=[],n.next=3,this.$api.page("config",{page:1,limit:5});case 3:for(i=n.sent,a=!0,r=!1,o=void 0,n.prev=7,u=i.data.list[Symbol.iterator]();!(a=(c=u.next()).done);a=!0)s=c.value,s.name.indexOf("picture")>=0&&s.value&&""!=s.value&&null!=s.value&&t.push({img:s.value});n.next=15;break;case 11:n.prev=11,n.t0=n["catch"](7),r=!0,o=n.t0;case 15:n.prev=15,n.prev=16,a||null==u.return||u.return();case 18:if(n.prev=18,!r){n.next=21;break}throw o;case 21:return n.finish(18);case 22:return n.finish(15);case 23:return t&&(this.swiperList=t),n.next=26,this.$api.recommend("shangpinxinxi",1,6);case 26:return i=n.sent,this.shangpinxinxilist=i.data.list,n.next=30,this.$api.list("tongzhigonggao",{page:1,limit:6});case 30:i=n.sent,this.hometongzhigonggaolist=i.data.list;case 32:case"end":return n.stop()}}),n,this,[[7,11,15,23],[16,,18,22]])})));function t(){return n.apply(this,arguments)}return t}(),methods:{onSwiperTap:function(n){},onNewsDetailTap:function(n){this.$utils.jump("../news-detail/news-detail?id=".concat(n))},onDetailTap:function(n,t){this.$utils.jump("../".concat(n,"/detail?id=").concat(t))},onPageTap:function(t){n.navigateTo({url:"../".concat(t,"/list"),fail:function(){n.switchTab({url:"../".concat(t,"/list")})}})}}};t.default=c}).call(this,i("543d")["default"])},"3ea0":function(n,t,i){"use strict";i.r(t);var e=i("1bb9"),a=i.n(e);for(var r in e)"default"!==r&&function(n){i.d(t,n,(function(){return e[n]}))}(r);t["default"]=a.a},"59b5":function(n,t,i){"use strict";i.r(t);var e=i("06c3"),a=i("3ea0");for(var r in a)"default"!==r&&function(n){i.d(t,n,(function(){return a[n]}))}(r);i("d242");var o,u=i("f0c5"),c=Object(u["a"])(a["default"],e["b"],e["c"],!1,null,null,null,!1,e["a"],o);t["default"]=c.exports},"6b37":function(n,t,i){"use strict";(function(n){i("4eba"),i("921b");e(i("66fd"));var t=e(i("59b5"));function e(n){return n&&n.__esModule?n:{default:n}}n(t.default)}).call(this,i("543d")["createPage"])},c78d:function(n,t,i){},d242:function(n,t,i){"use strict";var e=i("c78d"),a=i.n(e);a.a}},[["6b37","common/runtime","common/vendor"]]]);