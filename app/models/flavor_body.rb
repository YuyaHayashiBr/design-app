class FlavorBody < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'ライト' },
    { id: 2, name: 'ミディアム' },
    { id: 3, name: 'フル' }
  ]

  include ActiveHash::Associations
  has_many :notes
end