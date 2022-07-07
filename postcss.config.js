const { css } = require('@rails/webpacker/package/rules');
const { javascript } = require('webpack');
const tailwindConfig = require('./app/javascript/css/tailwind.config');

module.exports = {
  plugins: [
    require('postcss-import'),
    require("tailwindcss")('./app/javascript/css/tailwind.config.js'),
    require("autoprefixer"),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}
