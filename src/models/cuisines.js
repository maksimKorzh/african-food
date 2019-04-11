//Import mongoose
const mongoose = require('mongoose');

// Remove annoying deprication warning
mongoose.set('useFindAndModify', false);

// Define city schema
const cuisineSchema = mongoose.Schema({
  city:{
    type: String,
    require: true
  },
  create_date:{
    type: Date,
    default: Date.now
  }
});

// Init City object
const City = module.exports = mongoose.model('City', citySchema);

// Get cities
module.exports.getCities = (callback, limit) => {
  City.find(callback).limit(limit);
}
