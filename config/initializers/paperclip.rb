if RAILS_ENV == "development"
 Paperclip.options[:command_path] = 'D:\Development\ImageMagick-6.5.7-Q16'
 Paperclip.options[:magick_home] = 'D:\Development\ImageMagick-6.5.7-Q16'

  if Paperclip.options[:magick_home]
    ENV['MAGICK_HOME'] = Paperclip.options[:magick_home]
    ENV['DYLD_LIBRARY_PATH'] = Paperclip.options[:magick_home] + "/lib"
  end
end 