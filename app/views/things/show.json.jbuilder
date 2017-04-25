json.partial! "things/thing", thing: @thing
json.images do
  json.array! @thing.images, partial: 'images/image', as: :image if @thing.images.present?
end
