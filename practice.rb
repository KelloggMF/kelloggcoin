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

wallets = [
  { "name" => "ben", "balance" => 0 },
  { "name" => "brian", "balance" => 0 },
  { "name" => "evan", "balance" => 0 },
  { "name" => "anthony", "balance" => 0 }
]


for blockchain in blockchain
  sender = blockchain["from_user"]
  banker = blockchain["to_user"]
  amount = blockchain["amount"]

  for wallet in wallets
  if wallet["name"] == sender
    wallet["balance"] = wallet["balance"] - amount
  end

  if wallet["name"] == banker
    wallet["balance"] = wallet["balance"] + amount
  end
end
end

for wallet in wallets 
  puts "#{wallet["name"].capitalize}'s KelloggCoin balance is #{wallet["balance"]}"
end