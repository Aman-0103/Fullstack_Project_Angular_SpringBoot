import { Component,EventEmitter,Input,Output } from '@angular/core';
import { contact } from 'src/app/contact';
import { FormGroup , FormBuilder} from '@angular/forms';
import { MyserviceService } from 'src/app/myservice.service';
import { category } from 'src/app/category';
import { services } from 'src/app/services';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-contact-us',
  templateUrl: './contact-us.component.html',
  styleUrls: ['./contact-us.component.css']
})
export class ContactUsComponent {

  srcdata:contact[]=[]

  conObj !:FormGroup;
  allcategory:category[]=[];
  allservice:services[]=[];
  uploadfile?:any
  imageURL?:any

  uploadresultData?:any



  constructor(private formbuild: FormBuilder,private  serv:MyserviceService, private http:HttpClient)
  {

    this.serv.getallcategory().subscribe(res=>this.allcategory=res)

    this.serv.getAllServices().subscribe(res=>this.allservice=res)

    this.serv.getallcontact().subscribe(res=>{this.srcdata=res

    })


    this.conObj = this.formbuild.group({
      contactid:[''],
      contactname:[''],
      ct_catid:[''],
      sr_serviceid:[''],
      email:[''],
      phone:[''],
      message:['']
    })

  }

  uploadData()
  {

    this.uploadresultData = new FormData()

    this.uploadresultData.append("contactname",this.conObj.controls.contactname.value)
    this.uploadresultData.append("ct_catid",this.conObj.controls.ct_catid.value)
    this.uploadresultData.append("sr_serviceid",this.conObj.controls.sr_serviceid.value)
    this.uploadresultData.append("email",this.conObj.controls.email.value)
    this.uploadresultData.append("phone",this.conObj.controls.phone.value)
    this.uploadresultData.append("message",this.conObj.controls.message.value)


    console.log(this.uploadresultData)

    this.http.post(`http://localhost:9091/api/addContact`,this.uploadresultData,{
    responseType:"json",
    reportProgress:true,
    observe:"response"
    }).subscribe(res=>alert("Contact is Added Successfully!!!"),err=>console.log(err))

  }

  func(e:any)
  {
    console.log(e);
  }

  getcolor(contactid:any) {
    if(contactid>105)
        return "green"
    else
        return "red"
    }

  deletecontact(e:any){}

}
