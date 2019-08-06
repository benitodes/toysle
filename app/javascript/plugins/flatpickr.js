
import flatpickr from "flatpickr";

const flatpicker = () => {
  const startDate = document.getElementById("booking_start_date")
  console.log(startDate);
  flatpickr(startDate, {
    //here you insert all the options
     mode: "range"
  })
}

export { flatpicker };
