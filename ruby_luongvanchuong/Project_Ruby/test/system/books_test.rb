require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "should create book" do
    visit books_url
    click_on "New book"

    fill_in "Ghichu", with: @book.ghichu
    fill_in "Hoten", with: @book.hoten
    fill_in "Lop", with: @book.lop
    fill_in "Mansanh", with: @book.mansanh
    fill_in "Masv 205", with: @book.masv_205
    fill_in "Ngaymuon", with: @book.ngaymuon
    fill_in "Ngaytra", with: @book.ngaytra
    fill_in "Sobm", with: @book.soBM
    fill_in "Tensach", with: @book.tensach
    fill_in "Tentacgia", with: @book.tentacgia
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "should update Book" do
    visit book_url(@book)
    click_on "Edit this book", match: :first

    fill_in "Ghichu", with: @book.ghichu
    fill_in "Hoten", with: @book.hoten
    fill_in "Lop", with: @book.lop
    fill_in "Mansanh", with: @book.mansanh
    fill_in "Masv 205", with: @book.masv_205
    fill_in "Ngaymuon", with: @book.ngaymuon
    fill_in "Ngaytra", with: @book.ngaytra
    fill_in "Sobm", with: @book.soBM
    fill_in "Tensach", with: @book.tensach
    fill_in "Tentacgia", with: @book.tentacgia
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "should destroy Book" do
    visit book_url(@book)
    click_on "Destroy this book", match: :first

    assert_text "Book was successfully destroyed"
  end
end
