RSpec.describe Api::CategoriesController, type: :request do
  subject(:fetch) { get '/api/categories' }

  context 'when there are not items in database' do
    it 'returns 200 status code' do
      fetch

      expect(response.code).to eq('200')
    end

    it 'returns empty array' do
      fetch

      expect(parsed_body).to eq []
    end
  end

  context 'when there are two items with the same category' do
    before do
      create_item(category: 'first_category')
      create_item(category: 'first_category')
    end

    it 'returns 200 status code' do
      fetch

      expect(response.code).to eq('200')
    end

    it 'returns array with one category' do
      fetch

      expect(parsed_body).to eq [
        { 'name' => 'First category' }
      ]
    end
  end

  context 'when there are two items with different categories' do
    before do
      create_item(category: 'first_category')
      create_item(category: 'second_category')
    end

    it 'returns 200 status code' do
      fetch

      expect(response.code).to eq('200')
    end

    it 'returns array with two categories' do
      fetch

      expect(parsed_body).to eq [
        { 'name' => 'First category' },
        { 'name' => 'Second category' }
      ]
    end
  end

  def create_item(category:)
    Item.create!(name: 'test', category: category)
  end

  def parsed_body
    JSON.parse(response.body)
  end
end
