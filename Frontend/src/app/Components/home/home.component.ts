import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ActivatedRoute, Router } from '@angular/router';
import { AuthService } from 'src/app/auth.service';
import { GreetingService } from 'src/app/greeting.service';
import { MyserviceService } from 'src/app/myservice.service';
declare var Razorpay:any;


@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {

  isSignedin = false;

	signedinUser: string = '';

	greeting: any[] = [];

  options?:any;

  tot?:number = 5000;

	constructor(private route: ActivatedRoute, private router: Router, private http: HttpClient, private authService: AuthService, private greetingService: GreetingService, private serv:MyserviceService) {}

	ngOnInit() {
		this.isSignedin = this.authService.isUserSignedin();
		this.signedinUser = this.authService.getSignedinUser();

		if(!this.authService.isUserSignedin()) {
			this.router.navigateByUrl('home');
		}

		if(this.isSignedin) {
			this.greetingService.getByUserRole().subscribe((result: string) => this.greeting.push(result), () => console.log('/user - You are not authorize'));
			this.greetingService.getByAdminRole().subscribe((result: string) => this.greeting.push(result), () => console.log('/admin - You are not authorized'));
			this.greetingService.getByUserOrAdminRole().subscribe((result: string) => this.greeting.push(result), () => console.log('/userOrAdmin - You are not authorized'));
			this.greetingService.getByAnonymousRole().subscribe((result: string) => this.greeting.push(result), () => console.log('/anonymous - You are not authorized'));
		}
	}

	doSignout() {
		this.authService.signout();
	}

  addtolocalstorage(a?:any)
  {
    console.log(a);
    localStorage.setItem(a.prnm,JSON.stringify(a));
  }

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
  }

}
