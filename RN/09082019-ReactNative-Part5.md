# 09-08-2019
## Redux Thunk
### Motivation
_Redux Thunk middleware allows you to write action creators that return a function instead of an action._
```
const INCREMENT_COUNTER = 'INCREMENT_COUNTER';

function increment() {
return {
type: INCREMENT_COUNTER
};
}

function incrementAsync() {
return dispatch => {
setTimeout(() => {
// Yay! Can invoke sync or async actions with `dispatch`
dispatch(increment());
}, 1000);
};
}
```
### Installation
```
npm install --save redux-thunk
```
```
import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk';
import rootReducer from './reducers/index';

// Note: this API requires redux@>=3.1.0
const store = createStore(
rootReducer,
applyMiddleware(thunk)
);
```
### Example
```
const GET_CURRENT_USER = 'GET_CURRENT_USER';
const GET_CURRENT_USER_SUCCESS = 'GET_CURRENT_USER_SUCCESS';
const GET_CURRENT_USER_FAILURE = 'GET_CURRENT_USER_FAILURE';

const getUser = () => {
return (dispatch) => {     //nameless functions
// Initial action dispatched
dispatch({ type: GET_CURRENT_USER });
// Return promise with success and failure actions
return axios.get('/api/auth/user').then(  
user => dispatch({ type: GET_CURRENT_USER_SUCCESS, user }),
err => dispatch({ type: GET_CURRENT_USER_FAILURE, err })
);
};
};
```

