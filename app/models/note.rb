class Note < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  ############################################################################
  # Association
  ############################################################################
  # User(devise)
  belongs_to :user
  # ActiveStorage
  #has_one_attached :image
  has_many_attached :images
  # ActiveHash
  belongs_to :looks_clear
  belongs_to :looks_color
  belongs_to :looks_foam
  belongs_to :aroma_malt
  belongs_to :aroma_hop
  belongs_to :aroma_ester
  belongs_to :aroma_fruit
  belongs_to :aroma_other
  belongs_to :flavor_body
  belongs_to :flavor_carbonation
  belongs_to :flavor_malt
  belongs_to :flavor_hop
  belongs_to :flavor_other

  ############################################################################
  # Validation
  ############################################################################

  # 外観
  #validates :looks_clear_id, numericality: { other_than: 0, message: "can't be blank" }
  #validates :looks_color_id, numericality: { other_than: 0, message: "can't be blank" }
  #validates :looks_foam_id,  numericality: { other_than: 0, message: "can't be blank" }
  # アロマ
  #validates :aroma_malt_id,  numericality: { other_than: 0, message: "can't be blank" }
  #validates :aroma_hop_id,   numericality: { other_than: 0, message: "can't be blank" }
  #validates :aroma_ester_id, numericality: { other_than: 0, message: "can't be blank" }
  #validates :aroma_fruit_id, numericality: { other_than: 0, message: "can't be blank" }
  #validates :aroma_other_id, numericality: { other_than: 0, message: "can't be blank" }
  #validates :flavor_body_id, numericality: { other_than: 0, message: "can't be blank" }
  # フレーバー
  #validates :flavor_carbonation_id, numericality: { other_than: 0, message: "can't be blank" }
  #validates :flavor_malt_id,        numericality: { other_than: 0, message: "can't be blank" }
  #validates :flavor_hop_id,         numericality: { other_than: 0, message: "can't be blank" }
  #validates :flavor_other_id,       numericality: { other_than: 0, message: "can't be blank" }
  
  FILE_NUMBER_LIMIT = 3

  validate :validate_number_of_files

  private

  def validate_number_of_files
    return if images.length <= FILE_NUMBER_LIMIT
    errors.add(:images, "に添付できる画像は#{FILE_NUMBER_LIMIT}件までです。")
  end
end
