class BooksController < ApplicationController
  def create_a_book
    Book.create :title => "三体", :author => "大刘"
    render :text => '操作成功'
  end

  def update_the_book
    Book.first.update :title => "十万个为什么"
    render :text => '操作成功'
  end

  def search_the_book
    @books = Book.where('author like "大刘"').all
    render :text => '找到1/0个结果'
  end

  def delete_the_book
    Book.first.delete
    render :text => '操作成功'
  end
end