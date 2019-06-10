import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css"
import { French } from 'flatpickr/dist/l10n/fr.js';

flatpickr("#date-picker", {
  minDate: "today",
  dateFormat: "d-m-Y",
  "locale": French
})
