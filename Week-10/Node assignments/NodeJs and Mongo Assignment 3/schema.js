use MovieDB

db.createCollection("movies")
db.createCollection("directors")
db.createCollection("actors")

// Movies Collection Schema and Sample Data
db.movies.insertMany([
    { 
        title: "Inception", 
        release_year: 2010, 
        genre: "Science Fiction",
        director: ObjectId("director_id_1"),
        actors: [ObjectId("actor_id_1"), ObjectId("actor_id_2")]
    },
    { 
        title: "The Dark Knight", 
        release_year: 2008, 
        genre: "Action",
        director: ObjectId("director_id_1"),
        actors: [ObjectId("actor_id_3"), ObjectId("actor_id_4")]
    },
    { 
        title: "The Matrix", 
        release_year: 1999, 
        genre: "Science Fiction",
        director: ObjectId("director_id_2"),
        actors: [ObjectId("actor_id_5"), ObjectId("actor_id_6")]
    },
    { 
        title: "Interstellar", 
        release_year: 2014, 
        genre: "Science Fiction",
        director: ObjectId("director_id_1"),
        actors: [ObjectId("actor_id_1"), ObjectId("actor_id_7")]
    },
    { 
        title: "Pulp Fiction", 
        release_year: 1994, 
        genre: "Crime",
        director: ObjectId("director_id_3"),
        actors: [ObjectId("actor_id_8"), ObjectId("actor_id_9")]
    },
    { 
        title: "The Shawshank Redemption", 
        release_year: 1994, 
        genre: "Drama",
        director: ObjectId("director_id_4"),
        actors: [ObjectId("actor_id_10"), ObjectId("actor_id_11")]
    },
    { 
        title: "Forrest Gump", 
        release_year: 1994, 
        genre: "Drama",
        director: ObjectId("director_id_5"),
        actors: [ObjectId("actor_id_12"), ObjectId("actor_id_13")]
    },
    { 
        title: "The Godfather", 
        release_year: 1972, 
        genre: "Crime",
        director: ObjectId("director_id_6"),
        actors: [ObjectId("actor_id_14"), ObjectId("actor_id_15")]
    },
    { 
        title: "Fight Club", 
        release_year: 1999, 
        genre: "Drama",
        director: ObjectId("director_id_7"),
        actors: [ObjectId("actor_id_16"), ObjectId("actor_id_17")]
    },
    { 
        title: "The Lord of the Rings: The Fellowship of the Ring", 
        release_year: 2001, 
        genre: "Fantasy",
        director: ObjectId("director_id_8"),
        actors: [ObjectId("actor_id_18"), ObjectId("actor_id_19")]
    }
]);

// Directors Collection Schema and Sample Data
db.directors.insertMany([
    {
        name: "Christopher Nolan",
        nationality: "British",
        movies_directed: [ObjectId("movie_id_1"), ObjectId("movie_id_2"), ObjectId("movie_id_4")]
    },
    {
        name: "Lana Wachowski",
        nationality: "American",
        movies_directed: [ObjectId("movie_id_3")]
    },
    {
        name: "Quentin Tarantino",
        nationality: "American",
        movies_directed: [ObjectId("movie_id_5")]
    },
    {
        name: "Martin Scorsese",
        nationality: "American",
        movies_directed: [ObjectId("movie_id_6")]
    },
    {
        name: "Steven Spielberg",
        nationality: "American",
        movies_directed: [ObjectId("movie_id_7")]
    }
]);

// Actors Collection Schema and Sample Data
db.actors.insertMany([
    {
        name: "Leonardo DiCaprio",
        nationality: "American",
        movies_actedin: [ObjectId("movie_id_1"), ObjectId("movie_id_4")]
    },
    {
        name: "Joseph Gordon-Levitt",
        nationality: "American",
        movies_actedin: [ObjectId("movie_id_1")]
    },
    {
        name: "Christian Bale",
        nationality: "British",
        movies_actedin: [ObjectId("movie_id_2")]
    },
    {
        name: "Heath Ledger",
        nationality: "Australian",
        movies_actedin: [ObjectId("movie_id_2")]
    },
    {
        name: "Keanu Reeves",
        nationality: "Canadian",
        movies_actedin: [ObjectId("movie_id_3")]
    },
    {
        name: "Carrie-Anne Moss",
        nationality: "Canadian",
        movies_actedin: [ObjectId("movie_id_3")]
    },
    {
        name: "John Travolta",
        nationality: "American",
        movies_actedin: [ObjectId("movie_id_5")]
    },
    {
        name: "Samuel L. Jackson",
        nationality: "American",
        movies_actedin: [ObjectId("movie_id_5")]
    }
]);


