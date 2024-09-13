import { LightningElement } from 'lwc';

export default class WithLightningCard extends LightningElement {

    letterHandler (event){
        var VarValueWeGotFromHTML = event.target.value;
        //alert('You have entered a letter =' +VarValueWeGotFromHTML );
    }

    changeNmaeHandler(event){
        var valueWeEntered = event.target.value;


       alert('the value you entered ' + valueWeEntered);
    }
}