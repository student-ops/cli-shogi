class Koma

        MOVE = [
            [-1,0]
        ]
        attr_reader :type ,:name
        def initialize(type)
            @type_num =   NAME[type]
            @type = type 
        end
        def move()
            @move = MOVE[@type]
        end

end