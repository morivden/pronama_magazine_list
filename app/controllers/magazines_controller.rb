class MagazinesController < ApplicationController
  before_action :set_magazine, only: [:show, :edit, :update, :destroy]

  def title
  end

  def index
    # @magazines = Magazine.all
    @search = Magazine.search(params[:q])
    @magazines = @search.result(distinct: true)
  end

  def show
  end

  def new
    @magazine = Magazine.new
  end

  def create
    # 追加に成功 → 薄い本一覧に
    # 追加に失敗 → やり直し
    @magazine = Magazine.new(magazine_params)
    @magazine.save
    # バリデーション
    if @magazine.save
      redirect_to magazines_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    # 更新に成功 → 薄い本情報一覧に
    # 更新に失敗 → やり直し
    if @magazine.update(magazine_params)
      redirect_to magazine_path
    else
      render 'edit'
    end
  end

  def destroy
    @magazine.destroy
    redirect_to magazines_path
  end

  def origin
    @origins = Magazine.select(:origin).order(:origin).uniq.sort
    # @origins = Magazine.select(:id, :origin).order(:origin).uniq
  end

  def author
    @authors = Magazine.select(:id, :author).order(:author).uniq.sort
  end

  def circle
    @circles = Magazine.select(:id, :circle).order(:circle).uniq.sort
  end

  def index_origin
    @origins = Magazine.where(origin: params[:origin])
  end

  private

  def magazine_params
    params[:magazine].permit(:title, :origin, :author, :circle, :qualify, :publication, :printed, :another_info)
  end

  def set_magazine
    @magazine = Magazine.find(params[:id])
  end
end
