import { Controller } from "@hotwired/stimulus"

// Fade-in elements as they enter the viewport
export default class extends Controller {
  connect() {
    this.elements = this.element.querySelectorAll("[data-reveal]")

    if (!("IntersectionObserver" in window)) {
      this.elements.forEach((el) => el.classList.add("is-visible"))
      return
    }

    this.observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            entry.target.classList.add("is-visible")
            this.observer.unobserve(entry.target)
          }
        })
      },
      { threshold: 0.12, rootMargin: "0px 0px -40px 0px" }
    )

    this.elements.forEach((el) => this.observer.observe(el))
  }

  disconnect() {
    if (this.observer) this.observer.disconnect()
  }
}
