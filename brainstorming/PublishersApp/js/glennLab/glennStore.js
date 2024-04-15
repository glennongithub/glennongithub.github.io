/**
 * This is a experimental store mostly used to learn the concept. Likely it will in later stages be replaced by the
 * Svelte version as it is just better and more fleshed out. But for now, to keep clear what is actually happening
 * I will use my own version
 * 
 * @param {T} value 
 * @returns {
 *      subscibe: ((value: T) => viod) => () => void,
 *      update: ((value: T) => T) => void,
 *      set: ({T}) => void,
 * }
 */
// We may export more version further down so lets use named exports
export function writable(value) {
    // We do not need to declare any new var for value it already exist as it is a incoming param

    const subscribers = new Set();

    /**
     * @param (value: T) => void 
     * @returns () => void
     */
    function subscribe(subscriberFunc) {
        subscribers.add(subscriberFunc);

        // return cleanup function
		return () => {
			subscribers.delete(subscriberFunc)
		}
    }

    /**
     * 
     * @param (value: T) => T updateFunc
     * @returns {void}
     */
    function update(updateFunc) {
        // Update value acording to modification requested in updateFunc
        value = updateFunc(value);
        // make sure all subscribers are notified
        subscribers.forEach((subscriber) => subscriber(value));
    }

    /**
     * 
     * @param {T} newValue 
     * @returns {void}
     */
    function set(newValue) {
        // Just force the new value
        value = newValue;
        // make sure all subscribers are notified
        subscribers.forEach((subscriber) => subscriber(value))
    }

    // The object with the function(s) we like to export on the instance we creates
    return { subscribe, update, set, }
}