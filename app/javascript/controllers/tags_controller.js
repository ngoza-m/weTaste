import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tags"
export default class extends Controller {
  static targets = ["element", "input"];

  connect() {
    console.log("Hello from toggle_controller.js")
  }

  

  toggle(e) {
    e.target.classList.toggle("p-color");
    // Add the tag to the hidden input field
    const newTag = e.target.innerText;

    console.log(newTag);
    let currentTags = this.inputTarget.value.split(",")
    
    if(currentTags[0] === ""){
      currentTags = []
    }

    const currentItemIndex = currentTags.findIndex((tag) => tag === newTag)
    if(currentItemIndex !== -1){
      currentTags.splice(currentItemIndex, 1)
    } else {
      currentTags.push(newTag)
    }

    console.log(currentTags)

    this.inputTarget.value = currentTags.join(",")
    // console.log(this.element.textContent);
  }
  }
