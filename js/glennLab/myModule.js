export function writable(value) {
    console.log('it is working');

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

    return { set, update, subscribe }
}