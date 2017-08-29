
-- Creating the table and schema
CREATE TABLE todo (id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER NOT NULL DEFAULT '1',
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL);

-- inserting data into the table
INSERT INTO todo (title, details, priority, created_at, completed_at)
    VALUES ('Walk the dog', 'Get little dudes leash, walk the dog, clean any    poo he creates, give the dog a treat', 5, '2017-05-29 12:00:00', null),
           ('GET PAID', 'Fight Floyd, lose, collect that 30 million dollar check!', 9000, CURRENT_TIMESTAMP(0), CURRENT_TIMESTAMP(0)),
           ('Complete daily project', 'Follow directions provided in Newline', 4, CURRENT_TIMESTAMP(0), null),
           ('Clean Car', 'Wash and detail the car, clean mats, and use tire shine.', 1, CURRENT_TIMESTAMP(0), null),
           ('Wash Dishes', 'Put all dirty dishes in the dishwasher, load the dishwashing detergent, close door and turn on dishwasher', 1, '2017-05-29 12:00:00', CURRENT_TIMESTAMP(0)),
           ('Grade Isaacs Project', 'Start out with 99% complete, update to 98%, keep going until all points are gone.', 3, CURRENT_TIMESTAMP(0), null),
           ('Create a todo list database', 'Use notes from yesterday, try not to mess up', 4, CURRENT_TIMESTAMP(0), CURRENT_TIMESTAMP(0)),
           ('Turn off air conditioner at the Iron Yard', 'Realize you are cold, ask Shikkira where the A/C controls are, adjust according to your own comfort level, disregard anyone elses feelings', 10, CURRENT_TIMESTAMP(0), null),
           ('Groom beard', 'Notice in mirror that you look like a scruffy looking nerf herder, Get trimmers from cabinet, Trim beard but not too much', 3, '2017-05-29 12:00:00', null),
           ('Share a Coke', 'Get Coke from vending machine, Notice what name is on the bottle, Find person with said name, Share your Coke with said person', 4,CURRENT_TIMESTAMP(0), CURRENT_TIMESTAMP(0)),
           ('Play Catan', 'Set up game, Find other players, realize you dont have enough time on lunch to play, put away game, scowl at the clock', 2,'2017-05-29 12:00:00', null),
           ('Play the Nope card', 'Hear direction or command that you do not like, take Nope card out of pocket, slam it down on table, dont do command', 1,CURRENT_TIMESTAMP(0), null),
           ('Wash clothes', 'Put your dirty clothes in the washing machine, throw in detergent pod, close door and turn on washing machine', 5,CURRENT_TIMESTAMP(0), CURRENT_TIMESTAMP(0)),
           ('Selfie with a stranger', 'Find an unsuspecting person, open camera app, take selfie with stranger', 2,CURRENT_TIMESTAMP(0), null),
           ('Finish Github page', 'Make changes to website, commit and push to Github', 10,CURRENT_TIMESTAMP(0), null),
           ('Change timestamps on this project', 'Read the instructions wrong, start project, read instructions again, restart project', 10,CURRENT_TIMESTAMP(0), CURRENT_TIMESTAMP(0)),
           ('Buy Iron Yard Swag', 'Go to the Iron Yard site, purchase goodies from them', 3,CURRENT_TIMESTAMP(0), null),
           ('Take a road trip', 'Agree on a place to go, load up the car, Head to agreed upon place', 9,CURRENT_TIMESTAMP(0), null),
           ('Put Iron Yard sticker on my Mac', 'First buy a sticker, put it on my Mac in my desired location', 4,CURRENT_TIMESTAMP(0), null),
           ('Preorder the new Xbox One X', 'Save money for months because you are on a student budget, buy Xbox 6 months after release because you are on a student budget', 2,CURRENT_TIMESTAMP(0), CURRENT_TIMESTAMP(0));

--  select all incomplete todos with a priority of 3
SELECT title FROM todo WHERE completed_at IS NULL AND priority = 3;

-- select all incomplete todos and sort by priority
SELECT title, priority, completed_at FROM todo WHERE completed_at IS NULL ORDER BY priority DESC;
