/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Louka
 * Created: 3 Feb 2024
 */
INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE)
VALUES('admin@admin.com', 'mypassword', 'System', 'Administrator','ADMIN');

INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE)
VALUES('user1@user.com', 'mypassword', 'Donald', 'User','GENUSER');

INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE)
VALUES('user2@user.com', 'mypassword', 'Melania', 'User','GENUSER');

INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE)
VALUES('user3@user.com', 'mypassword', 'Ivanka', 'User','GENUSER');

INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE)
VALUES('user4@user.com', 'mypassword', 'Jared', 'User','GENUSER');

INSERT INTO USERDATA(EMAIL,PASSWORD,FNAME,LNAME,USERTYPE)
VALUES('user5@user.com', 'mypassword', 'Mary', 'User','GENUSER');

INSERT INTO PRODUCTS(NAME,DESCRIPTION,PRICE,IMAGE_LOCATION,CATEGORY)
VALUES('Big Optimism','The Very Big Prelude to Dissapointment',5.67,'optimism.jpg','Humour');

INSERT INTO PRODUCTS(NAME,DESCRIPTION,PRICE,IMAGE_LOCATION,CATEGORY)
VALUES('Lazy','Just because you have to doesnt mean you need to',5.67,'lazy.jpg','Humour');

INSERT INTO PRODUCTS(NAME,DESCRIPTION,PRICE,IMAGE_LOCATION,CATEGORY)
VALUES('Unique','Just because you are unique doesnt make you useful',5.97,'unique.jpg','Sad');

INSERT INTO PRODUCTS(NAME,DESCRIPTION,PRICE,IMAGE_LOCATION,CATEGORY)
VALUES('Nepotism','Its not easy to soar like an eagle unless your parents were eagles',5.67,'nepotism2.jpg','Sad');

INSERT INTO PRODUCTS(NAME,DESCRIPTION,PRICE,IMAGE_LOCATION,CATEGORY)
VALUES('Overconfidence','This is going to end in disaster',5.67,'overconfidence.jpg','Funny');

INSERT INTO PRODUCTS(NAME,DESCRIPTION,PRICE,IMAGE_LOCATION,CATEGORY)
VALUES('Potential','Not Everybody gets to be an astronaut',5.67,'potential.jpg','Funny');

