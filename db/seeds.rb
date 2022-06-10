# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# articles = Article.create([   
#         {
#             title: "Star Wars",
#             body: "This is a popular movie",
#             status: 'public'
#         },{
#             title: "The lord of the rings",
#             body: "This is a very popular movie",
#             status: 'public'
#         }
#     ])
for i in 1..5
    Article.create(
        title: "Article Title #{i}", 
        body: "Body for article #{i}", 
        status: "public"
        ).comments.create([{
            commenter: "Commenter A", 
            body: "Comment from commenter A for article #{i}", 
            status: "public"},{
            commenter: "Commenter B", 
            body: "Comment from commenter B for article #{i}", 
            status: "public" }])
end
