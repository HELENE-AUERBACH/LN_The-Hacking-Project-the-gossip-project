# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]

* Rails version

Rails 5.2.3

* Database initialization

$ bundle install

...

$ rails db:seed

10 users créés :
ID | FIRST_NAME | LAST_NAME  | EMAIL                        | AGE | DESCRIPTION                    | CITY.NAME        | CITY.ZIP_CODE
---|------------|------------|------------------------------|-----|--------------------------------|------------------|--------------
1  | Otto       | Predovic   | sheila_rodriguez@gmail.com   | 88  | turbo amicitia theca agnosc... | Durganhaven      | 28235-2392   
2  | Josefa     | Romaguera  | eldora_smitham@gmail.com     | 102 | commemoro rerum deripio con... | North Jess       | 47117-6633   
3  | Rod        | Abshire    | johnsie@hotmail.com          | 20  | provident vitiosus termes a... | East Angelita    | 43321        
4  | Kelsey     | Conn       | johnny@yahoo.com             | 29  | tametsi cernuus degusto car... | Schmidtmouth     | 91862        
5  | Lien       | Reinger    | dusty_aufderhar@gmail.com    | 50  | venia celo arcesso valde ab... | Breannamouth     | 65238        
6  | Carlyn     | White      | jay_swaniawski@yahoo.com     | 32  | suscipit copiose cicuta aed... | Hintzton         | 40757        
7  | Krystal    | Kuvalis    | dorthea@gmail.com            | 37  | ut odio cognomen conspergo ... | Starkbury        | 55413-0991   
8  | Bryon      | Parker     | mitzie_cruickshank@gmail.com | 32  | exercitationem curtus turpi... | Cruickshankburgh | 59022-4530   
9  | Shanelle   | Kreiger    | lovetta@yahoo.com            | 48  | decretum ab deprecator aure... | Gottliebport     | 36578-5190   
10 | Danny      | Cartwright | mac_rau@yahoo.com            | 54  | ancilla carmen ater colo su... | East Sandy       | 30557        

10 cities créées :
ID | NAME             | ZIP_CODE   | CREATED_AT              | UPDATED_AT             
---|------------------|------------|-------------------------|------------------------
1  | Durganhaven      | 28235-2392 | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    
2  | North Jess       | 47117-6633 | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    
3  | East Angelita    | 43321      | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    
4  | Schmidtmouth     | 91862      | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    
5  | Breannamouth     | 65238      | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    
6  | Hintzton         | 40757      | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    
7  | Starkbury        | 55413-0991 | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    
8  | Cruickshankburgh | 59022-4530 | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    
9  | Gottliebport     | 36578-5190 | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    
10 | East Sandy       | 30557      | 2021-05-10 14:21:52     | 2021-05-10 14:21:52    

20 gossips créés :
ID | TITLE                          | CONTENT                        | AUTHOR.FIRST_NAME | AUTHOR.LAST_NAME | TAGS.TITLE 
---|--------------------------------|--------------------------------|-------------------|------------------|------------
1  | Qui                            | Est ea eaque. Quae quo dolo... | Krystal           | Kuvalis          | #distinctio
2  | Similique quidem quas          | Dicta libero aut.              | Otto              | Predovic         | #distinctio
3  | Ut aut                         | Est eum consequuntur. Esse ... | Lien              | Reinger          | #et        
4  | Necessitatibus veritatis re... | Hic quia neque.                | Otto              | Predovic         | #et        
5  | Quia sed totam recusandae      | Praesentium cumque dolores.    | Carlyn            | White            | #doloribus 
6  | Sunt perferendis assumenda ... | Vero voluptatem repellendus... | Kelsey            | Conn             | #doloribus 
7  | Amet et dolorum veniam sint    | Accusamus et molestiae. Qui... | Danny             | Cartwright       | #ut        
8  | Unde molestiae                 | At autem amet.                 | Rod               | Abshire          | #ut        
9  | Voluptatum et sit dolores      | Mollitia deserunt ea.          | Carlyn            | White            | #qui       
10 | Molestiae atque reiciendis ... | Vel reprehenderit harum. Es... | Josefa            | Romaguera        | #qui       
11 | Et quae aut aliquam necessi... | Fugiat sapiente repellat.      | Danny             | Cartwright       | #eos       
12 | Voluptas ea quibusdam dolor... | Commodi eaque velit. Porro ... | Carlyn            | White            | #eos       
13 | Quo                            | Esse sint totam. Et invento... | Kelsey            | Conn             | #ratione   
14 | Omnis                          | Fuga repudiandae sit. Moles... | Josefa            | Romaguera        | #ratione   
15 | Debitis                        | Neque beatae labore. Volupt... | Shanelle          | Kreiger          | #et        
16 | Minima et                      | Et magnam rem. Dolor libero... | Kelsey            | Conn             | #et        
17 | Ex minima                      | Consequatur labore animi. N... | Danny             | Cartwright       | #id        
18 | Rerum et quae adipisci repu... | Perspiciatis et necessitati... | Carlyn            | White            | #id        
19 | Occaecati voluptas             | Ullam et incidunt.             | Bryon             | Parker           | #similique 
20 | Est rerum facilis              | Molestiae occaecati quos. D... | Lien              | Reinger          | #similique 

