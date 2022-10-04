TYPE = { 
    0 => '　',
    1 => '歩',
    2 => '香',
    3 => '桂',
    4 => '銀',
    5 => '金',
    6 => '角',
    7 => '飛',
    8 => '玉',
}
class Baxn
    BAXN = [
        [2,3,4,5,8,5,4,3,2],
        [0,7,0,0,0,0,0,6,0],
        Array.new(9,1),
        Array.new(9,0),
        Array.new(9,0),
        Array.new(9,0),
        Array.new(9,1),
        [0,6,0,0,0,0,0,7,0],
        [2,3,4,5,8,5,4,3,2],
    ] 
    def initialize
        @turn  = 0
        @baxn = BAXN
    end
    def state_now
        p @baxn
    end
    def ito_name(type)
        NAME[type]
    end
    def command(hegiht,width,type)
        @baxn[hegiht][width] = type
    end
    def render()
        9.times do
            print " ー"
        end
        print "\n"
        @baxn.each do |row|
            print "|"
            row.each do |cell|
                print ito_name(cell)
                print "|"
            end
            print "\n"
            9.times do
                print " ー"
            end
            print "\n"
        end
    end
    def serch
    end
    def delete
    end
    def command(fir,sec,type){
        delete(serch(fir,sec,type))
        @baxn[fir][sec] = type;

    }
end