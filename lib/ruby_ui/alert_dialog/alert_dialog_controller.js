import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="ruby-ui--alert-dialog"
export default class extends Controller {
  static targets = ["dialog"];
  static values = {
    open: {
      type: Boolean,
      default: false,
    },
  };

  connect() {
    if (this.openValue) {
      this.open();
    }
    // Add event listener for clicks on the backdrop
    if (this.hasDialogTarget) {
      this.dialogTarget.addEventListener('click', this.handleBackdropClick.bind(this));
    }
  }

  disconnect() {
    if (this.hasDialogTarget) {
      this.dialogTarget.removeEventListener('click', this.handleBackdropClick.bind(this));
    }
  }

  open() {
    if (this.hasDialogTarget) {
      // Show the dialog using the native showModal method
      this.dialogTarget.showModal();
    }
  }

  dismiss(e) {
    if (this.hasDialogTarget) {
      // Close the dialog using the native close method
      this.dialogTarget.close();
    }
  }

  handleBackdropClick(e) {
    // Only close if clicking on the dialog backdrop (not on dialog content)
    if (e.target === this.dialogTarget) {
      this.dismiss();
    }
  }
}
