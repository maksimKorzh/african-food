// Import models
const City = require('../models/cities');
const Restaurant = require('../models/restaurants');

// Init router
const express = require('express');
const router = express.Router();

// Init body parser
const bodyParser = require('body-parser');
router.use(bodyParser.json());

// Init database hook
const mongoose = require('mongoose');

// Connect to cloud server
const uri = "mongodb+srv://cmk:342124@africanfood-3lrlo.gcp.mongodb.net/africanfood?retryWrites=true";

// Local connection
//const uri = "mongodb://localhost/africanfood";

var connectionStatus = mongoose.connect(uri, { useNewUrlParser: true }, (err) => {
  if(err){
    throw err;
  }
  console.log("Connected to database successfully!");
});

const db = mongoose.connection;

// Get home page
//router.get('/', (req, res) => res.send('Use localhost:5000/api/'));

// Get cities
router.get('/api/cities', (req, res) => {
  City.getCities((err, cities) => {
    if(err){
      throw err;
    }
    res.json(cities);
  })
});

// Get restaurants
router.get('/api/restaurants', (req, res) => {
  Restaurant.getRestaurants((err, restaurants) => {
    if(err){
      throw err;
    }
    res.json(restaurants);
  })
});

module.exports = router;
