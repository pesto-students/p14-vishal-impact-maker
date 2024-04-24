db.movies.find({ release_year: 2010 });
db.movies.find({ genre: "Science Fiction" });
db.movies.find({ director: ObjectId("director_id_1") });
db.movies.find({ actors: ObjectId("actor_id_1") });
db.directors.find({ nationality: "British" });
db.actors.find({ nationality: "American" });
