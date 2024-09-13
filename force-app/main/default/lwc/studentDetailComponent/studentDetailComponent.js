import { LightningElement } from 'lwc';

export default class StudentDetailComponent extends LightningElement {

    booleanflag = false ;

    showDetailsHandler () {

        this.booleanflag =false;

    }
    hideDetailsHandler () {

        this.booleanflag = true;
    }

    
}