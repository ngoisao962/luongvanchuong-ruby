class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :masv_205
      t.string :hoten
      t.string :lop
      t.string :mansanh
      t.string :tensach
      t.string :tentacgia
      t.string :soBM
      t.date :ngaymuon
      t.date :ngaytra
      t.text :ghichu

      t.timestamps
    end
  end
end
