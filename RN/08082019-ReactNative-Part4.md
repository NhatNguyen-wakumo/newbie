# 08-08-2019

## Networking, JSON
### Using Fetch
#### Making requests
```
fetch('https://mywebsite.com/mydata.json');
```
_make a POST request_
```
fetch('https://mywebsite.com/endpoint/', {
method: 'POST',
headers: {
Accept: 'application/json',
'Content-Type': 'application/json',
},
body: JSON.stringify({
firstParam: 'yourValue',
secondParam: 'yourOtherValue',
}),
});
```
### Handling the response
_using the proposed ES2017 **async**/**await** syntax in a React Native app:_
```
async function getMoviesFromApi() {
try {
let response = await fetch(
'https://facebook.github.io/react-native/movies.json',
);
let responseJson = await response.json();
return responseJson.movies;
} catch (error) {
console.error(error);
}
}
```
### WebSocket Support
_**WebSockets** is a protocol which provides full-duplex communication channels over a single TCP connection._
```
var ws = new WebSocket('ws://host.com/path');

ws.onopen = () => {
// connection opened
ws.send('something'); // send a message
};

ws.onmessage = (e) => {
// a message was received
console.log(e.data);
};

ws.onerror = (e) => {
// an error occurred
console.log(e.message);
};

ws.onclose = (e) => {
// connection closed
console.log(e.code, e.reason);
};
```
## Navigator 
_Navigator handles the transition between different scenes in your app._
```
import React, {Component} from 'react';
import {Text, Navigator, TouchableHighlight} from 'react-native';

export default class NavAllDay extends Component {
render() {
return (
<Navigator
initialRoute={{title: 'Awesome Scene', index: 0}}
renderScene={(route, navigator) => <Text>Hello {route.title}!</Text>}
style={{padding: 100}}
/>
);
}
}
```
### Additional Scenes
_**initialRouteStack** prop to **Navigator**_
```
render() {
const routes = [
{title: 'First Scene', index: 0},
{title: 'Second Scene', index: 1},
];
return (
<Navigator
initialRoute={routes[0]}
initialRouteStack={routes}
renderScene={(route, navigator) =>
<TouchableHighlight onPress={() => {
if (route.index === 0) {
navigator.push(routes[1]);
} else {
navigator.pop();
}
}}>
<Text>Hello {route.title}!</Text>
</TouchableHighlight>
}
style={{padding: 100}}
/>
);
}
```
### Navigation Bar
```
<Navigator
renderScene={(route, navigator) =>
// ...
}
navigationBar={
<Navigator.NavigationBar
routeMapper={{
LeftButton: (route, navigator, index, navState) =>
{ return (<Text>Cancel</Text>); },
RightButton: (route, navigator, index, navState) =>
{ return (<Text>Done</Text>); },
Title: (route, navigator, index, navState) =>
{ return (<Text>Awesome Nav Bar</Text>); },
}}
style={{backgroundColor: 'gray'}}
/>
}
/>
```
```
LeftButton: (route, navigator, index, navState) =>
{
if (route.index === 0) {
return null;
} else {
return (
<TouchableHighlight onPress={() => navigator.pop()}>
<Text>Back</Text>
</TouchableHighlight>
);
}
}
```
### React Navigation
_create an app with a home screen and a profile screen_
```
import {createStackNavigator, createAppContainer} from 'react-navigation';

const MainNavigator = createStackNavigator({
Home: {screen: HomeScreen},
Profile: {screen: ProfileScreen},
});

const App = createAppContainer(MainNavigator);

export default App;
```
_Using **Navigation** prop to link to other screen_
```
class HomeScreen extends React.Component {
static navigationOptions = {
title: 'Welcome',
};
render() {
const {navigate} = this.props.navigation;
return (
<Button
title="Go to Jane's profile"
onPress={() => navigate('Profile', {name: 'Jane'})}
/>
);
}
}
```
