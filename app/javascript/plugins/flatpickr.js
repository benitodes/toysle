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
    // if more than one date is selected by user it includes 'to' in input field
    // if it does include 'to' then user can complete booking, otherwise button is disabled
    if (dateInput.value.includes("to")) {
      button.disabled = false;
      // get the daily price of the toy
      const dailyPrice = document.getElementById("daily-price").value;
      // get the number of days
      const startDateInput = dateInput.value.split(' to ')[0];
      const endDateInput = dateInput.value.split(' to ')[1];
      const startDate = new Date(startDateInput);
      const endDate = new Date(endDateInput);
      const res = Math.abs(startDate - endDate) / 1000;
      const days = Math.floor(res / 86400) + 1;
      // multiply number of days by daily price
      const totalPrice = days * dailyPrice;
      // Insert total price in DOM
      document.getElementById("total_price").innerHTML = totalPrice;

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

