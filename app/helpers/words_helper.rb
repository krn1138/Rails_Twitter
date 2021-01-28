module WordsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_words_path
    elsif action_name == 'edit'
      word_path
    end
  end
end
