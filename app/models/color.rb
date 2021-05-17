class Color < ActiveHash::Base
  self.data = [
    { color: '赤', name: '赤' },
    { color: '青', name: '青' },
    { color: '緑', name: '緑' },
    { color: '黄色', name: '黄色' },
    { color: '白', name: '白' },
    { color: '黒', name: '黒' },
    { color: 'シルバー', name: 'シルバー' },
    { color: 'ゴールド', name: 'ゴールド' }
  ]
end