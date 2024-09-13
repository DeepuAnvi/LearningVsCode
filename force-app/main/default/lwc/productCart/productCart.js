import { LightningElement, track } from 'lwc';
import getOpportunityProduct from '@salesforce/apex/AccountLWCController.getAccountList';

export default class ProductCart extends LightningElement {
    
    @track accountId = '';
    @track contacts;
   // @track columns = columns;
    
    
    @track recordId;
    @track ProductList;
    @track productList1 = [];
    @track spinner;
    @track isLoaded;

    templateOne = true;

  //  render() {
     //   return this.templateOne ? templateOne : templateTwo;
    //}

    //switchTemplate(){ 
     //   this.templateOne = this.templateOne === true ? false : true; 
    //}
//}
/*

    @wire (getAccountList) accounts;
    productLists(error, data){
        if(data){
            this.productList = data;
        }
        else if(error){
            this.product1List = error.data;
        }
    }
}
*/
}