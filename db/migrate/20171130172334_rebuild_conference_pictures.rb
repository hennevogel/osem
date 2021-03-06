# frozen_string_literal: true

class RebuildConferencePictures < ActiveRecord::Migration[5.0]
  def up
    Conference.where.not(picture: nil).each do |conference|
      conference.picture.recreate_versions!
    end
  end

  def down; end
end
