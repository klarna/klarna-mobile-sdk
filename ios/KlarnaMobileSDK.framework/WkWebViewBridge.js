(function () {
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
