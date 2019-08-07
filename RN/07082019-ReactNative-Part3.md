# 07-08-2019 
## FlexBox 
_flex will define how your items are going to “fill” over the available space along your main axis. Space will be divided according to each element's flex property._
### Flex Direction
```
*row* Align children from left to right. If wrapping is enabled then the next line will start under the first item on the left of the container.

*column* (default value) Align children from top to bottom. If wrapping is enabled then the next line will start to the left first item on the top of the container.

*row-reverse* Align children from right to left. If wrapping is enabled then the next line will start under the first item on the right of the container.

*column-reverse* Align children from bottom to top. If wrapping is enabled then the next line will start to the left first item on the bottom of the container.
```
_Example:_
```
import React, { Component } from 'react';
import { View } from 'react-native';

export default class FlexDirectionBasics extends Component {
render() {
return (
// Try setting `flexDirection` to `column`.
<View style={{flex: 1, flexDirection: 'row'}}>
<View style={{width: 50, height: 50, backgroundColor: 'powderblue'}} />
<View style={{width: 50, height: 50, backgroundColor: 'skyblue'}} />
<View style={{width: 50, height: 50, backgroundColor: 'steelblue'}} />
</View>
);
}
};

```
### Layout Direction
```
*LTR* (default value) Text and children and laid out from left to right. Margin and padding applied the start of an element are applied on the left side.

*RTL* Text and children and laid out from right to left. Margin and padding applied the start of an element are applied on the right side.
```
### Align Items
```
*stretch* (default value) Stretch children of a container to match the height of the container's cross axis.

*flex-start* Align children of a container to the start of the container's cross axis.

*flex-end* Align children of a container to the end of the container's cross axis.

*center* Align children of a container in the center of the container's cross axis.

*baseline* Align children of a container along a common baseline. Individual children can be set to be the reference baseline for their parents.
```
```
import React, { Component } from 'react';
import { View } from 'react-native';

export default class AlignItemsBasics extends Component {
render() {
return (
// Try setting `alignItems` to 'flex-start'
// Try setting `justifyContent` to `flex-end`.
// Try setting `flexDirection` to `row`.
<View style={{
flex: 1,
flexDirection: 'column',
justifyContent: 'center',
alignItems: 'stretch',
}}>
<View style={{width: 50, height: 50, backgroundColor: 'powderblue'}} />
<View style={{height: 50, backgroundColor: 'skyblue'}} />
<View style={{height: 100, backgroundColor: 'steelblue'}} />
</View>
);
}
};

```
### Align Content
```
*flex-start* (default value) Align wrapped lines to the start of the container's cross axis.

*flex-end* Align wrapped lines to the end of the container's cross axis.

*stretch wrapped* lines to match the height of the container's cross axis.

*center* Align wrapped lines in the center of the container's cross axis.

*space-between* Evenly space wrapped lines across the container's main axis, distributing remaining space between the lines.

*space-around* Evenly space wrapped lines across the container's main axis, distributing remaining space around the lines. Compared to space between using space around will result in space being distributed to the begining of the first lines and end of the last line.
```
## Animations
### Animated API
```
*Animated* exports six animatable component types: *View*, *Text*, *Image*, *ScrollView*, *FlatList* and *SectionList*, but you can also create your own using *Animated.createAnimatedComponent()*.
```
```
import React from 'react';
import { Animated, Text, View } from 'react-native';

class FadeInView extends React.Component {
state = {
fadeAnim: new Animated.Value(0),  // Initial value for opacity: 0
}

componentDidMount() {
Animated.timing(                  // Animate over time
this.state.fadeAnim,            // The animated value to drive
{
toValue: 1,                   // Animate to opacity: 1 (opaque)
duration: 10000,              // Make it take a while
}
).start();                        // Starts the animation
}

render() {
let { fadeAnim } = this.state;

return (
<Animated.View                 // Special animatable View
style={{
...this.props.style,
opacity: fadeAnim,         // Bind opacity to animated value
}}
>
{this.props.children}
</Animated.View>
);
}
}

// You can then use your `FadeInView` in place of a `View` in your components:
export default class App extends React.Component {
render() {
return (
<View style={{flex: 1, alignItems: 'center', justifyContent: 'center'}}>
<FadeInView style={{width: 250, height: 50, backgroundColor: 'powderblue'}}>
<Text style={{fontSize: 28, textAlign: 'center', margin: 10}}>Fading in</Text>
</FadeInView>
</View>
)
}
}
```
### Interpolation
```
value.interpolate({
inputRange: [0, 1],
outputRange: [0, 100],
});
```
### Using the native driver
```
Animated.timing(this.state.animatedValue, {
toValue: 1,
duration: 500,
useNativeDriver: true, // <-- Add this
}).start();
```
