import React from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import { createStore, combineReducers, applyMiddleware } from 'redux';
import reduxPromise from 'redux-promise';
import logger from 'redux-logger';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
//import { createHistory as history } from 'history';



import OrdersReducer from './reducers/orders_reducer';
import OrdersIndex from './containers/orders_index';

const reducers = combineReducers({
  orders: OrdersReducer,
});

const middlewares = applyMiddleware(reduxPromise, logger);

// render an instance of the component in the DOM
//the switch, for this route mount the ordersIndex Component
ReactDOM.render(
  <Provider store={createStore(reducers, {}, middlewares)}>
    <Router>
      <Switch>
        <Route path="/orders" exact component={OrdersIndex} />
      </Switch>
    </Router>
  </Provider>,
  document.getElementById('root')
);
