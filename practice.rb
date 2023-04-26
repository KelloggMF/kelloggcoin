# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

ben_wallet = 0
brian_wallet = 0
evan_wallet = 0
anthony_wallet = 0
index = 0

loop do
  if index == blockchain.size
    break
  end

  sender = blockchain[index]["from_user"]
  banker = blockchain[index]["to_user"]
  amount = blockchain[index]["amount"]

  if sender == "ben"
    ben_wallet = ben_wallet - amount
  end

  if banker == "ben"
    ben_wallet = ben_wallet + amount
  end

  if sender == "brian"
    brian_wallet = brian_wallet - amount
  end

  if banker == "brian"
    brian_wallet = brian_wallet + amount
  end

  if sender == "evan"
    evan_wallet = evan_wallet - amount
  end

  if banker == "evan"
    evan_wallet = evan_wallet + amount
  end

  if sender == "anthony"
    anthony_wallet = anthony_wallet - amount
  end

  if banker == "anthony"
    anthony_wallet = anthony_wallet + amount
  end

  index =  index + 1
end

puts "Ben's KelloggCoin balance is $#{ben_wallet}"
puts "Brian's KelloggCoin balance is $#{brian_wallet}"
puts "Evan's KelloggCoin balance is $#{evan_wallet}"
puts "Anthony's KelloggCoin balance is $#{anthony_wallet}"