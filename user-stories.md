# User Stories

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Objects           Messages
User              
Bike              is_working?
Docking_station   release

Bike <-- is_working? --> true / false
Docking_station <-- release --> Bike
