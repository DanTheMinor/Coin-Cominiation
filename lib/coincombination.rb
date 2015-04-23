class Float
  define_method(:coin_combination) do
    quarters = 0
    dimes = 0
    nickels = 0
    pennies = 0
    total = self.*(100).to_i()
    until total.<=(24)
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
     "#{quarters} quarters #{dimes} dimes #{nickels} nickels #{pennies} pennies"
  end
end
