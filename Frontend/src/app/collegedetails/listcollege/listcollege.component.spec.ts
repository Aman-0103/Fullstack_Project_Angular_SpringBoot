import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ListcollegeComponent } from './listcollege.component';

describe('ListcollegeComponent', () => {
  let component: ListcollegeComponent;
  let fixture: ComponentFixture<ListcollegeComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ListcollegeComponent]
    });
    fixture = TestBed.createComponent(ListcollegeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
