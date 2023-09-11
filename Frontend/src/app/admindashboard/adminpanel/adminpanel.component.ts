import { Component } from '@angular/core';
import { MyserviceService } from 'src/app/myservice.service';
import { Router } from '@angular/router';
@Component({
  selector: 'app-adminpanel',
  templateUrl: './adminpanel.component.html',
  styleUrls: ['./adminpanel.component.css']
})
export class AdminpanelComponent {

  toggle?:any;
  u?:string;

  constructor(private serv:MyserviceService,private route:Router){ }
  ngOnInit()
  {
    this.u=MyserviceService.username
  }

  categorybtn()
  {
      this.toggle=1;
  }

  servicebtn() {

    this.toggle=2;

  }

  collegebtn()
  {
    this.toggle=3;

  }

  coursebtn()
  {
    this.toggle=4;

  }

  contactbtn()
  {
    this.toggle=5;

  }

  logoutbtn()
  {
    MyserviceService.login=false;
    this.route.navigate(["/"]);
  }

}
