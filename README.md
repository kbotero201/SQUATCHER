DJ-CLI app notes/pitch
Description: An app where users can learn and practice day trading with false money. Try to top the leaderboard and compete with friends!

Utilize Alpha Advantage Stock Data Api, JSON gem, & TTY prompt gem.

Models, Attributes, and Associations
User: username, password

Spi: stock_symbol

Game: user_id, spi_id, date, user_balance

User has_many Games

User has_many Spis through Games

Game belongs_to User

Game belongs_to Spi

Spi has_many Games

Spi has_many Users through Games

Relationship Chart
User => Game <= Spi (stock)

User Stories
As a user, I can see my highscore

As a user, I can see the leaderboard and see how I compare to other users that played

As a user, I can buy, sell, or hold my stock for each hour

As a user, I can see hour by hour updates on my stocks price, RSI, MACD, percentage loss/gain, and user balance

As a user, I can enter a cheat code and change my own highscore

As a user, I can enter a cheat code and delete another users highscore
