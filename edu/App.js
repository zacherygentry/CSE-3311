import React from 'react';
import { StyleSheet, Text, View, Dimensions } from 'react-native';
import { Svg } from 'expo';
const { Circle, Rect } = Svg;
import RNDraw from 'rn-draw';

// Percentages work in plain react-native but aren't supported in Expo yet, workaround with this or onLayout
const { width, height } = Dimensions.get('window');

export default class SvgExample extends React.Component {
  render() {
    return (
      <RNDraw
        containerStyle={{ backgroundColor: 'rgba(0,0,0,0.01)' }}
        rewind={(undo) => { this._undo = undo }}
        clear={(clear) => { this._clear = clear }}
        color='#000000'
        strokeWidth={4}
      />
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#ffffff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});

