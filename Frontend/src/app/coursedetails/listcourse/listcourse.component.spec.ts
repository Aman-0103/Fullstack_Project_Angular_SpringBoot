import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListcourseComponent } from './listcourse.component';

describe('ListcourseComponent', () => {
  let component: ListcourseComponent;
  let fixture: ComponentFixture<ListcourseComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ListcourseComponent]
    });
    fixture = TestBed.createComponent(ListcourseComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
