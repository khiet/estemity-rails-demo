class HomesController < ApplicationController
  def index
    @say = foo
  end

  private

  def foo
    'hello world'
  end
end
