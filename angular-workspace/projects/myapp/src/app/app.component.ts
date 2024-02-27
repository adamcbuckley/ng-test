import { Component } from "@angular/core";
import { RouterOutlet } from "@angular/router";
import { MylibComponent } from "mylib";

@Component({
  selector: "app-root",
  standalone: true,
  imports: [RouterOutlet, MylibComponent],
  templateUrl: "./app.component.html",
  styleUrl: "./app.component.scss",
})
export class AppComponent {
  title = "myapp";
}
