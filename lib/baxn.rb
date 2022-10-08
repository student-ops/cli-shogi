#先手一人称視点
TYPE = [
    '　',
    '歩',
    '香',
    '桂',
    '銀',
    '金',
    '角',
    '飛',
    '玉',
]
MOVE = [
    [],
    [[1,0]],
    [[1,0],[2,0]],[3,0],[4,0],[5,0],[6,0],[7,0],[8,0],
    [[2,-1],[2,1]],
    [[1,-1],[1,0],[1,1],[-1,-1],[-1,1]],
    [[1,-1],[1,0],[1,1],[0,-1],[0,1],[-1,0]],
    [[1,1],[-1,1]],
    [[0,1],[0,2],[0,3],[0,4],[0,5],[0,6],[0,7],[0,8],[0,9],[-1,0],[-2,0],[-3,0],[-4,0],[-5,0],[-6,0]]
]
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
        TYPE[type]
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
    def serch_koma(fir,sec,type)
        MOVE[type].each do |n|
            col = fir + n[1]
            row = sec + n[0]
            if @baxn[col][row] == type then
                puts col,row
                puts "serched"
                puts col,row
                return col,row
            end
        end
    end
    def command(num,kaxn,type)
        col = 9 - num
        row = kaxn-1
        puts "command col row"
        puts col,row
        tmp = serch_koma(col,row,type)
        @baxn[tmp[0]][tmp[1]] = 0
        @baxn[row][col] = type
    end
end