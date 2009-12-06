class HomeController < ApplicationController
  acts_as_taobao_controller

  def index
    unless taobao_session.nil?
      @user = taobao_session.invoke("taobao.user.get", 'nick' => taobao_session.top_params['visitor_nick'], 'fields' => 'nick,sex')
      @shop = taobao_session.invoke("taobao.shop.get", 'nick' => taobao_session.top_params['visitor_nick'], 'fields' => 'sid, cid, title, nick, desc, bulletin, pic_path, created, modified')
      @products = taobao_session.invoke("taobao.products.get", 'nick' => taobao_session.top_params['visitor_nick'], 'fields' => 'product_id, name, pic_path')
      puts "products: #{@products.inspect}"
    end
  end
end
