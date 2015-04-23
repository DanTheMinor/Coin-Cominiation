class Float
  define_method(:coin_combination) do
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    total = self
    until total.<=(0.241)
      total = total.-(0.25)
      quarters +=1
    end
    until total.<=(0.091)
      total = total.-(0.10)
      dimes +=1
    end
    until total.<=(0.041)
      total = total.-(0.05)
      nickels +=1
    end
    until total.<(0.0001)
      total = total.-(0.01)
      pennies +=1
    end
     quarters.to_s() + " quarters " + dimes.to_s() + " dimes " + nickels.to_s() + " nickels " + pennies.to_s() + " pennies"
  end
end
