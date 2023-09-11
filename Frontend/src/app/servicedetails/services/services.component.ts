import { Component } from '@angular/core';
import { services } from 'src/app/services';
import { FormBuilder , FormGroup } from '@angular/forms';
import { MyserviceService } from 'src/app/myservice.service';

@Component({
  selector: 'app-services',
  templateUrl: './services.component.html',
  styleUrls: ['./services.component.css']
})
export class ServicesComponent {

  p:number=1;
  count:number=5;


  servObj !:FormGroup;
  newservice: services= new services();
  allservices:services[]=[];



  constructor(private formbuild: FormBuilder,private serv:MyserviceService)
  {

    this.getallservices();

      this.servObj = this.formbuild.group({
          serviceid:[''],
          servicename:['']
      })

  }

  getallservices()
    {
      this.serv.getAllServices().subscribe(res=>{
        this.allservices = res
         },
        err=>console.log(err)
      );
    }

  addService()
  {
      this.newservice.servicename = this.servObj.value.servicename;

      this.serv.addService(this.newservice).subscribe(res=>{
        alert("Service is Added ! ")
        this.getallservices();}
        , err=>console.log(err))

  }

  changePage(e: number)
  {
    this.p = e;
    this.getallservices();
  }

  editServ(e:any){

    this.servObj.controls['serviceid'].setValue(e.serviceid)
    this.servObj.controls['servicename'].setValue(e.servicename)

  }


  updateServ(){

    this.newservice.serviceid = this.servObj.value.serviceid;
    this.newservice.servicename = this.servObj.value.servicename;

    this.serv.updateService(this.newservice).subscribe(res=>{
      alert("Service is updated !")
      this.getallservices();}
      ,
      err=>console.log(err)
    )

  }


  deleteServ(e:any){

    this.serv.deleteService(e).subscribe(res=>{alert("Service is deleted ! ");
      this.getallservices();
      },
      err=>console.log(err)
    )

  }


}
