ALTER TABLE Users 
ADD CONSTRAINT unique_mail UNIQUE (mail);

ALTER TABLE Categories
ADD CONSTRAINT unique_name UNIQUE (name);