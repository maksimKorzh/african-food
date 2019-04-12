# Create cuisines collection
mongoimport --host africanfood-shard-0/africanfood-shard-00-00-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-01-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-02-3lrlo.gcp.mongodb.net:27017 --ssl --username cmk --password '342124' --authenticationDatabase admin --db africanfood --collection cuisines --drop --type json --file cuisines.json --jsonArray

# Create dietaries collection
mongoimport --host africanfood-shard-0/africanfood-shard-00-00-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-01-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-02-3lrlo.gcp.mongodb.net:27017 --ssl --username cmk --password '342124' --authenticationDatabase admin --db africanfood --collection cities --drop --type json --file cities.json --jsonArray

# Create vendors collection
mongoimport --host africanfood-shard-0/africanfood-shard-00-00-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-01-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-02-3lrlo.gcp.mongodb.net:27017 --ssl --username cmk --password '342124' --authenticationDatabase admin --db africanfood --collection dietaries --drop --type json --file dietaries.json --jsonArray

# Create services collection
mongoimport --host africanfood-shard-0/africanfood-shard-00-00-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-01-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-02-3lrlo.gcp.mongodb.net:27017 --ssl --username cmk --password '342124' --authenticationDatabase admin --db africanfood --collection services --drop --type json --file services.json --jsonArray

# Create cities collection
mongoimport --host africanfood-shard-0/africanfood-shard-00-00-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-01-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-02-3lrlo.gcp.mongodb.net:27017 --ssl --username cmk --password '342124' --authenticationDatabase admin --db africanfood --collection vendors --drop --type json --file vendors.json --jsonArray

# Create restaurants collection
mongoimport --host africanfood-shard-0/africanfood-shard-00-00-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-01-3lrlo.gcp.mongodb.net:27017,africanfood-shard-00-02-3lrlo.gcp.mongodb.net:27017 --ssl --username cmk --password '342124' --authenticationDatabase admin --db africanfood --collection restaurants --drop --type json --file restaurants.json --jsonArray