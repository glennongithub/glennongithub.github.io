// @ts-check
/**
 * This is a experimental store mostly used to learn the concept. Likely it will in later stages be replaced by the
 * Svelte version as it is just better and more fleshed out. But for now, to keep clear what is actually happening
 * I will use my own version
 * 
 */
export function writable(value) {
    // We do not need to declare any new var for value it already exist as it is a incoming param
    const subscribers = new Set();

    /**

     */
    function subscribe(subscriberFunc) {
        // Make sure we sync the subscriber with current valure directly
        subscriberFunc((value));
        
        // And ofc add it to subscribers-list so it is updated when needed.
        subscribers.add(subscriberFunc);

        // return cleanup function
		return () => {
			subscribers.delete(subscriberFunc)
		}
    }

    /**
     */
    function update(updateFunc) {
        // Update value acording to modification requested in updateFunc
        value = updateFunc((value));
        // make sure all subscribers are notified
        subscribers.forEach((subscriber) => subscriber(value));
    }

    /**
     */
    function set(newValue) {
        // Just force the new value
        value = newValue;
        // make sure all subscribers are notified
        subscribers.forEach((subscriber) => subscriber(value))
    }

    const writableToReturn = { subscribe, update, set, };
    
        // The object with the function(s) we like to export on the instance we creates
    return writableToReturn;
}