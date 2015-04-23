class Float
  define_method(:coin_combination) do
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    result = []
    total = self.*(100).to_i()
    until total.<=(24)
      if quarters.>=3
        result.push("Ran out of quarters, your change is")
        break
      end
      total = total.-(25)
      quarters +=1
    end
    until total.<=(9)
      total = total.-(10)
      dimes +=1
    end
    until total.<=(4)
      total = total.-(5)
      nickels +=1
    end
    until total.==(0)
      total = total.-(1)
      pennies +=1
    end
    if(quarters > 0)
      result.push("#{quarters} quarters")
    end
    if(dimes > 0)
      result.push("#{dimes} dimes")
    end
    if(nickels > 0)
      result.push("#{nickels} nickels")
    end
    if(pennies > 0)
      result.push("#{pennies} pennies")
    end
    result.join(" ")
  end
end
