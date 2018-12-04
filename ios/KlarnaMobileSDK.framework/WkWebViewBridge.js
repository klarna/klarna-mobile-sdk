
(function () {
 var foundMessageBridge = false

 function notifyMessageBridge() {
 if (window.__KlarnaNativeHook != null) {
 console.log("Notified message bridge")

 window.__KlarnaNativeHook.setNativeReady()
 foundMessageBridge = true
 } else {
 window.setTimeout(notifyMessageBridge, 500)
 }

 }

 notifyMessageBridge()

 }())
