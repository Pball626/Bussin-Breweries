class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :text, :name
  belongs_to :brewery
  def name
    object.user.name
  end
end