10 tags créés :
ID | TITLE      
---|------------
1  | #distinctio
2  | #et        
3  | #doloribus 
4  | #ut        
5  | #qui       
6  | #eos       
7  | #ratione   
8  | #et        
9  | #id        
10 | #similique 

10 private messages créés :
ID | CONTENT                        | SENDER.FIRST_NAME | SENDER.LAST_NAME | RECIPIENTS.FIRST_NAME | RECIPIENTS.LAST_NAME
---|--------------------------------|-------------------|------------------|-----------------------|---------------------
1  | Numquam possimus in. Minima... | Kelsey            | Conn             | Otto                  | Predovic            
2  | Dicta perferendis beatae.      | Bryon             | Parker           | Kelsey                | Conn                
3  | Explicabo impedit sed. Nece... | Shanelle          | Kreiger          | Danny                 | Cartwright          
4  | Velit neque nulla. Suscipit... | Bryon             | Parker           | Krystal               | Kuvalis             
5  | Qui officia fugit. Ut accus... | Bryon             | Parker           | Danny                 | Cartwright          
6  | Aperiam commodi exercitatio... | Shanelle          | Kreiger          | Krystal               | Kuvalis             
7  | Commodi eaque fugit.           | Otto              | Predovic         | Otto                  | Predovic            
8  | Rerum blanditiis omnis.        | Josefa            | Romaguera        | Danny                 | Cartwright          
9  | A qui aut. Iste odio offici... | Carlyn            | White            | Rod                   | Abshire             

20 comments créés :
ID | CONTENT                        | AUTHOR.FIRST_NAME | AUTHOR.LAST_NAME | GOSSIP.TITLE                  
---|--------------------------------|-------------------|------------------|-------------------------------
1  | Id incidunt ut. Deleniti at... | Krystal           | Kuvalis          | Qui                           
2  | Ratione explicabo temporibus.  | Kelsey            | Conn             | Similique quidem quas         
3  | Perferendis commodi sit. Qu... | Rod               | Abshire          | Qui                           
4  | Reprehenderit omnis aut.       | Bryon             | Parker           | Molestiae atque reiciendis ...
5  | Neque non perspiciatis. Par... | Kelsey            | Conn             | Qui                           
6  | Odio quam eos. Voluptas est... | Otto              | Predovic         | Necessitatibus veritatis re...
7  | Aut beatae reprehenderit. M... | Josefa            | Romaguera        | Quo                           
8  | Rem dolorem enim. Amet aut et. | Shanelle          | Kreiger          | Unde molestiae                
9  | Quaerat necessitatibus totam.  | Kelsey            | Conn             | Minima et                     
10 | Labore soluta quia. Laborio... | Kelsey            | Conn             | Omnis                         
11 | Totam odio sint. Nobis quam... | Carlyn            | White            | Quo                           
12 | Consequuntur dolorum volupt... | Kelsey            | Conn             | Occaecati voluptas  

URLs :
http://localhost:3000/
http://localhost:3000/team
http://localhost:3000/contact
http://localhost:3000/welcome/...
