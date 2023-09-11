import { Component } from '@angular/core';
import { MyserviceService } from 'src/app/myservice.service';

@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.css']
})
export class FooterComponent {

  em : any;

  constructor(private srv:MyserviceService){}

  sendmail(){
    this.srv.sendemailid(this.em).subscribe(response=> console.log(response))
    alert("Send mail");
  }

}


