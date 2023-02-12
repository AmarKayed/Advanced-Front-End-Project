import { NgModule } from "@angular/core";
import { RouterModule, Routes } from "@angular/router";
import { AuthGuard } from "./guards/auth.guard";
import { LoginComponent } from "./modules/login/login/login.component";
import { ProfileComponent } from "./modules/profile/profile/profile.component";
import { ColorPageComponent } from "./pages/color-page/color-page.component";
import { NotFoundComponent } from "./pages/not-found/not-found.component";

const routes: Routes = [
    { path: "", redirectTo: "login", pathMatch: "full" },
    { path: "colors", component: ColorPageComponent, pathMatch: "full" },
    { path: "profile/:email", canActivate: [AuthGuard], component: ProfileComponent},
    { path: "login", component: LoginComponent },
    { path: "not-found", component: NotFoundComponent, pathMatch: "full" },
    { path: "**", redirectTo: "not-found", pathMatch: "full" },
];

@NgModule({
    imports: [RouterModule.forRoot(routes)],
    exports: [RouterModule],
})
export class AppRoutingModule {}
