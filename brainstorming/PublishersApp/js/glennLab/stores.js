import { writable } from "./glennStore.js";

let initValueForFirstStore = 123;
export const firstStore = writable(initValueForFirstStore);
export const secondStore = writable(0);
initValueForFirstStore = '123df';