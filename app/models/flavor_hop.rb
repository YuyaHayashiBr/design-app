class FlavorHop < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '低い' },
    { id: 2, name: '中程度' },
    { id: 3, name: '高い' }
  ]

  include ActiveHash::Associations
  has_many :notes
end