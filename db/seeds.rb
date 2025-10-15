# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# データ作成
Article.create({title: '新しい記事だよ', content: 'これは大変素晴らしい記事です！'})
Article.create({title: '二番目の記事だよ', content: 'ああああああああああああ。これは大変素晴らしい記事です！'})
