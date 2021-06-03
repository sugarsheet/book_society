import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["fav"]

  connect() {
    // console.log(this.favTargets);

  }

  toggleFavorite(event) {
    event.preventDefault();
    const link = event.currentTarget;
    const path = link.href;
    fetch(path, {
      method: 'GET',
      headers: { 'Accept': "application/json" }
    })
      .then(response => response.json())
      .then((data) => {
        link.outerHTML = data.html;
      });
  }
}
