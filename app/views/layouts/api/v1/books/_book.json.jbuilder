json.title obj.title
json.available obj.available
json.author do
  json.author_id obj.author_id
  json.name obj.author.name
end
