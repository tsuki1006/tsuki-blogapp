require 'rails_helper'

RSpec.describe 'Article', type: :system do
  it '記事一覧が表示される' , display: true do
    visit root_path
  end
end