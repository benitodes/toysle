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
    minRange: 2,
    disable: unavailableDates,
    dateFormat: "Y-m-d"
  });
  }
}

const minimumSelection = () => {
  // select flatpickr
  const dateInput = document.querySelector('#booking_start_date')
  // select book button
  const button = document.querySelector('.btn-checkout')
  // add event listener to calendar
  dateInput.addEventListener("change", (e) => {
    console.log('test')
    // if more than one date is selected by user it includes 'to' in input field
    // if it does include 'to' then user can complete booking, otherwise button is disabled
    if (dateInput.value.includes("to")) {
      button.disabled = false;
    } else {
      button.disabled = true;
    }
    });
}

// function to display calendar in filterbar on toys page
$("#rangeDate").flatpickr({
    mode: 'range',
    dateFormat: "Y-m-d"
});

// exports

export { flatpicker }
export { minimumSelection }

