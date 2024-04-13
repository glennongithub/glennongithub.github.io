import { firstStore, secondStore } from './glennLab/stores.js'
console.log('App2 is starting');

let localValue = 0;
let localValue2 = 0;

firstStore.subscribe(carrier => localValue = carrier);
secondStore.subscribe((carrier) => {localValue2 = carrier});

// Just refresh itself so all subscribers get updated
secondStore.update(carrier => carrier)

console.log('current value2 is now: ' + localValue2);

firstStore.update(carrier => carrier)

console.log('current value1 is now: ' + localValue + ' but inside app2');



