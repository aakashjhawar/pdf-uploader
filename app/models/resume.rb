class Resume < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  mount_uploader  :attachment1, AttachmentUploader
  mount_uploader  :attachment2, AttachmentUploader
  mount_uploader  :attachment3, AttachmentUploader
  validates :name, presence: true # Make sure the owner's name is present.
end