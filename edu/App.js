import React from 'react';
import { StyleSheet, Text, View, Dimensions, TouchableHighlight } from 'react-native';
import { Svg } from 'expo';
const { Circle, Rect } = Svg;
import RNDraw from 'rn-draw';

// Percentages work in plain react-native but aren't supported in Expo yet, workaround with this or onLayout
const { width, height } = Dimensions.get('window');

export default class SvgExample extends React.Component {
  render() {

    clear = () => {

    }

    return (
      <View style={styles.container}>
        <RNDraw
          containerStyle={{ backgroundColor: 'rgba(0,0,0,0.01)' }}
          rewind={(undo) => { this._undo = undo }}
          clear={(clear) => { this._clear = clear }}
          color='#000000'
          strokeWidth={4}>
        </RNDraw>
        <View style={styles.footer}>
          <TouchableHighlight
            style={styles.button}
            onPress={() => this._undo()}
          >
            <Text style={styles.text}> Undo </Text>
          </TouchableHighlight>

          <TouchableHighlight
            style={styles.button}
            onPress={() => this._clear()}
          >
            <Text style={styles.text}> Clear Screen </Text>
          </TouchableHighlight>

          <TouchableHighlight
            style={styles.button}
            //onPress={() => submit}
          >
            <Text style={styles.text}> Submit </Text>
          </TouchableHighlight>
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    width: '100%',
    height: '100%',
    backgroundColor: 'rgba(0,0,0,0.01)'
  },
  undo: {
    backgroundColor: '#3498db',
    marginLeft: '15%',
    marginBottom: '7%',
    padding: 10,
  },
  clear: {
    backgroundColor: '#3498db',
    marginRight: '15%',
    marginBottom: '7%',
    padding: 10,
  },
  button: {
    backgroundColor: '#3498db',
    padding: 10,
    marginBottom: '10%'
  },
  text: {
    color: '#ffffff',
  },
  footer: {
    display: 'flex',
    flexDirection: 'row',
    justifyContent: 'space-around',
  }
});

