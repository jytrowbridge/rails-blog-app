class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    #@tag.taggings(&:destroy)
    @tag.destroy

    flash.notice = "Tag Deleted!"

    redirect_to tags_path
  end
end
