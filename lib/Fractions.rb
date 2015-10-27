require './gcd.rb'

class Fractions
    
    attr_reader :numerador, :denominador
    
    def initialize(num, denom)
        @numerador, @denominador= simplifica(num, denom)
    end
    
    def to_s
        "(#{@numerador}/#{@denominador})"
    end
    
    
    def simplifica(num, denom)
        
        max= gcd(num, denom)
        
        num /= max
        denom /= max 
        
        return num, denom
    end
    
    #funcion minimo comun multiplo
    def mcm(a, b)
        a, b= a.abs, b.abs
        (a / gcd(a, b)) * b
    end
    
    
    #suma
    def suma(num, denom)
        num, denom= simplifica(num, denom)
        if(denom == @denominador)
            @numerador += num
            num, denom= simplifica(@numerador, @denominador)
            
        else
            denom_2= mcm(@denominador, denom)
            num_res= ((denom_2 / @denominador )* @numerador) + ((denom_2 / denom) * num)
            num, denom= simplifica(num_res, denom_2)
        end
        
        return num, denom
    end
    
    
    #resta
    def resta(num, denom)
        num, denom= simplifica(num, denom)
        
        if(denom == @denominador)
            @numerador -= num
            num, denom= simplifica(@numerador, @denominador)
            
        else
            denom_2= mcm(@denominador, denom)
            num_res= ((denom_2 / @denominador )* @numerador) - ((denom_2 / denom) * num)
            num, denom= simplifica(num_res, denom_2)
        end
        
        return num, denom
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
        
        return denom, num
    end
    
    
    
    
    
    
    
end