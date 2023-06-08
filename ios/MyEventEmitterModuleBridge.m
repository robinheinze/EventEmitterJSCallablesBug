// MyEventEmitterModuleBridge.m
#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCT_EXTERN_MODULE(MyEventEmitterModule, RCTEventEmitter)
RCT_EXTERN_METHOD(emitEvent)
@end
