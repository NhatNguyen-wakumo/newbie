# 05-08-2019 React Native Part 1 
## Lifecycle
![Image](https://github.com/NhatNguyen-wakumo/newbie/blob/master/image.png)
### constructor() 
```
constructor(props){
     super(props);
     this.state={
           message:'hello world'
     };// this will be our initiale data that will upadate later
}
```
### componentWillMount()
```
componentWillMount(){
     fetch('http://my.api/users')
     .then(res=>res.json()) //to cast the body to an object
     .then(res=>this.setState({
           data:res
     });
}

```
### render() 
```
render(){
    return(
      <View>
            <Text>{this.state.message}</Text>
      </View>
)};
```
### componentDidMount()
```
componentDidMount(){
      this.setState({
          message:'i got changed'
     };
}
```
## Naming convention
### Component files
```
 - index.js
 - Main.js
 - Header.js
```
### Event name
```
handleEventName = ()=>{//todo}
```
### Render methods
```
renderMethodName = () => {
   //todo
  }
  render() {
    return (
      <View>
        {this.renderMethodName()}
      </View>
    );
  }
```
## Props
_Props stand for Properties and the rule for Props is unchangeable, that mean it's constant._
```
export default class ScreenOne extends React.Component {
  render () {
    return (
     <View>
     	 <Heading message={'Custom Heading for Screen One'}/>
     </View>
    )
  }
}

// Child component
export default class Heading extends React.Component {
  render () {
    return (
      <View>
        <Text>{this.props.message}</Text>
      </View>
    )
  }
}
Heading.propTypes = {
  message: PropTypes.string
}
Heading.defaultProps = {
  message: 'Heading One'
}
```
## State
_The rule for State that is can be changed._
_Anytime there is data that is going to change within a component, state can be used._
```
class Form extends React.Component {

  constructor (props) {
     super(props)
     this.state = {
       input: ''
     }
  }

handleChangeInput = (text) => {
    this.setState({ input: text })
  }
  
  render () {
    const { input } = this.state

    return (
       <View>
          <TextInput style={{height: 40, borderColor: 'gray', borderWidth: 1}}
            onChangeText={this.handleChangeInput}
            value={input}
          />
        </View>
      )
    }
 }

```

