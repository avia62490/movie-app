class SetMoviesEnglishDefaultToTrue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :movies, :english, from: false, to: true
  end
end
