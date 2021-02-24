if @person
  json.fullname @person.fullname
  json.email    @person.email
  json.tags     @person.tags.join(',')
end