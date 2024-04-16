// @ts-check
import { writable } from "./glennLab/glennStore.js";
// Replace above with the below variant to see how the jsdoc-typed version helps with keeping track of what type of
// data we store in the stores
//import { writable } from "./glennStoreWithoutJsDoc.js";

// The type of initial values should be respected thoughout the existance of the store.
// types via jsdoc makes sure vs code can keep track of that and show warnings if we are not.
const firstStore = writable(123);
const secondStore = writable('');
console.log('App is starting');

let localValue = 0;

let localValue2 = 'test';

firstStore.subscribe((carrier) => {localValue = carrier});

secondStore.subscribe(carrier => {localValue2 = carrier});

secondStore.set(2); // This bad assignment will not cause any error/warning in editor if types are not added in glennStore

console.log('current value is now: ' + localValue);







