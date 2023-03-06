class ApplicationController < Sinatra::Base
  set default_content_type: "application/json"


  get "/mechanics" do
   mechanics = Mechanic.all
   mechanics.to_json(include: [:reviews, :users])
  end

  get "/mechanics/:id" do
      mechanic = Mechanic.find_by(id: params[:id])
      mechanic.to_json
  end

  post "/mechanics" do
      mechanic = Mechanic.create(
          name: params[:name],
          age: params[:age],
          expertise: params[:expertise],
          location: params[:location],
          tel: params[:tel]
      )
      mechanic.save()
      
  end

  patch "/mechanics/:id" do
      mechanic = Mechanic.find_by(id: params[:id])
      mechanic.update(
          name: params[:name],
          age: params[:age],
          expertise: params[:expertise],
          location: params[:location],
          tel: params[:tel]
      )
      mechanic.to_json

  end

  delete "/mechanics/:id" do
      mechanic = Mechanic.find_by(id: params[:id])
      mechanic.destroy
  end

  get "/reviews" do
      review = Review.all
      review.to_json
  end

  get "/reviews/:id" do
      review = Review.find_by(id: params[:id])
      review.to_json
  end

  post "/reviews" do
      review = Review.create(
          review: params[:review],
          ratings: params[:ratings],
          mechanic_id: params[:mechanic_id],
          user_id: params[:user_id]
          
      )
      review.save()
      
  end

 patch "/reviews/:id" do
  review = Review.find_by(id: params[:id])

  review = Review.update(
      review: params[:review],
      ratings: params[:ratings],
      mechanic_id: params[:mechanic_id],
      user_id: params[:user_id]
  )

  review.to_json

 end

 delete "/reviews/:id" do
  mechanic = Review.find_by(id: params[:id])
  mechanic.destroy
end

get "/users" do
  user = User.all
  user.to_json
end

get "/users/:id" do
  review = User.find_by(id: params[:id])
  review.to_json
end

post "/users" do
  review = User.create(
      name: params[:name]
            
      
  )
  review.save()
  
end

patch "/users/:id" do
  review = User.find_by(id: params[:id])

  review = User.update(
      name: params[:name]
  )

  review.to_json

 end

 delete "/users/:id" do
  mechanic = User.find_by(id: params[:id])
  mechanic.destroy
end


 
end
