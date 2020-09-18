 (function () {
     if (document.readyState === "complete") {
         var foundMessageBridge = false
         function notifyMessageBridge() {
             if (window.__KlarnaNativeHook != null) {
                 console.log("Klarna Native Hook was notified")
                 window.__KlarnaNativeHook.setNativeReady()
                 foundMessageBridge = true
             } else {
                 window.setTimeout(notifyMessageBridge, 500)
             }
         }
         notifyMessageBridge()
     }
     window.addEventListener('load', () => {
         let interval = null
         let notifyMessageBridge = () => {
             if (window.__KlarnaNativeHook != null) {
                 window.__KlarnaNativeHook.setNativeReady()
                 clearInterval(interval)
             }
         }
         interval = setInterval(notifyMessageBridge, 500)
     })
 }())