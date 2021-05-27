module ApplicationHelper
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/icons/#{name}.svg"
    File.read(file_path).html_safe if File.exist?(file_path)
  end
end
