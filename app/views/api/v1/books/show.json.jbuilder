json.title @book.title
json.publishdate @book.publishdate
json.available @book.available
json.rating @book.rating
json.author do
  json.name @book.author.name
  json.alive @book.author.deceased
end
