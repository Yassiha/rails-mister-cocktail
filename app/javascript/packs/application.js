import 'bootstrap';
/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

console.log('Hello World from Webpacker')

import { initSweetalert, initSweetalert2 } from '../plugins/init_sweetalert';

initSweetalert('#add-ingredient', {
  title: "Adding Ingredient",
  text: "Mixing and making magic stuff",
  icon: "success"
});

initSweetalert2('#add-cocktail', {
  title: "Yay",
  text: "Let's do some magic!",
  icon: "success"
}, (value) => {
  console.log(value);
});

import 'select2/dist/css/select2.css';
import { initSelect2 } from '../components/init_select2';

initSelect2();
