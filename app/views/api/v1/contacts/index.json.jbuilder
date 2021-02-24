json.ignore_nil!

json.array! @people do |person|
  json.email person.email
  json.fullname person.fullname
  json.tags person.tags
end