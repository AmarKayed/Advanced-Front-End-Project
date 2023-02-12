import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-color-page',
  templateUrl: './color-page.component.html',
  styleUrls: ['./color-page.component.scss']
})
export class ColorPageComponent implements OnInit {

  colors: string[] = [
    'blue',
    'green',
    'red',
    'yellow',
    'brown',
    'purple'
  ];

  backgroundColor: string = '';

  constructor() { }

  ngOnInit(): void {
  }

  updateBackgroundColor(color: string): void{
    console.log(color);
    this.backgroundColor=color;
  }


}
