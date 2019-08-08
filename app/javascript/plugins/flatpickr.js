import flatpickr from "flatpickr";

// function to display calendar on toy show page

const flatpicker = () => {

  // fetch user input
  const date = document.getElementById("booking_start_date")
  // split string and assign it to start date and end date variables

  if (date) {
    const startDateInput = date.value.split(' to ')[0];
    const endDateInput = date.value.split(' to ')[1];

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


// function to display calendar in filterbar on toys page

$("#rangeDate").flatpickr({
    mode: 'range',
    dateFormat: "Y-m-d"
});

export { flatpicker }

