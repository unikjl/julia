const MAXLOOP = 40
const NX = 83
const NY = 30
const width = 1.5
const height = 1.0
const hx = width/NX 
const hy = height/NY
const center = -0.5 + 0.0im

function mandel_BrooksMatelski()      
    for j in NY:-1:1
        for i in 1:NX 
            iter = 0  
            z = c = center+((i-NX/2)*hx+(j-NY/2)*hy*im)*2
        
            for l in 1:MAXLOOP
                z = z^2 + c 
                abs2(z)>2^2 && (iter = l;break)  
            end
            
            if iter > 0 
                print(" ")
            else
                print("*")
            end
        end
        println("")
    end
end

@time mandel_BrooksMatelski()
