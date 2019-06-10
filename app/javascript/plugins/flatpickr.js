import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"

flatpickr("#date-picker", {
  mode: "multiple",
  dateFormat: "Y-m-d"
})
