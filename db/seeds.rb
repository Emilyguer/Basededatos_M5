# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Importar la biblioteca Faker y definir un bucle que se ejecutará 100 veces
10.times do |i|
  # Crear una instancia de la clase "Serie" con atributos generados por Faker
    Movie.create(
      name: Faker::Movie.name, 
      synopsis: Faker::Movie.quote, 
      director: Faker::Name.name)
  end


# Importar la biblioteca Faker y definir un bucle que se ejecutará 100 veces
10.times do |i|
  # Crear una instancia de la clase "Serie" con atributos generados por Faker
    Serie.create(
      name: Faker::Movie.name, 
      synopsis: Faker::Movie.quote, 
      director: Faker::Name.name)
  end


# Importar la biblioteca Faker y definir un bucle que se ejecutará 100 veces
10.times do |i|
  # Crear una instancia de la clase "Serie" con atributos generados por Faker
    DocumentaryFilm.create(
      name: Faker::Movie.name, 
      synopsis: Faker::Movie.quote, 
      director: Faker::Name.name)
  end