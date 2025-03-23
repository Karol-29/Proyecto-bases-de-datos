ALTER TABLE Auctions 
ADD CONSTRAINT chk_auctions_status 
CHECK (status IN ('A','B', 'C'));

ALTER TABLE Bids 
ADD CONSTRAINT chk_bids_status 
CHECK (status IN ('A','E', 'D'));

ALTER TABLE Penalties 
ADD CONSTRAINT chk_penalties_type_Penalty 
CHECK (type IN ('A','B', 'C'));

ALTER TABLE Users 
ADD CONSTRAINT chk_users_type_mail 
CHECK (mail LIKE '%@%');

ALTER TABLE Penalties
ADD CONSTRAINT chk_penalties_amount 
CHECK (MOD(amount,1000)=0);

ALTER TABLE Bids
ADD CONSTRAINT chk_bids_amount 
CHECK (MOD(amount,1000)=0);

ALTER TABLE Auctions
ADD CONSTRAINT chk_autions_initialPrice 
CHECK (MOD(initialPrice,1000)=0);

ALTER TABLE Auctions
ADD CONSTRAINT chk_autions_finalPrice 
CHECK (MOD(finalPrice,1000)=0);

ALTER TABLE ToAddress
ADD CONSTRAINT chk_ToAddress_shippingCost
CHECK (MOD(shippingCost,1000)=0);

