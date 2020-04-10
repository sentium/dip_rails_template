dip compose down --volumes
dip compose --build
dip compose up -d postgres
dip rails new . -d postgresql --webpacker --skip-listen --skip-git
cp ./database.yml.sample ./rails/config/database.yml
dip rake db:setup
dip rails webpacker:install
dip yarn install

