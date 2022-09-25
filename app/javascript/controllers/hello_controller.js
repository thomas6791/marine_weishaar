import { Controller } from 'stimulus'; 
export default class extends Controller {
  connect() {
    console.log("hello from StimulusJS")
  }
  greet() {
    console.log("click")
  }
  mobile() {
    console.log("click mobile")
    document.getElementById("mobilenav").classList.toggle("open");
  }
  alertClose() {
    console.log("flash alert")
    let elementRemove = document.querySelector(".btn-close").parentElement;
    elementRemove.remove();
  }
}