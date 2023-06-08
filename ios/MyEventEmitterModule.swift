// MyEventEmitterModule.swift
import Foundation

@objc(MyEventEmitterModule)
class MyEventEmitterModule: RCTEventEmitter {

  public static var shared: MyEventEmitterModule?

  override init() {
    super.init()
    MyEventEmitterModule.shared = self
  }

  @objc
  override static func requiresMainQueueSetup() -> Bool {
    return false
  }

  @objc
  override func supportedEvents() -> [String]! {
    return ["Event"]
  }

  @objc
  func emitEvent() {
    self.sendEvent(withName: "Event", body: ["key": "value"])
  }
}
