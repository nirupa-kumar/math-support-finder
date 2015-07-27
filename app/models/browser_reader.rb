# == Schema Infile_formation
#
# Table name: browser_readers
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :text
#  created_at :datetime
#  updated_at :datetime
#

class BrowserReader < ActiveRecord::Base
  has_many :browser_reader_versions, dependent: :destroy
  has_many :browser_reader_formats, dependent: :destroy
  has_many :formats, through: :browser_reader_formats
  has_many :browser_reader_renderers, dependent: :destroy
  has_many :renderers, through: :browser_reader_renderers

  has_many :setups, through: :browser_reader_versions

  validates_presence_of :title

  def to_s
    title
  end

  def versions
    browser_reader_versions
  end
end
