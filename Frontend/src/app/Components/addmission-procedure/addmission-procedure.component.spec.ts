import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AddmissionProcedureComponent } from './addmission-procedure.component';

describe('AddmissionProcedureComponent', () => {
  let component: AddmissionProcedureComponent;
  let fixture: ComponentFixture<AddmissionProcedureComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [AddmissionProcedureComponent]
    });
    fixture = TestBed.createComponent(AddmissionProcedureComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
