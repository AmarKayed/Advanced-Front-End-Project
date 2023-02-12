import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';

import { AppRoutingModule } from './app-routing.module';
import { LoginModule } from './modules/login/login.module';
import { ProfileModule } from './modules/profile/profile.module';
import { ColorPageComponent } from './pages/color-page/color-page.component';
import { ColorButtonComponent } from './components/color-button/color-button.component';

@NgModule({
  declarations: [
    AppComponent,
    ColorPageComponent,
    ColorButtonComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    LoginModule,
    ProfileModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
