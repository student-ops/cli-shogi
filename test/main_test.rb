require 'minitest/autorun'
require_relative '../lib/baxn.rb' 

class KomaTest < Minitest::Test
    # def test_move
    #     hu =  Koma.new(0)
    #     assert [-1,0],hu.move(hu.type)
    # end
    
    def test_baxn
        baxn = Baxn.new
        baxn.command(5,8,7)
        baxn.render
    end
    # def test_change
    #     hu = Koma.new('桂')
    #     assert '歩',hu.name_change(hu.type)
    # end 9 = 0 8 = 1 ... 1=8
    #7六歩　= 5,2,1
    #5八飛車　=7,4,7
end