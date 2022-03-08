# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
movies = Movie.create([
    {
        name: "Star Wars: A New Hope",
        image_url: "https://static.wikia.nocookie.net/starwars/images/0/06/Star_Wars_Style_A_poster_1977.jpg/revision/latest?cb=20100708051712"
    },
    {
        name: "Die Hard",
        image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.imdb.com%2Ftitle%2Ftt0095016%2F&psig=AOvVaw2TE6dj7gxJCfqP2Nuh1Onh&ust=1646228989214000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCKjYgYSHpfYCFQAAAAAdAAAAABAD"
    },
    {
        name: "Pulp Fiction",
        image_url: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.filmaffinity.com%2Fes%2Ffilm160882.html&psig=AOvVaw1ArhcSyHghZbttQ8OvAGIQ&ust=1646229018422000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMjGlJGHpfYCFQAAAAAdAAAAABAD"
    },
    {
        name: "Once Upon a Time in Hollywood",
        image_url: "https://m.media-amazon.com/images/I/815BZqTNrsL._AC_SY606_.jpg"
    }
])

reviews = Review.create([
    {
        title: 'Amazing! Best movie ever!',
        description: "Amazing! A timeless classic that doesn't get any better!",
        score: 5,
        movie: movies.first
    },
    {
        title: 'Too cheesy!',
        description: "I think this movie is overhyped!",
        score: 2,
        movie: movies.first
    }
])

actors = Actor.create([
    {
        name: "Mark Hamill",
        image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT0W1rBFC1zAjS3amBGX6C3diI8zBZOeVW9oIphVXmIM4anleEO",
        age: "70",
        movie_ids: 1
    },
    {
        name: "Harrison Ford",
        image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS77p6ogwyz9a8J2BkxfXhuFN9HZ2cMQOQsUZbJL02Q2oWxRO6z",
        age: "79",
        movie_ids: 1
    },
    {
        name: "Carrie Fisher",
        image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR9PvSl232PSP3qMJe63g7hiIGb_kjzXiWaugTQMVhRmVc-G5fK",
        age: "60",
        movie_ids: 1
    },
    {
        name: "Bruce Willis",
        image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSItxlkc_a8e3O3T59cqB6Uw5iPRY5bJlmr8ZUt0KRPLObKcdTd",
        age: "66",
        movie_ids: 2
    },
    {
        name: "Alan Rickman",
        image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSt4mw6xhUOXy26BdzeL8EUsORbDT031D3v0bsdsQY9MzGb-6Qx",
        age: "69",
        movie_ids: 2
    },
    {
        name: "Bonnie Bedelia",
        image_url: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTUGuWE7D3nPjvRY6X1lNf3wahsF5j7DyK3-WwlqhFEBu_GXcEl",
        age: "73",
        movie_ids: 2
    },
])
