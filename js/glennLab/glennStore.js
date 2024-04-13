// We may export more version further down so lets se named exports
export function writable(value) {
    // We do not need to declare any new var for value it already exist as it is a incoming param

    const subscribers = new Set();

    function subscribe(subscriberFunc) {
        subscribers.add(subscriberFunc);

        // return cleanup function
		return () => {
			subscribers.delete(subscriberFunc)
		}
    }

    function update(updateFunc) {
        // Update value acording to modification requested in updateFunc
        value = updateFunc(value);
        // make sure all subscribers are notified
        subscribers.forEach((subscriber) => subscriber(value));
    }

    function set(newValue) {
        // Just force the new value
        value = newValue;
        // make sure all subscribers are notified
        subscribers.forEach((subscriber) => subscriber(value))
    }

    // The object with the function(s) we like to export on the instance we creates
    return { set, update, subscribe }
}