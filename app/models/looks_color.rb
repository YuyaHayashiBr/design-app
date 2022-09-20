class LooksColor < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'ライト' },
    { id: 2, name: 'ミドル' },
    { id: 3, name: 'ダーク' }
  ]

  include ActiveHash::Associations
  has_many :notes

end