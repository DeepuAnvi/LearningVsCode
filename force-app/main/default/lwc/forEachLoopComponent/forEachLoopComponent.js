import { LightningElement } from 'lwc';

export default class ForEachLoopComponent extends LightningElement {

    //declaring property
    CEOList;

    showlisthandler(){
        this.CEOList = [
            {
                id: 1 ,
                name: 'Deepika',
                title : 'CEO of Salesforce',  
            },
           {
            id: 2,
            name: 'Gopi',
            title : 'CEO of Oracle',  
           },
           {
            id: 3 ,
            name: 'Anvi',
            title : 'CEO of IT ',
           }

        ];
    }


}