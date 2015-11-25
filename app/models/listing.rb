class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :user

  def self.search(search)
    search ? where("lower(name) LIKE ?", "%#{search.downcase}%") : all
    # http://stackoverflow.com/a/4252945/850825
    # awesome use of a model method!!
  end

  # was expecting to see in_groups_of here
  # didn't realize that was built in!! http://apidock.com/rails/Array/in_groups_of

end
