# Use of an Array
#
# films = ["Star Wars", "Jaws", "Raiders of the Lost Ark", "Fast and Furious"]
#
# def word_search(string, words_to_search)
#   for words in string
#     return "Searched string #{words_to_search} found" if words == words_to_search
#   end
#
#   return "Searched string #{words_to_search} not found"
# end
#
# puts word_search(films, "Jaws")
# puts word_search(films, "Speed")


# Use of a Hash

films =
  {
    "Star Wars" => "George Lucas",
    "Jaws" => "Steven Speilberg",
    "The Hobbit" => "Peter Jackson",
    "Kill Bill" => "Quentin Tarantino"
    }

def output_hash(film)
  # Use each to enumerate the pairs in the hash.
    film.each do |key, value|
    # Display the key and value.
    print "    Film: ", key, "\n"
    print "Director: ", value, "\n"
  end
end

output_hash(films)


# searching data in a program
#
# def pets_by_breed(pet_shop, breed)
#   matches = []
#   for pet in pet_shop[:pets]
#     matches << pet if(pet[:breed] == breed)
#   end
#   return matches
# end
#
# def test_all_pets_by_breed__found
#   pets = pets_by_breed(@pet_shop, "British Shorthair")
#   assert_equal(2, pets.count)
# end
