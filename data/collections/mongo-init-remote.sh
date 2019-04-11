# Create cuisines collection
mongoimport --host africanfood-shard-0/africanfood-shard-00-00-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-01-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-02-3lrlo.gcp.mongodb.net:27017 --ssl --username cmk --password '342124' --authenticationDatabase admin --db africanfood --collection cuisines --type json --file cuisines.json --jsonArray
# Create dietaries collection
#mongoimport --uri "mongodb://cmk:<password>@africanfood-3lrlo.gcp.mongodb.net/africanfood?retryWrites=true" -c dietaries dietaries.json --jsonArray

# Create vendors collection
#mongoimport --uri "mongodb://cmk:<password>@africanfood-3lrlo.gcp.mongodb.net/africanfood?retryWrites=true" -c vendors vendors.json --jsonArray

# Create services collection
#mongoimport --uri "mongodb://cmk:<password>@africanfood-3lrlo.gcp.mongodb.net/africanfood?retryWrites=true" -c services services.json --jsonArray

# Create cities collection
#mongoimport --uri "mongodb://cmk:<password>@africanfood-3lrlo.gcp.mongodb.net/africanfood?retryWrites=true" -c cities cities.json --jsonArray
