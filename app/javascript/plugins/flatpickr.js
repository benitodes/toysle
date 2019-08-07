import flatpickr from "flatpickr";

const flatpicker = () => {

  // fetch user input
  const date = document.getElementById("booking_start_date")
  // split string and assign it to start date and end date variables
  const startDateInput = date.value.split(' to ')[0];
  const endDateInput = date.value.split(' to ')[1];

  console.log(date);

  if (date) {
    // toy-booking-dates is id of div around booking form
    const unavailableDates = JSON.parse(document.querySelector('#toy-booking-dates').dataset.unavailable)

  flatpickr(date, {
    // insert all flatpickr options
    mode: "range",
    minDate: "today",
    disable: unavailableDates,
    dateFormat: "Y-m-d"
  });
  }
}

export { flatpicker }

