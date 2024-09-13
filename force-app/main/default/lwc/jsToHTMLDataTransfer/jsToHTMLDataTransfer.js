import { LightningElement } from 'lwc';

// Old Way : import { LightningElement , track} from 'lwc';

export default class JsToHTMLDataTransfer extends LightningElement {

    // old way: @track fullname = 'deepika'
    //@track is a decarater
    
    fullname='Deepika';

    changeNmaeHandler(event)

    {
        // this is used to give current instences
        this.fullname= 'Gopi';
    }
}