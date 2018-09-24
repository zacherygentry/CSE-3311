import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View,
  Image
} from 'react-native';
import RNSketchCanvas from '@terrylinla/react-native-sketch-canvas';
// Imports the Google Cloud client library

export default class example extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      result: false,
      path: "f"
    };
  }

  render() {

    const imageSaved = (result, path) => {
      this.setState({ path: path })
    }

    return (
      <View style={styles.container}>
        <View style={{ flex: 1, flexDirection: 'row' }}>
          <RNSketchCanvas
            containerStyle={{ backgroundColor: 'transparent', flex: 1 }}
            canvasStyle={{ backgroundColor: 'transparent', flex: 1 }}
            defaultStrokeIndex={0}
            defaultStrokeWidth={5}
            undoComponent={<View style={styles.functionButton}><Text style={{ color: 'white' }}>Undo</Text></View>}
            clearComponent={<View style={styles.functionButton}><Text style={{ color: 'white' }}>Clear</Text></View>}
            saveComponent={<View style={styles.functionButton}><Text style={{ color: 'white' }}>Save</Text></View>}
            savePreference={() => {
              return {
                folder: 'RNSketchCanvas',
                filename: String(Math.ceil(Math.random() * 100000000)),
                transparent: false,
                imageType: 'png'
              }
            }}
            onSketchSaved={(result, path) => imageSaved(result, path)}>

          </RNSketchCanvas>
        </View>
        <Image style={{ width: 50, height: 50 }}
          source={{ uri: this.state.path }} />

      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1, justifyContent: 'center', alignItems: 'center', backgroundColor: '#F5FCFF',
  },
  functionButton: {
    marginHorizontal: 2.5, marginVertical: 8, height: 30, width: 60,
    backgroundColor: '#39579A', justifyContent: 'center', alignItems: 'center', borderRadius: 5,
  }
});