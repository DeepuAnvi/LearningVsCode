import { LightningElement } from 'lwc';

export default class Renderingcomponent extends LightningElement {

    booleanflagvalue = false;

showformhander(){

    this.booleanflagvalue = true;

}

hideformhandler(){

    this.booleanflagvalue = false;

    
}



}