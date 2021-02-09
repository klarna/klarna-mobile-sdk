"use strict";

(function () {
  if (document.readyState === "complete") {
    var notifyMessageBridge = function notifyMessageBridge() {
      if (window.__KlarnaNativeHook != null) {
        console.log("Klarna Native Hook was notified");

        window.__KlarnaNativeHook.setNativeReady();

        foundMessageBridge = true;
      } else {
        window.setTimeout(notifyMessageBridge, 500);
      }
    };

    var foundMessageBridge = false;
    notifyMessageBridge();
  }

  window.addEventListener('load', function () {
    var interval = null;

    var notifyMessageBridge = function notifyMessageBridge() {
      if (window.__KlarnaNativeHook != null) {
        window.__KlarnaNativeHook.setNativeReady();

        clearInterval(interval);
      }
    };

    interval = setInterval(notifyMessageBridge, 500);
  });
})();