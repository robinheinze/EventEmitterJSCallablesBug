import React, {useEffect, useRef} from 'react';
import {NativeModules, Button, NativeEventEmitter, View} from 'react-native';

const {MyEventEmitterModule} = NativeModules;

export default function App() {
  const eventEmitter = useRef(new NativeEventEmitter(MyEventEmitterModule));
  const listener = useRef(null);

  useEffect(() => {
    listener.current = eventEmitter.current.addListener('Event', event => {
      console.log(event); // logs {key: "value"}
    });

    return () => {
      if (listener.current) {
        listener.current.remove(); // Remember to cleanup
      }
    };
  }, []);

  const onPress = () => {
    MyEventEmitterModule.emitEvent();
  };

  return (
    <View style={{flex: 1, justifyContent: 'center'}}>
      <Button onPress={onPress} title="Press me to emit event" />
    </View>
  );
}
