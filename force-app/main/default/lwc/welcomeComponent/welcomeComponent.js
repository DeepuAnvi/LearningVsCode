import { LightningElement } from 'lwc';

export default class WelcomeComponent extends LightningElement {

    letterhandler(event){
        //var valueWeGotFromHTML = event.target;
        alert ('you have entered a letter = ' );
    }
}