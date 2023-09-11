import { Component,EventEmitter,Input,Output } from '@angular/core';
import { contact } from 'src/app/contact';
import { FormGroup , FormBuilder} from '@angular/forms';
import { MyserviceService } from 'src/app/myservice.service';
import { category } from 'src/app/category';
import { services } from 'src/app/services';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-contactus',
  templateUrl: './contactus.component.html',
  styleUrls: ['./contactus.component.css']
})
export class ContactusComponent {

  srcdata:contact[]=[]
  src?:string |any

  p:number=1;
  count:number=5;


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

  // ImageUpload(e?:any)
  // {
  //   this.uploadfile = (e.target as HTMLInputElement).files[0];
  //   console.log(this.uploadfile)

  //     // File Preview
  //     const reader = new FileReader();
  //     reader.onload = () => {
  //           this.imageURL = reader.result as string;
  //   }
  //   reader.readAsDataURL(this.uploadfile)

  // }


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
    }).subscribe(res=>alert("Contact is Added Successfully ! "),err=>console.log(err))

  }


  searchitem()
  {
      this.srcdata = this.srcdata.filter((v:any) =>
            v.contactname.indexOf(this.src) !==-1)
            console.log(this.srcdata)
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


    changePage(e: number)
    {
      this.p = e;
      this.serv.getallcontact();
    }

    deletecontact(e:any){}

}
