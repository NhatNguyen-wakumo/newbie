# 06-08-2019 
## Base Components
### Text 
_Text supports nesting, styling, and touch handling._
```
import React, { Component } from 'react';
import { View, Text, Image, StyleSheet } from 'react-native'

const TextExample = () => {
return (
<View style = {styles.container}>
<Text style = {styles.text}>
<Text style = {styles.capitalLetter}>
L
</Text>

<Text>
orem ipsum dolor sit amet, sed do eiusmod.
</Text>

<Text>
Ut enim ad <Text style = {styles.wordBold}>minim </Text> veniam,
quis aliquip ex ea commodo consequat.
</Text>

<Text style = {styles.italicText}>
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.
</Text>

<Text style = {styles.textShadow}>
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
deserunt mollit anim id est laborum.
</Text>
</Text>

</View>
)
}
```
### View
```
class ViewColoredBoxesWithText extends Component {
render() {
return (
<View
style={{
flexDirection: 'row',
height: 100,
padding: 20,
}}>
<View style={{backgroundColor: 'blue', flex: 0.3}} />
<View style={{backgroundColor: 'red', flex: 0.5}} />
<Text>Hello World!</Text>
</View>
);
}
}
```
### Image 
```
import React, { Component } from 'react';
import { View, Image } from 'react-native';

export default class DisplayAnImage extends Component {
render() {
return (
<View>
<Image
source={require('/react-native/img/favicon.png')}
/>
<Image
style={{width: 50, height: 50}}
source={{uri: 'https://facebook.github.io/react-native/docs/assets/favicon.png'}}
/>
<Image
style={{width: 66, height: 58}}
source={{uri: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADMAAAAzCAYAAAA6oTAqAAAAEXRFWHRTb2Z0d2FyZQBwbmdjcnVzaEB1SfMAAABQSURBVGje7dSxCQBACARB+2/ab8BEeQNhFi6WSYzYLYudDQYGBgYGBgYGBgYGBgYGBgZmcvDqYGBgmhivGQYGBgYGBgYGBgYGBgYGBgbmQw+P/eMrC5UTVAAAAABJRU5ErkJggg=='}}
/>
</View>
);
}
}

```
### Button 
```
import { Button } from 'react-native';
...

<Button
onPress={onPressLearnMore}
title="Learn More"
color="#841584"
accessibilityLabel="Learn more about this purple button"
/>
```
### Flatlist
```
<FlatList
data={[{key: 'a'}, {key: 'b'}]}
renderItem={({item}) => <Text>{item.key}</Text>}
/>
```
