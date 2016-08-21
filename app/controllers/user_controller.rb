class UsersController < ApplicationController

  #Index Controller
  get "/users" do
    erb :"/users/index"
  end

  #New Item Controllers
  get "/users/new" do
    erb :"/users/new"
  end

  post "/users" do
    "Create a new item"

    redirect "/users"
  end

  #Show Item Controller
  get "/users/:slug" do
    erb :"/users/show"
  end

  #Edit Item Controller
  get "/users/:slug/edit" do
    erb :"/users/edit"
  end

  patch "/users" do
    "Edits an individual item"

    #redirect "/users/:slug" TODO: update ":slug" with the item"s :ID and uncomment
  end

  #Delete Item Controller
  delete "/users/:slug/delete" do
    "Deletes an individual item"

    redirect "/users"
  end
end
