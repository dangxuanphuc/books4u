module ApplicationHelper
  def full_title page_title = ""
    base_title = t "app_name"
    page_title.empty? ? base_title : "#{page_title} | #{base_title}"
  end

  def find_book book_id
    @book = Book.find_by(id: book_id)
  end
end
