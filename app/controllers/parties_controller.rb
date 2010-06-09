class PartiesController < ApplicationController

  hobo_model_controller

  auto_actions :all
def index
hobo_index Party.apply_scopes(:search => [params[:search],:name,:date],
:order_by => parse_sort_param(:name, :date, :count))
end
end
