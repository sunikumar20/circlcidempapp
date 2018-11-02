class User < ApplicationRecord


  searchkick word_start:  [:name]

  SEARCHING_FIELDS = [
    { "name^5"       => :word_start },
    { "name^2"       => :word_middle },
    { "name^1"       => :word_end }
  ]


  # For searchkick and elasticsearch indexing
  def search_data
    {
      name: name
    }
  end


  def reindex_user
    return unless User.search_callbacks?
    if self.is_a? User
      reindex
    else
      user.reindex
    end
  end
end
