import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import "flatpickr/dist/themes/airbnb.css"

flatpickr("#range_start", {
  altInput: true,
  minDate: "today",
  dateFormat: "Y-m-d",
      "locale": {
      "firstDayOfWeek": 1 // start week on Monday
      },
  plugins: [new rangePlugin({ input: "#range_end"})]
})
