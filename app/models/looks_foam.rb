class LooksFoam < ActiveHash::Base
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: '少ない' },
    { id: 2, name: '普通' },
    { id: 3, name: '豊か' }
  ]

  include ActiveHash::Associations
  has_many :notes

end