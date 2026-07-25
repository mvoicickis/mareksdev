import { Controller } from "@hotwired/stimulus"

// Sticky glass navbar with mobile menu toggle
export default class extends Controller {
  static targets = ["bar", "menu", "button", "openIcon", "closeIcon"]

  connect() {
    this.onScroll()
  }

  toggle() {
    const isOpen = !this.menuTarget.classList.contains("hidden")
    isOpen ? this.close() : this.open()
  }

  open() {
    this.menuTarget.classList.remove("hidden")
    this.menuTarget.hidden = false
    this.openIconTarget.classList.add("hidden")
    this.closeIconTarget.classList.remove("hidden")
    this.buttonTarget.setAttribute("aria-expanded", "true")
  }

  close() {
    this.menuTarget.classList.add("hidden")
    this.menuTarget.hidden = true
    this.openIconTarget.classList.remove("hidden")
    this.closeIconTarget.classList.add("hidden")
    this.buttonTarget.setAttribute("aria-expanded", "false")
  }

  onScroll() {
    if (!this.hasBarTarget) return

    if (window.scrollY > 12) {
      this.barTarget.classList.add("shadow-lg", "shadow-black/20")
    } else {
      this.barTarget.classList.remove("shadow-lg", "shadow-black/20")
    }
  }
}
