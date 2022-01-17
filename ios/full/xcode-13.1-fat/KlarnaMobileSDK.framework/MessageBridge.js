"use strict";!function(){var R,e,M="klarna-base-64-utf8::",a={Staging:"evt-eu.staging.eu1.yaco.klarna.net",Production:"not-reallly-evt.klarna.com"},s={Staging:"devicedata-staging.klarna",Production:"devicedata-production.klarna"};(e=R=R||{}).ReceiverAdded="ReceiverAdded",e.ReceiverRemoved="ReceiverRemoved",e.MessagePosted="MessagePosted",e.EndpointsReported="EndpointsReported",e.MessageBridgeWillStart="MessageBridgeWillStart",e.MessageBridgeAlreadyRunning="MessageBridgeAlreadyRunning";function r(){var e;return window.webkit&&window.webkit.messageHandlers&&window.webkit.messageHandlers.KlarnaNativeHookMessageHandler?e=window.webkit.messageHandlers.KlarnaNativeHookMessageHandler:window.KlarnaNativeHookMessageHandler&&(e=window.KlarnaNativeHookMessageHandler),e}var t,n,i=function(e,a){this.registeredNatively=!1,this.name=e,this.callback=a},o=function(e,a,s){this.bridgeVersion=e,this.endpoints={analytics:a,deviceInfo:s}},l=function(e,a){this.staging=e,this.production=a},b=function(e,a,s,r){this.action=e,this.receiverName=a,this.message=s,this.bridgeData=r};(n=t=t||{}).fullscreenReplaceWebView="fullscreenReplaceWebView",n.fullscreenMoveWebView="fullscreenMoveWebView",n.fullscreenReplaceOverlay="fullscreenReplaceOverlay",n.fullscreenRestoreWebView="fullscreenRestoreWebView";var c,p,k=[t.fullscreenReplaceWebView,t.fullscreenMoveWebView,t.fullscreenReplaceOverlay,t.fullscreenRestoreWebView];(p=c=c||{}).fullscreenReplaceWebViewResponse="fullscreenReplaceWebViewResponse",p.fullscreenMoveWebViewResponse="fullscreenMoveWebViewResponse",p.fullscreenReplaceOverlayResponse="fullscreenReplaceOverlayResponse",p.fullscreenRestoreWebViewResponse="fullscreenRestoreWebViewResponse";var S=[{merchantAppName:"boohooMAN",osName:"iOS"},{merchantAppName:"Nasty Gal",osName:"iOS"},{merchantAppName:"MISSPAP",osName:"iOS"},{merchantAppName:"boohoo",osName:"iOS"},{merchantAppName:"PLT UAT",osName:"iOS"}],O=[{osName:"iOS",nativeVersion:"2.0.26"},{osName:"iOS",nativeVersion:"2.0.27"},{osName:"iOS",nativeVersion:"2.0.28"},{osName:"android",nativeVersion:"2.0.26"},{osName:"android",nativeVersion:"2.0.27"},{osName:"android",nativeVersion:"2.0.28"},{osName:"android",nativeVersion:"2.0.29"}];function d(){this.nativeReady=!1,this.receivers=[],this.queuedMessages=[],this.version="v1.1.19-7f5ca7d6a65",this.shouldDelayFullscreenMessagesForThisMerchant=!1,this.delayedMessages=[],this.installUtf8Atob(),this.sendFullscreenMessagesSpacedOut()}var u=new(d.prototype.addReceiver=function(e,a){var s=new i(e,a);this.nativeReady&&(this.postEventMessageToNative(new b(R.ReceiverAdded,s.name,null,null)),s.registeredNatively=!0),this.receivers.push(s)},d.prototype.removeReceiver=function(a,s){this.receivers=this.receivers.filter(function(e){return e.name!==a&&e.callback!==s}),this.nativeReady&&this.postEventMessageToNative(new b(R.ReceiverRemoved,a,null,null))},d.prototype.postMessage=function(e,a){var n=this;if(void 0===a&&(a=!1),"handshakeResponse"===e.action)for(var s=e.params.osName,r=e.params.merchantAppName,t=0,i=S;t<i.length;t++){var o=i[t];if(s===o.osName&&r===o.merchantAppName){this.shouldDelayFullscreenMessagesForThisMerchant=!0;break}}if("handhakeResponse"===e.action&&(e.action="handshakeResponse"),"handshakeResponse"===e.action)try{s=e.params.osName;for(var l=e.params.nativeVersion,c=0,p=O;c<p.length;c++){var d=p[c];if(s===d.osName&&l===d.nativeVersion){var u=e.params.productOptions;if(void 0!==u&&"undefined"!==u&&null!=u){var v=JSON.parse(u);if(null!=v&&null!=v.klarnaInitData)try{var g=JSON.parse(v.klarnaInitData);v.klarnaInitData=g,e.params.productOptions=JSON.stringify(v)}catch(e){var h="Error parsing klarnaInitData parameter inside productOptions: ";try{h+=JSON.stringify(e)}catch(e){}finally{this.logError("rewrite-productOptions",{msg:h})}}}}}}catch(e){h="Error parsing productOptions parameter: ";try{h+=JSON.stringify(e)}catch(e){}finally{this.logError("rewrite-productOptions",{msg:h})}}if("setExperiments"===e.action)try{if(void 0!==e.params.experiments&&"undefined"!==e.params.experiments&&null!=e.params.experiments){var f=e.params.experiments;"string"!=typeof f&&(e.params.experiments=JSON.stringify(f))}}catch(e){this.logError("rewrite-experiments",{msg:"Error stringifying experiments parameter sent from KP: "+JSON.stringify(e)})}if("handshake"===e.action&&"KlarnaPaymentsWrapper"===e.sender&&window.__WrapperMessageController&&window.__WrapperMessageController._extractBase64&&(window.__WrapperMessageController._extractBase64=function(e,a,s){if(null==e.params[s]||"null"===e.params[s])return null;try{var r=e.params[s],t=atob(r);return JSON.parse(t)}catch(e){n.logError("extract-b64",{msg:"Error extracting b64 with custom atob() "+JSON.stringify(e)})}}),"actionToComponent"===e.action)try{if("undefined"!==e.params.sessionData&&null!=e.params.sessionData)if("null"===e.params.sessionData)delete e.params.sessionData;else{var m=e.params.sessionData;e.params.sessionData=M+m.replace(/\n/g,"").replace(/-/g,"+").replace(/_/g,"/")}}catch(e){this.logError("re-format-session-data",{msg:"Error reformatting session data: "+JSON.stringify(e)})}for(var w=0,y=this.receivers;w<y.length;w++){var N=y[w];N.name!==e.receiver&&"*"!==e.receiver||N.callback(e)}a||(this.nativeReady?-1!==k.indexOf(e.action)&&this.shouldDelayFullscreenMessagesForThisMerchant?this.delayedMessages.push(e):this.postEventMessageToNative(new b(R.MessagePosted,null,e,null)):this.queuedMessages.push(e))},d.prototype.setNativeReady=function(){if(this.nativeReady)this.postEventMessageToNative(new b(R.MessageBridgeAlreadyRunning,null,null,null));else{this.nativeReady=!0,this.postEventMessageToNative(new b(R.MessageBridgeWillStart,null,null,null));for(var e=0,a=this.receivers.filter(function(e){return!e.registeredNatively});e<a.length;e++){var s=a[e];this.postEventMessageToNative(new b(R.ReceiverAdded,s.name,null,null)),s.registeredNatively=!0}for(var r=0,t=this.queuedMessages;r<t.length;r++){var n=t[r];this.postEventMessageToNative(new b(R.MessagePosted,null,n,null))}this.queuedMessages=[]}this.reportEndpoints()},d.prototype.inSdkWebView=function(){return null!=r()},d.prototype.sendFullscreenMessagesSpacedOut=function(){var a=this;window.setInterval(function(){var e=a.delayedMessages.shift();null!=e&&a.postEventMessageToNative(new b(R.MessagePosted,null,e,null))},200)},d.prototype.compareVersion=function(e,a){try{for(var s=e.split("-")[0].replace("v","").split(".").map(function(e){var a=parseInt(e,10);return isNaN(a)?0:a});s.length<3;)s.push(0);for(var r=a.split("-")[0].replace("v","").split(".").map(function(e){var a=parseInt(e,10);return isNaN(a)?0:a});r.length<3;)r.push(0);return s[0]>r[0]?1:s[0]<r[0]?-1:s[1]>r[1]?1:s[1]<r[1]?-1:s[2]>r[2]?1:s[2]<r[2]?-1:0}catch(e){return console.error(e),0}},d.prototype.postEventMessageToNative=function(e){var a=r();null!=a&&a.postMessage(JSON.stringify(e))},d.prototype.reportEndpoints=function(){var e=new o(this.version,new l(a.Staging,a.Production),new l(s.Staging,s.Production));this.postEventMessageToNative(new b(R.EndpointsReported,null,null,e))},d.prototype.installUtf8Atob=function(){var s=this;if(null==window.defaultAtob||null==window.sdkAtob){var r=window.atob,e=function(e){return 0===e.indexOf(M)?function(a){try{return decodeURIComponent(atob(a).split("").map(function(e){var a;return null===(a=e.charCodeAt(0).toString(16).match(/.{1,2}/g))||void 0===a?void 0:a.map(function(e){return"%"+("00"+e).slice(-2)}).join("")}).join(""))}catch(e){s.logError("atob-custom",{"src-string":a,msg:e.toString()});try{return r(a)}catch(e){throw s.logError("atob-default",{"src-string":a,msg:e.toString()}),e}}}(e.substr(M.length)):r(e)};window.atob=e,window.defaultAtob=r,window.sdkAtob=e}else console.debug("Already installed custom atob(). Skipping.")},d.prototype.logError=function(e,a){try{console.error("Error: "+e+" - "+a)}catch(e){console.error(e)}},d);if(null==window.__KlarnaNativeHook)window.__KlarnaNativeHook=u;else if(1===u.compareVersion(u.version,window.__KlarnaNativeHook.version)){var v=window.__KlarnaNativeHook.receivers;window.__KlarnaNativeHook=u,v.forEach(function(e){return u.addReceiver(e.name,e.callback)})}}();