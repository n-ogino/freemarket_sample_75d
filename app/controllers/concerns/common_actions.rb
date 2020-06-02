module CommonActions
  extend ActiveSupport::Concern

  def set_categories
    @categories = Category.where(params[:id])
    @category_children1 = Category.where(ancestry: 1)
    @category_children2 = Category.where(ancestry: 200)
    @category_children3 = Category.where(ancestry: 346)
    @category_children4 = Category.where(ancestry: 481)
    @category_children5 = Category.where(ancestry: 625)
    @category_children6 = Category.where(ancestry: 685)
    @category_children7 = Category.where(ancestry: 798)
    @category_children8 = Category.where(ancestry: 898)
    @category_children9 = Category.where(ancestry: 984) 
  end

end