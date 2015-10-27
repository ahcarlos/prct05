class Fractions
    
    attr_reader :x, :y
    
    def initialize(num, denom)
        mcd= gcd(num, denom)
        @numerador= num / mcd
        @denominador= denom / mcd
    end
    
    def to_s
        "#{@numerador} / #{@denominador}"
    end
    
    
    #funcion maximo comun divisor
    def gcd(u, v)
        u, v= u.abs, v.abs
        while v != 0
            u, v= v, u % v
        end
        u
    end
    
    #funcion minimo comun multiplo
    def mcm(a, b)
        a, b= a.abs, b.abs
        (a / gcd(a, b)) * b
    end
    
    
    #retornan el valor del numerador y el denominador (geters)
    def num
        return @numerador
    end
    
    def denom
        return @denominador
    end
    
    #suma
    def suma(num, denom)
        if(denom == @denominador)
            @numerador += num
        else
            denom_2= mcm(@denominador, denom)
            num_res= ((denom_2 / @denominador )* @numerador) + ((denom_2 / denom) * num)
        end
        
        return num_res
    end
    
    #resta
    def resta(num, denom)
        if(@denominador == denom)
            @numerador -= num
        else
            denom_2= mcm(@denominador, denom)
            num_res= ((denom_2 / @denominador) * @numerador) - ((denom_2 / denom) * num)
        end
        
        return num_res
    end
    
    def producto(num, denom)
        num *= @numerador
        denom *= @denominador
        
        return num, denom
    end
    
    #division
    def division(num, denom)
        num *= @denominador
        denom *= @numerador
        
        return num, denom
    end
    
end