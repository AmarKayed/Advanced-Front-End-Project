import { Component, EventEmitter, Input, OnInit, Output } from '@angular/core';

@Component({
  selector: 'app-color-button',
  templateUrl: './color-button.component.html',
  styleUrls: ['./color-button.component.scss']
})
export class ColorButtonComponent implements OnInit {

  @Input() color: string = '';
  @Output() colorEmitter: EventEmitter<string> = new EventEmitter();


  constructor() { }

  ngOnInit(): void {
  }


  changeColor(): void{
    this.colorEmitter.emit(this.color);
  }

}
