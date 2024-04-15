import {firstStore} from './glennLab/stores.js'
console.log('App is starting');

let localValue = 0;

firstStore.subscribe((carrier) => {localValue = carrier});

firstStore.set('erf');

console.log('current value is now: ' + localValue);







