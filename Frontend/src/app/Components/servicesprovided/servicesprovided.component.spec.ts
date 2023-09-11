import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ServicesprovidedComponent } from './servicesprovided.component';

describe('ServicesprovidedComponent', () => {
  let component: ServicesprovidedComponent;
  let fixture: ComponentFixture<ServicesprovidedComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [ServicesprovidedComponent]
    });
    fixture = TestBed.createComponent(ServicesprovidedComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
