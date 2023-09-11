import { Component } from '@angular/core';
import { MyserviceService } from 'src/app/myservice.service';
import { category } from 'src/app/category';
import { collegebycategory } from 'src/app/collegebycategory';

@Component({
  selector: 'app-college-selection',
  templateUrl: './college-selection.component.html',
  styleUrls: ['./college-selection.component.css']
})
export class CollegeSelectionComponent {

  catObj?:category[]=[]
  catid?:number
  clgbycat?:collegebycategory[]=[]

  constructor(private serv:MyserviceService)
  {
    this.serv.getallcategory().subscribe(res=>this.catObj=res,err=>console.log(err))
     this.serv.getallcollege().subscribe(res=>this.clgbycat=res,err=>console.log(err))
  }

  showValue(){console.log(this.catid)

    this.serv.getallcollegebycategory(this.catid).subscribe(res=>
    this.clgbycat=res,err=>console.log(err) )
  }


}
