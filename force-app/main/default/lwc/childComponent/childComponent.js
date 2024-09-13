import { LightningElement } from 'lwc';

export default class ChildComponent extends LightningElement {

name='';
clear;

handleChange(event){
    this.name= event.target.value;

}
handleClick(event){
 this.clear= null;
}

}