# React Native EventEmitter \_callableJSModules issue minimal repro

This is a minimal reproduction for https://github.com/facebook/react-native/issues/34105

This app contains a bare react-native init app, modified with a custom iOS event emitter. There are modifications made to RCTEventEmitter via patch-package
in order to demonstrate the issue as explained by @thomasttvo in the issue above.

## Running this app

1. Run yarn / npm to install packages and run patch-package
2. Open the workspace in XCode
3. Run the app from XCode and open the logging console.
4. Note the `callableJSModules` logs are all 1
5. Reload the app via the dev menu
6. Note that now the `callableJSModule` logs are alternating between 0 and 1.
