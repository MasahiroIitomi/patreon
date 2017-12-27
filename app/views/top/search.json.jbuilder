json.array! @creators do |creator|
  json.id creator.id
  json.name creator.user.name
  json.image creator.user.avatar_image
  json.things creator.creating_things
end
