import { LightningElement,api, wire } from 'lwc';
import getContactList from '@salesforce/apex/LwcApexClass.getContactList';
export default class ContactCreateLwc extends LightningElement {

    @wire (getContactList) contacts;



}