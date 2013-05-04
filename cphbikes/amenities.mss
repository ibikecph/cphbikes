@parking: #0f0;
@bicycle_parking: #0f0;
@placeholder: #d8194a;

.parking {
  marker-width: 3;
  marker-fill: @parking;
  marker-line-color: darken(@parking, 10%);

  polygon-fill: @parking;
}

.bicycle_parking {
  marker-width: 3;
  marker-fill: @bicycle_parking;
  marker-line-color: darken(@bicycle_parking, 10%);

  polygon-fill: @bicycle_parking;
}

.restaurant,
.fast_food,
.school,
.bench,
.post_box,
.cafe,
.fuel,
.waste_basket,
.place_of_worship,
.public_building,
.pub,
.recycling,
.kindergarten,
.toilets,
.bank,
.bar,
.library,
.atm,
.shelter,
.grave_yard,
.university,
.bus_station,
.pharmacy,
.post_office,
.telephone,
.swimming_pool,
.fire_station,
.theatre,
.cinema,
.fountain,
.hospital,
.drinking_water,
.taxi,
.college,
.bbq,
.townhall,
{
  marker-width: 3;
  marker-fill: @placeholder;
  marker-line-color: darken(@placeholder, 10%);

  polygon-fill: @placeholder;
}