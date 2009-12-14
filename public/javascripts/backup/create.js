page.insert_html :bottom, "pictures", :partial => 'pictures/list_item', :object => @picture
page.visual_effect :highlight, "picture_#{@picture.id}" 
