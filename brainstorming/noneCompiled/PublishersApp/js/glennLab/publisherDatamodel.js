// @ts-check
/**
 * Draft of how I might structure data for congregation administration
 *
 * 
 * Geo location
 * @typedef {{
 *  longitude: number,
 *  latitude: number,
 * }} GoeLocation
 * 
 * Address location
 * @typedef {{
 *  streetAddress: string,
 *  postcode: string,
 *  city: string,
 *  county?: string,
 *  mapLocation?: GoeLocation, 
 * }} AddressLocation
 *
 * Spiritual status
 * increasing level where a level can only be reached by first fullfil all previous levels
 */ 
const INTERESTED = 0;
const PUBLISHER = 1;
const BAPTISED = 2;
const GOOD_STANDING = 3;
const EXEMPLARY = 4;
const ASSIGNED_SPECIAL_RESPONSIBILLITY = 5;
const MINISTERIAL_SEVANT = 6;
const ELDER = 7;
 /** 
 * Some things to describe.
 * Minimum level of spiritual status for special asignments/responsibility
 * For instace
 * Auxiliary pioneer - minimum GOOD_STANDING
 * Pioneer - EXEMPLARY
 * Cart wittnesing - BAPTISED + See Special requirements in Sfl.
 * 
 * We probably ned a table/model for being able to create roles/responsibillities/assignments
 * Mixing const with actual int below jsut as a test. Do not know if there are any consequenses of const vs dirrect value
 * 
 * SpiritualStatus
 * @typedef {INTERESTED|PUBLISHER|2|3|4|5|6|7} SpiritualStatus
 * @typedef {'heaven'|'earth'} FutureHope
 * 
 * 
 * Publishers can belong to one or many groups. Groups belong to a groupType making it possible to assign a publisher 
 * to multiple groups in a meningful way
 * 
 * Group
 * @typedef {{
 *  id: string,
 *  groupName: string,
 *  groupType: string,
 * }} Group
 * 
 * 
 * Publisher 
 * @typedef {{ 
 *  id: string, 
 *  lastName: string, 
 *  firstName: string, 
 *  homeAddress: AddressLocation,
 *  futureHope: FutureHope,
 *  spiritualStatus: SpiritualStatus,
 *  groupIds: [string]|[],
 * }} Publisher
 * */

 
 /**
  * @type Group
  */
const fieldServiceGroup1 = {
    id: '1',
    groupName: 'Group 1',
    groupType: 'fieldservice'
 };

/**
  * @type Group
  */
const fieldServiceGroup2 = {
    id: '2',
    groupName: 'Group 2',
    groupType: 'fieldservice'
 };

 /**
  * @type Group
  */
const fieldServiceGroup3 = {
    id: '3',
    groupName: 'Group 3',
    groupType: 'fieldservice'
 };

 /**
  * @type Group
  */
const fieldServiceGroup4 = {
    id: '4',
    groupName: 'Group 4',
    groupType: 'fieldservice'
 };

 /**
  * @type Group
  */
const fieldServiceGroup5 = {
    id: '5',
    groupName: 'Group 5',
    groupType: 'fieldservice'
 };


/**
 * @type Publisher
 */
const publisher = {
    id: '0',
    lastName: 'Doe',
    firstName: 'John',
    homeAddress: {
        streetAddress:'Street 1',
        postcode: '12345',
        city: 'TheTown',
        county: 'The nice state',
        mapLocation: {
            longitude: 1232333.244,
            latitude: 23542354235,
        }
    },
    futureHope: 'earth',
    spiritualStatus: ELDER,
    groupIds: ['1'],
};