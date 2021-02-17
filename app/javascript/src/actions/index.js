export const FETCH_ORDERS = 'FETCH_ORDERS';

export function fetchOrders() {
  // AJAX request
  const promise = fetch("/api/v1/orders")
    .then(response => response.json());

  return {
    type: FETCH_ORDERS,
    payload: promise
  }
}

//2. The action is then sent to the Reducer
