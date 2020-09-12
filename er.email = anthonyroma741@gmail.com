=> [32m#<ActiveModel::Errors:0x00007ffff58e7f40[0m
 @base[32m=[0m
  [32m#<User:0x00007ffff571f2d0[0m
   id: [1;36mnil[0m,
   email: [1;36mnil[0m,
   password_digest:
    [31m[1;31m"[0m[31m$2a$12$7VgAejY1mUItYASChAsaCOm1n8chSWSQ9Xsb36HQfirLG78y/wsoK[1;31m"[0m[31m[0m,
   created_at: [1;36mnil[0m,
   updated_at: [1;36mnil[0m[32m>[0m,
 @messages[32m=[0m{[33m:email[0m=>[[31m[1;31m"[0m[31mcan't be blank[1;31m"[0m[31m[0m]}[32m>[0m
