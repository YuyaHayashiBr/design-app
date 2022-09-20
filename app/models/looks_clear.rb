class LooksClear < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'クリア' },
    { id: 2, name: 'ややかすんでいる' },
    { id: 3, name: '濁っている' }
  ]

  include ActiveHash::Associations
  has_many :notes

end