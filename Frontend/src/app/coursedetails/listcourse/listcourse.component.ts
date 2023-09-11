import { Component,EventEmitter,Input,Output } from '@angular/core';
import { courses } from 'src/app/courses';
import { FormGroup , FormBuilder} from '@angular/forms';
import { MyserviceService } from 'src/app/myservice.service';
import { category } from 'src/app/category';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-listcourse',
  templateUrl: './listcourse.component.html',
  styleUrls: ['./listcourse.component.css']
})
export class ListcourseComponent {

  srcdata:courses[]=[]
  src?:string |any

  p:number=1;
  count:number=5;

  allcourse:courses[]=[];
  courObj !:FormGroup;
  newcourse: courses = new courses();
  allcategory:category[]=[];
  uploadfile?:any
  imageURL?:any

  uploadresultData?:any



  constructor(private formbuild: FormBuilder,private  serv:MyserviceService, private http:HttpClient)
  {

    this.serv.getallcategory().subscribe(res=>this.allcategory=res)

    this.serv.getallcourses().subscribe(res=>{this.srcdata=res

    })

    this.courObj = this.formbuild.group({
      crid:[''],
      crnm:[''],
      ct_catid:[''],
      catnm:[''],
      descrip:[''],
      seats:[''],
      pic:['']
    })

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

    this.uploadresultData.append("crnm",this.courObj.controls.crnm.value)
    this.uploadresultData.append("ct_catid",this.courObj.controls.ct_catid.value)
    this.uploadresultData.append("descrip",this.courObj.controls.descrip.value)
    this.uploadresultData.append("seats",this.courObj.controls.seats.value)
    this.uploadresultData.append("pic",this.uploadfile,this.uploadfile.name)

    console.log(this.uploadresultData)

    this.http.post(`http://localhost:9091/api/addCourse`,this.uploadresultData,{
    responseType:"json",
    reportProgress:true,
    observe:"response"
    }).subscribe(res=>alert("Course is Added Successfully ! "),err=>console.log(err))

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

  getcolor(crid:any) {
    if(crid>105)
        return "green"
    else
        return "red"
  }


  changePage(e: number)
  {
    this.p = e;
    this.serv.getallcourses();
  }

  getallcourse()
  {
    this.serv.getallcourses().subscribe(res=>{
      this.allcourse = res
    },
    err=>console.log(err));
  }

  editCour(e:any){

    this.courObj.controls['crid'].setValue(e.crid)
    this.courObj.controls['crnm'].setValue(e.crnm)

  }

  updateCour(){
    this.newcourse.crid = this.courObj.value.crid;
    this.newcourse.crnm = this.courObj.value.crnm;

      this.serv.updatecourse(this.newcourse).subscribe(res=>{
        alert("Course Details are updated !")
        this.getallcourse();}
        ,
        err=>console.log(err)
      )
  }

  deleteCour(e:any){
    this.serv.deletecourse(e).subscribe(res=>{alert("Course is deleted ! ");
      this.getallcourse();
    },
    err=>console.log(err))
  }

}
