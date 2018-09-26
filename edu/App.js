/////////////
// IMPORTS //
/////////////
import React, { Component } from 'react';
import {
  StyleSheet,
  Text,
  View,
  Image
} from 'react-native';
import RNSketchCanvas from '@terrylinla/react-native-sketch-canvas';


// Start of our application
export default class App extends React.Component {
  // Constructor. We set the intitial state here.
  constructor(props) {
    super(props);
    this.state = {
      path: null
    };
  }

  render() {
    // This is what will be rendered to the screen 
    return (
      <View style={styles.container}>

        {/* View wrapper for our canvas. Takes up as much room as possible.*/}
        <View style={{ flex: 1, flexDirection: 'row' }}>
          {/* Drawing canvas, the undo, clear, and save functionalities are nested in here as components.
           /* onSketchSaved prop returns the path of saved image. */}
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
            onSketchSaved={(result, path) => this.setState({ path: path })}>
          </RNSketchCanvas>
        </View>
        <Image
          style={{ width: 100, height: 200 }}
          source={{ uri: "file://" + this.state.path }}
        />
      </View>
    );
  }
}


/////////////////////
/// S T Y L I N G ///
/////////////////////
const styles = StyleSheet.create({
  container: {
    flex: 1, justifyContent: 'center', alignItems: 'center', backgroundColor: '#F5FCFF',
  },
  functionButton: {
    marginHorizontal: 2.5, marginVertical: 8, height: 30, width: 60,
    backgroundColor: '#39579A', justifyContent: 'center', alignItems: 'center', borderRadius: 5,
  }
});