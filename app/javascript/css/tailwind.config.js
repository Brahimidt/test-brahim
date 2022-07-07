/** @type {import('tailwindcss').Config} */
module.exports = {
  purge:[
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/javascript/**/*.vue'

  ],
  content: [],
  theme: {
    extend: {},
  },
  plugins: [],
}
