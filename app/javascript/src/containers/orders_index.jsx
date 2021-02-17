import React, { Component } from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import { bindActionCreators } from 'redux';

import { fetchOrders } from '../actions'


class OrdersIndex extends Component {
  componentWillMount() {
    this.props.fetchOrders();
  }

  renderOrders() {
    return this.props.orders.map((order) => {
      return (
        <tr key={order.id}>
          <td>{order.id}</td>
          <td>{order.address}</td>
          <td>{order.email}</td>
          <td>{order.pay_type}</td>
        </tr>
      );
    });
  }

  render() {
    return (
      <div>
        <table id='students'>
          <tbody>
            {this.renderOrders()}
          </tbody>
        </table>
      </div>
    );
  }
}

function mapStateToProps(state) {
  return {
    orders: state.orders
  };
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators({ fetchOrders }, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(OrdersIndex);
