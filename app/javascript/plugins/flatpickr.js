import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {});
}

export { initFlatpickr };

// if we want to adapt the way the date is displayed, we need to adapt it here
