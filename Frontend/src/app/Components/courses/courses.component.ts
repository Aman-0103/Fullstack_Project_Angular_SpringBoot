import { Component } from '@angular/core';
import { MyserviceService } from 'src/app/myservice.service';
import { category } from 'src/app/category';
import { coursebycategory } from 'src/app/coursebycategory';

@Component({
  selector: 'app-courses',
  templateUrl: './courses.component.html',
  styleUrls: ['./courses.component.css']
})
export class CoursesComponent {

  catObj?:category[]=[]
  catid?:number

  courbycat?:coursebycategory[]=[]

  constructor(private serv:MyserviceService)
  {
    this.serv.getallcategory().subscribe(res=>this.catObj=res,err=>console.log(err))
     this.serv.getallcourses().subscribe(res=>this.courbycat=res,err=>console.log(err))
  }

  showValue() {

    console.log(this.catid)

    this.serv.getallcoursebycategory(this.catid).subscribe(res=>
    this.courbycat=res,err=>console.log(err) )

  }

  addtolocalstorage(a?:any)
  {
    console.log(a);
    localStorage.setItem(a.clnm,JSON.stringify(a));
  }

}
