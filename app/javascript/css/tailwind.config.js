/** @type {import('tailwindcss').Config} */
module.exports = {
  purge:[
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/javascript/**/*.vue',
    './app/views/clients_mailer/*.html.erb'

  ],
  content: [],
  theme: {
    extend: {},
  },
  plugins: [],
}
