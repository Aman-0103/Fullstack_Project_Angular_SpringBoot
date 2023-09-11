import { Component,EventEmitter,Input,Output } from '@angular/core';
import { college } from 'src/app/college';
import { FormGroup , FormBuilder} from '@angular/forms';
import { MyserviceService } from 'src/app/myservice.service';
import { category } from 'src/app/category';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-listcollege',
  templateUrl: './listcollege.component.html',
  styleUrls: ['./listcollege.component.css']
})
export class ListcollegeComponent {

  srcdata:college[]=[]
  src?:string |any

  p:number=1;
  count:number=5;

  allcollege:college[]=[];
  colObj !:FormGroup;
  newcollege: college = new college();
  allcategory:category[]=[];
  uploadfile?:any
  imageURL?:any

  uploadresultData?:any

  constructor(private formbuild: FormBuilder,private  serv:MyserviceService, private http:HttpClient)
  {

    this.serv.getallcategory().subscribe(res=>this.allcategory=res)

    this.serv.getallcollege().subscribe(res=>{this.srcdata=res

    })


    this.colObj = this.formbuild.group({
      clid:[''],
      clnm:[''],
      location:[''],
      ct_catid:[''],
      descrip:[''],
      seats:[''],
      pic:['']
    })

  }

  getallcollege()
    {
      this.serv.getallcollege().subscribe(res=>{
        this.allcollege = res
         },
      err=>console.log(err));
    }


  ImageUpload(e?:any)
  {
    this.uploadfile = (e.target as HTMLInputElement).files[0];
    console.log(this.uploadfile)

      // File Preview
      const reader = new FileReader();
      reader.onload = () => {
            this.imageURL = reader.result as string;
    }
    reader.readAsDataURL(this.uploadfile)

  }


  uploadData()
  {

    this.uploadresultData = new FormData()

    this.uploadresultData.append("clnm",this.colObj.controls.clnm.value)
    this.uploadresultData.append("ct_catid",this.colObj.controls.ct_catid.value)
    this.uploadresultData.append("location",this.colObj.controls.location.value)
    this.uploadresultData.append("descrip",this.colObj.controls.descrip.value)
    this.uploadresultData.append("seats",this.colObj.controls.seats.value)
    this.uploadresultData.append("pic",this.uploadfile,this.uploadfile.name)

    console.log(this.uploadresultData)

    this.http.post(`http://localhost:9091/api/addcollege`,this.uploadresultData,{
    responseType:"json",
    reportProgress:true,
    observe:"response"
    }).subscribe(res=>alert("College is Added Successfully ! "),err=>console.log(err))

  }


  searchitem()
  {
      this.srcdata = this.srcdata.filter((v:any) =>
            v.clnm.indexOf(this.src) !==-1)
            console.log(this.srcdata)
  }


  func(e:any)
  {
    console.log(e);
  }

  getcolor(clid:any) {
    if(clid>105)
        return "green"
    else
        return "red"
    }


    changePage(e: number)
    {
      this.p = e;
      this.serv.getallcollege();
    }


    editCol(e:any){

      this.colObj.controls['clid'].setValue(e.clid)
      this.colObj.controls['clnm'].setValue(e.clnm)

      }


      updateCol(){

      this.newcollege.clid = this.colObj.value.clid;
      this.newcollege.clnm = this.colObj.value.clnm;

      this.serv.updatecollege(this.newcollege).subscribe(res=>{
        alert("College Details are updated !")
        this.getallcollege();}
        ,
        err=>console.log(err)
        )

      }


        deleteCol(e:any){

          this.serv.deletecollege(e).subscribe(res=>{alert("College is deleted ! ");
            this.getallcollege();
          },
          err=>console.log(err))

        }

}
