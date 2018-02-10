class Document < ApplicationRecord
  has_attached_file :media
  validates_attachment_content_type :media, :content_type => ['application/pdf', 'application/msword', 'application/rtf', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', "application/vnd.ms-excel", "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"]

  def pdf_url
    pdf_split_url = media.url.split("/")
	pdf_split_url.pop
	pdf_split_url.join("/") + "/#{base_name}.pdf"
  end

  def to_pdf
    if id && ["docx", "doc", "rtf"].include?(extension)
      ::Libreconv.convert(media.path, "#{base_path}/#{base_name}.pdf")
	end
    true
  end

  def extension
    media_file_name.split(".").second
  end

  def base_name
    media_file_name.split(".").first
  end

  def base_path
    split_path = media.path.split("/")
    split_path.pop
	split_path.join("/")
  end
end
