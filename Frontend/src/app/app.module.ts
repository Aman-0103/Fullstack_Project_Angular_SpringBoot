import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule} from '@angular/common/http'
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CategoryComponent } from './categorydetails/category/category.component';
import { FormsModule, ReactiveFormsModule }    from '@angular/forms';
import { NgxPaginationModule } from 'ngx-pagination';
import { AdminpanelComponent } from './admindashboard/adminpanel/adminpanel.component';
import { RouterModule } from '@angular/router';
import { PagenotfoundComponent } from './pagenotfoundcomp/pagenotfound/pagenotfound.component';
import { FlexLayoutModule } from '@angular/flex-layout';
import { SignupComponent } from './signup/signup.component';
import { SigninComponent } from './signin/signin.component';
import { HttpInterceptorService } from './http-interceptor.service';
import { HTTP_INTERCEPTORS }    from '@angular/common/http';
import { ListcollegeComponent } from './collegedetails/listcollege/listcollege.component';
import { ContactusComponent } from './contactdetails/contactus/contactus.component';
import { ServicesComponent } from './servicedetails/services/services.component';
import { ListcourseComponent } from './coursedetails/listcourse/listcourse.component';
import { AdminnavComponent } from './admindashboard/adminnav/adminnav.component';
import { HomeComponent } from './Components/home/home.component';
import { AboutUsComponent } from './Components/about-us/about-us.component';
import { AddmissionProcedureComponent } from './Components/addmission-procedure/addmission-procedure.component';
import { CollegeSelectionComponent } from './Components/college-selection/college-selection.component';
import { ContactUsComponent } from './Components/contact-us/contact-us.component';
import { CoursesComponent } from './Components/courses/courses.component';
import { FooterComponent } from './Components/footer/footer.component';
import { NavbarComponent } from './Components/navbar/navbar.component';
import { ServicesprovidedComponent } from './Components/servicesprovided/servicesprovided.component';


@NgModule({
  declarations: [
    AppComponent,
    CategoryComponent,
    AdminpanelComponent,
    PagenotfoundComponent,
    SignupComponent,
    SigninComponent,
    ListcollegeComponent,
    ContactusComponent,
    ServicesComponent,
    ListcourseComponent,
    AdminnavComponent,
    HomeComponent,
    AboutUsComponent,
    AddmissionProcedureComponent,
    CollegeSelectionComponent,
    ContactUsComponent,
    CoursesComponent,
    FooterComponent,
    NavbarComponent,
    ServicesprovidedComponent

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    ReactiveFormsModule,
    NgxPaginationModule,
    FormsModule,
    FlexLayoutModule,
    RouterModule.forRoot([
        {path:"admin",component:AdminpanelComponent},
        {path:"adminnav",component:AdminnavComponent},
        {path:'home', component: HomeComponent},
        {path:'about', component: AboutUsComponent},
        {path:'courses', component: CoursesComponent},
        {path:'admission', component: AddmissionProcedureComponent},
        {path:'contact', component: ContactUsComponent},
        {path:'college', component: CollegeSelectionComponent},
        {path:'services', component: ServicesprovidedComponent},
        { path: 'signin', component: SigninComponent },
        { path: 'signup', component: SignupComponent },
        { path: '', redirectTo: '/home', pathMatch: 'full' },
        {path:"**",component:PagenotfoundComponent},
    ])
  ],
  providers: [{   provide: HTTP_INTERCEPTORS,
    useClass: HttpInterceptorService,
    multi: true
}],
  bootstrap: [AppComponent],
  exports:[RouterModule]
})
export class AppModule { }
