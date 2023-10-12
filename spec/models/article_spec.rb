# spec/models/article_spec.rb

require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do
    it 'is valid with a title and body' do
      article = Article.new(title: 'Sample Title', body: 'Sample Body')
      expect(article).to be_valid
    end

    it 'is not valid without a title' do
      article = Article.new(body: 'Sample Body')
      expect(article).to_not be_valid
    end

    it 'is not valid without a body' do
      article = Article.new(title: 'Sample Title')
      expect(article).to_not be_valid
    end
  end

  describe 'CRUD operations' do
    # let auth = 
    before(:each) do
      @article = Article.create(title: 'Initial Title', body: 'Initial Body')
    end

    it 'creates a new article' do
      expect(@article).to be_valid
      expect(Article.count).to eq(1)
    end

    it 'reads an article' do
      retrieved_article = Article.find(@article.id)
      expect(retrieved_article.title).to eq('Initial Title')
      expect(retrieved_article.body).to eq('Initial Body')
    end

    it 'updates an article' do
      @article.update(title: 'Updated Title', body: 'Updated Body')
      @article.reload
      expect(@article.title).to eq('Updated Title')
      expect(@article.body).to eq('Updated Body')
    end

    it 'deletes an article' do
      @article.destroy
      expect(Article.count).to eq(0)
    end
  end
end
