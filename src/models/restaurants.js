//Import mongoose
const mongoose = require('mongoose');

// Remove annoying deprication warning
mongoose.set('useFindAndModify', false);

// Define city schema
const restaurantSchema = mongoose.Schema({
  name:{
    type: String,
    require: true
  },

  description:{
    type: String,
  },

  city:{
    type: String,
    require: true
  },

  locations:{
    type: String,
  },

  services:{
    type: String,
  },

  service_description:{
    type: String,
  },

  create_date:{
    type: Date,
    default: Date.now
  }
});

// Init City object
const Restaurant = module.exports = mongoose.model('Restaurant', restaurantSchema);

// Get cities
module.exports.getRestaurants = (callback, limit) => {
  Restaurant.find(callback).limit(limit);
}
