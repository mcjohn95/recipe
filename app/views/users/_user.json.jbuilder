json.extract! user, :id, :password_digest, :typeOfUser, :image, :userBio, :emailAddress, :nameOfUser, :created_at, :updated_at
json.url user_url(user, format: :json)