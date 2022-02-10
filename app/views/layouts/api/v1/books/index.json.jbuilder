json.books @books do |book|
  json.partial "book", obj: book
end
