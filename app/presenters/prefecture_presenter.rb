class PrefecturePresenter < ModelPresenter
  delegate :prefecture, :city, to: :objrct
  
  def prefecture
    object.prefecture
  end
  
  def city
    objects.city
  end
end