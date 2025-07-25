db.restaurantes.find().pretty();
db.restaurantes.find({},{restaurant_id:1,name:1,borough:1,cuisine:1}).pretty();
db.restaurantes.find({},{_id: 0,restaurant_id:1,name:1,borough:1,cuisine:1}).pretty();
db.restaurantes.find({},{_id: 0,restaurant_id:1,name:1,borough:1,cuisine:1,"address.zipcode":1}).pretty();
db.restaurantes.find({borough:"Bronx"}).pretty();
db.restaurantes.find({borough:"Bronx"}).limit(5).pretty();
db.restaurantes.find({borough:"Bronx"}).skip(5).limit(5).pretty();
db.restaurantes.find({"grades.score":{$gt:90}}).pretty();
db.restaurantes.find({grades:{$elemMatch:{score:{$gt:80,$lt:100}}}}).pretty();
db.restaurantes.find({"address.coord.0":{$lt:-95.754168}}).pretty();
db.restaurantes.find({cuisine:{$ne:"American"},"grades.score":{$gt:70},"address.coord.1":{$lt:-65.754168}}).pretty();
db.restaurantes.find({cuisine:{$ne:"American"},"grades.score":{$gt:70},"address.coord.0":{$lt:-65.754168}}).pretty();
db.restaurantes.find({cuisine:{$ne:"American"},grades:{$elemMatch:{grade:"A"}},borough:{$ne:"Brooklyn"}}).sort({cuisine:-1}).pretty();
db.restaurantes.find({name:{$regex:/^Wil/}},{restaurant_id:1,name:1,borough:1,cuisine:1,_id:0}).pretty();
db.restaurantes.find({name:{$regex:/ces$/}},{restaurant_id:1,name:1,borough:1,cuisine:1,_id:0}).pretty();
db.restaurantes.find({name:{$regex:/Reg/}},{restaurant_id:1,name:1,borough:1,cuisine:1,_id:0}).pretty();
db.restaurantes.find({borough:"Bronx",cuisine:{$in:["American","Chinese"]}}).pretty();
db.restaurantes.find({borough:{$in:["Staten Island","Queens","Bronx","Brooklyn"]}},{_id:0,restaurante_id:1,name:1,borough:1,cuisine:1}).pretty();
db.restaurantes.find({borough:{$nin:["Staten Island","Queens","Bronx","Brooklyn"]}},{_id:0,restaurante_id:1,name:1,borough:1,cuisine:1}).pretty();