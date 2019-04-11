# Create cuisines collection
mongoimport -d africanfood -c cuisines cuisines.json --jsonArray

# Create dietaries collection
mongoimport -d africanfood -c dietaries dietaries.json --jsonArray

# Create vendors collection
mongoimport -d africanfood -c vendors vendors.json --jsonArray

# Create services collection
mongoimport -d africanfood -c services services.json --jsonArray

# Create cities collection
mongoimport -d africanfood -c cities cities.json --jsonArray