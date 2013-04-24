class AddPublicationDateAndIsbnAndEditorAndTranslatorAndPageCountAndPageCountEditionToBooks < ActiveRecord::Migration
  def change
    add_column :books, :publication_date, :date
    add_column :books, :isbn, :string
    add_column :books, :editor, :string
    add_column :books, :translator, :string
    add_column :books, :page_count, :integer
    add_column :books, :page_count_edition, :string
  end
end
