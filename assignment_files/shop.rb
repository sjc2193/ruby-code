class Shop
  def initialize
    products=[]
    i=0
    file="data.txt"
    f=File.open(file, "r")

    f.each_line do |line|
      if line!=""
        data=line.split
        puts"#{data[0]} - #{data[1]} - #{data[2]}"
        if (data[0]!="")
          name=data[0]
        else
          next
        end

        if (data[1]!="")
          cost=data[1].to_f
        else
          cost=no_data(1,data[0])
        end

        if (data[2]!="")
          stock=data[2]
        else
          stock=no_data(2,data[0])
        end
          puts"#{i} - #{name} - #{cost} - #{stock}"
        products[i]=new Products(name,cost,stock)

          i+=1
    end
    f.close
    end
  end

  def no_data(code,name)
    if(code==1)
      puts "Please enter a price for product: #{name}"
      stdout.flush
      return chomp()
    else
      puts "Please enter Stock for product: #{name}"
      stdout.flush
      return chomp()
    end

  end
end