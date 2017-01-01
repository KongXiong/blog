  class AuthorController < ApplicationController
    before_action :authenticate_author!

    layout 'author'

  end
