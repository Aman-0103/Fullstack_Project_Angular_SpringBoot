import { Component } from '@angular/core';
import { MyserviceService } from 'src/app/myservice.service';
declare var Razorpay:any;

@Component({
  selector: 'app-servicesprovided',
  templateUrl: './servicesprovided.component.html',
  styleUrls: ['./servicesprovided.component.css']
})
export class ServicesprovidedComponent {

  options?:any;

  tot?:number = 5000;

  constructor(private serv: MyserviceService) {}

  ordernow() {

    let result = window.confirm("Do you really want to confirm the order :");
    if(result)
      {
      this.serv.createTransaction(this.tot).subscribe(
        res => { console.log(res);
        this.openTransactionModal(res);

        },
        err=>
        {
          alert(" Error in confirming the order ! ");
        console.log(err); })
      }
    else {
        alert("Order is not confirm");
        }

  }

  openTransactionModal(response:any) {
    this.options={
     order_id: response.orderId,
     key:response.key,
     amount:response.amount,
     currency:response.currency,
     name:'Aman Kumar',
     description:'Payment gateway check',
     image:'https://cdn.pixabay.com/photo/2023/05/28/03/34/flowers-8022731_640.jpg',
     handler: (response:any) =>{
       this.processResponse(response);
     },
     prefill:{
       name:'Aman Kumar',
       email:'kuaman2000@gmail.com',
       contact:'9599264328',
     },
     notes:{
       address:'Online Shopping'
     },
     theme:{
       color:'#F37254'
     }
   };
   let razorPayObject = new Razorpay(this.options);
   razorPayObject.open();
  }
  processResponse(resp:any) {
    console.log(resp);
    alert("You are a subscribed member of our concultancy");
  }


}
