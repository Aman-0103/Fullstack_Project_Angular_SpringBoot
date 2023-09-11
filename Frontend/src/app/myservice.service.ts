import { Injectable } from '@angular/core';
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { Observable } from 'rxjs';
import { category } from './category';
import { productbycategory } from './productbycategory';
import { college } from './college';
import { collegebycategory } from './collegebycategory';
import { users } from './users';
import { services } from './services';
import { contact } from './contact';
import { courses } from './courses';
import { coursebycategory } from './coursebycategory';

@Injectable({
  providedIn: 'root'
})
export class MyserviceService {

  public static login?:boolean=false;
  public static username?:string='';

  constructor(private http : HttpClient) { }

  public createTransaction(amount:any)
  {
  return this.http.get("http://localhost:9091/api/getTransaction/"+amount);
  }


  checkuserexists(u:users):Observable<users>
  {
    return this.http.post<users>(`http://localhost:9091/api/checkuser`,u);
  }



  // Category

  getallcategory():Observable<category[]>
  {
    return this.http.get<category[]>(`http://localhost:9091/api/allcat`)
  }


  getcatbyid():Observable<category>
  {
    return this.http.get<category>(`http://localhost:9091/api/catbyid/1`);
  }


  addCategory(c : category):Observable<category>
  {
    return this.http.post<category>(`http://localhost:9091/api/addcat`,c);
  }


  updatecategory(c:category):Observable<category>
  {
    return this.http.put<category>(`http://localhost:9091/api/updatecat/`+c.catid,c);
  }


  deletecategory(c:category):Observable<category>
  {
    return this.http.delete<category>(`http://localhost:9091/api/deletecat/`+c.catid);
  }



  //          services

  getAllServices():Observable<services[]>
  {
    return this.http.get<services[]>(`http://localhost:9091/api/allserv`);
  }


  getServById():Observable<services>
  {
    return this.http.get<services>(`http://localhost:9091/api/servbyid/1`);
  }


  addService(sr : services):Observable<services>
  {
    return this.http.post<services>(`http://localhost:9091/api/addserv`,sr);
  }


  updateService(sr: services):Observable<services>
  {
    return this.http.put<services>(`http://localhost:9091/api/updateserv/`+sr.serviceid,sr);
  }


  deleteService(sr: services):Observable<services>
  {
    return this.http.delete<services>(`http://localhost:9091/api/deleteserv/`+sr.serviceid);
  }


  //                   College

  getallcollege():Observable<college[]>
  {
    return this.http.get<college[]>(`http://localhost:9091/api/allcollege`)
  }


  getcolbyid():Observable<college>
  {
    return this.http.get<college>(`http://localhost:9091/api/colbyid/1`);
  }


  addCollege(c : college):Observable<college>
  {
    return this.http.post<college>(`http://localhost:9091/api/addcollege`,c);
  }


  updatecollege(c:college):Observable<college>
  {
    return this.http.put<college>(`http://localhost:9091/api/updatecol/`+c.clid,c);
  }


  deletecollege(c:college):Observable<college>
  {
    return this.http.delete<college>(`http://localhost:9091/api/deletecol/`+c.clid);
  }


  getallcollegebycategory(e:any):Observable<collegebycategory[]>
  {
    return this.http.get<collegebycategory[]>(`http://localhost:9091/api/allcolcat/`+e)
  }


  //          Contact

  getallcontact():Observable<contact[]>
  {
    return this.http.get<contact[]>(`http://localhost:9091/api/allContact`)
  }


  //           Courses

  getallcourses():Observable<courses[]>
  {
    return this.http.get<courses[]>(`http://localhost:9091/api/allCourses`)
  }


  getcourbyid():Observable<courses>
  {
    return this.http.get<courses>(`http://localhost:9091/api/courbyid/1`);
  }


  addCourse(c : courses):Observable<courses>
  {
    return this.http.post<courses>(`http://localhost:9091/api/addCourse`,c);
  }


  updatecourse(c:courses):Observable<courses>
  {
    return this.http.put<courses>(`http://localhost:9091/api/updatecour/`+c.crid,c);
  }


  deletecourse(c:courses):Observable<courses>
  {
    return this.http.delete<courses>(`http://localhost:9091/api/deletecour/`+c.crid);
  }


  getallcoursebycategory(e:any):Observable<coursebycategory[]>
  {
    return this.http.get<coursebycategory[]>(`http://localhost:9091/api/allcourcat/`+e)
  }


  sendemailid(em:any){
    return this.http.post<any>(`http://localhost:9091/api/sendmail/`,em);
  }

}
