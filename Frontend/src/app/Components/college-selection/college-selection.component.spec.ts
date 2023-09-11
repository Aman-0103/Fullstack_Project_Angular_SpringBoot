import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CollegeSelectionComponent } from './college-selection.component';

describe('CollegeSelectionComponent', () => {
  let component: CollegeSelectionComponent;
  let fixture: ComponentFixture<CollegeSelectionComponent>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [CollegeSelectionComponent]
    });
    fixture = TestBed.createComponent(CollegeSelectionComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
