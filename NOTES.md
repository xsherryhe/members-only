Data models:

User
-username
  -present, unique, max 20 chars
-password
  -present, contains 1 number/uppercase/lowercase/symbol
-email
  -present, format ___@____.____

has_many posts

Post
-title
  -present, max 100 chars
-body
  -present

belongs_to user
