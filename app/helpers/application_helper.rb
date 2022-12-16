# frozen_string_literal: true

module ApplicationHelper
  IMAGE_SIZE = '500x100'
  SHOW_IMAGE_SIZE = '500x260'
  def image_view(obj, image_size = nil)
    if obj.image.attached?
      return image_tag(obj.image, size: image_size || ApplicationHelper::IMAGE_SIZE, alt: t('image', param: obj.class.name.to_s),
                                  class: ' w-100 rounded-top image-file')
    end

    image_tag('no-image.jpeg', size: image_size || ApplicationHelper::IMAGE_SIZE, alt: t('image', param: obj.class.name.to_s),
                               class: ' w-100 rounded-top image-file')
  end
end
