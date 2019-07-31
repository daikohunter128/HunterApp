class Admin::AccountsController < Admin::Base
  def show
    @administrator = current_administrator
  end
  
  def edit
    @administrator = current_administrator
  end
  
  def update
    @administrator = current_administrator
    @administrator.assign_attributes(administrator_params)
    if @administrator.save
      flash.notice = 'アカウント情報を変更しました。'
      redirect_to :admin_root
    else
      flash.now.alert = '入力に誤りがあります。'
      render action: 'edit'
    end
  end
  
  def use_month
    @prefecture = Request::PREFECTURE_NAMES
    @prefecture.each do |pp|
      if pp == "北海道"
        @use_member = Client.where(prefecture: pp)
        month_data
        @hokkaido1 = @aa.length
        @hokkaido2 = @bb.length
        @hokkaido3 = @cc.length
        @hokkaido4 = @dd.length
        @hokkaido5 = @ee.length
        @hokkaido6 = @ff.length
        @hokkaido7 = @gg.length
        @hokkaido8 = @hh.length
        @hokkaido9 = @ii.length
        @hokkaido10 = @jj.length
        @hokkaido11 = @kk.length
        @hokkaido12 = @ll.length
      end
      if pp == "青森県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @aomori1 = @aa.length
        @aomori2 = @bb.length
        @aomori3 = @cc.length
        @aomori4 = @dd.length
        @aomori5 = @ee.length
        @aomori6 = @ff.length
        @aomori7 = @gg.length
        @aomori8 = @hh.length
        @aomori9 = @ii.length
        @aomori10 = @jj.length
        @aomori11 = @kk.length
        @aomori12 = @ll.length
      end
      if pp == "岩手県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @iwate1 = @aa.length
        @iwate2 = @bb.length
        @iwate3 = @cc.length
        @iwate4 = @dd.length
        @iwate5 = @ee.length
        @iwate6 = @ff.length
        @iwate7 = @gg.length
        @iwate8 = @hh.length
        @iwate9 = @ii.length
        @iwate10 = @jj.length
        @iwate11 = @kk.length
        @iwate12 = @ll.length
      end
      if pp == "宮城県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @miyagi1 = @aa.length
        @miyagi2 = @bb.length
        @miyagi3 = @cc.length
        @miyagi4 = @dd.length
        @miyagi5 = @ee.length
        @miyagi6 = @ff.length
        @miyagi7 = @gg.length
        @miyagi8 = @hh.length
        @miyagi9 = @ii.length
        @miyagi10 = @jj.length
        @miyagi11 = @kk.length
        @miyagi12 = @ll.length
      end
      if pp == "秋田県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @akita1 = @aa.length
        @akita2 = @bb.length
        @akita3 = @cc.length
        @akita4 = @dd.length
        @akita5 = @ee.length
        @akita6 = @ff.length
        @akita7 = @gg.length
        @akita8 = @hh.length
        @akita9 = @ii.length
        @akita10 = @jj.length
        @akita11 = @kk.length
        @akita12 = @ll.length
      end
      if pp == "山形県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @yamagata1 = @aa.length
        @yamagata2 = @bb.length
        @yamagata3 = @cc.length
        @yamagata4 = @dd.length
        @yamagata5 = @ee.length
        @yamagata6 = @ff.length
        @yamagata7 = @gg.length
        @yamagata8 = @hh.length
        @yamagata9 = @ii.length
        @yamagata10 = @jj.length
        @yamagata11 = @kk.length
        @yamagata12 = @ll.length
      end
      if pp == "福島県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @fukushima1 = @aa.length
        @fukushima2 = @bb.length
        @fukushima3 = @cc.length
        @fukushima4 = @dd.length
        @fukushima5 = @ee.length
        @fukushima6 = @ff.length
        @fukushima7 = @gg.length
        @fukushima8 = @hh.length
        @fukushima9 = @ii.length
        @fukushima10 = @jj.length
        @fukushima11 = @kk.length
        @fukushima12 = @ll.length
      end
      if pp == "茨城県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @ibaraki1 = @aa.length
        @ibaraki2 = @bb.length
        @ibaraki3 = @cc.length
        @ibaraki4 = @dd.length
        @ibaraki5 = @ee.length
        @ibaraki6 = @ff.length
        @ibaraki7 = @gg.length
        @ibaraki8 = @hh.length
        @ibaraki9 = @ii.length
        @ibaraki10 = @jj.length
        @ibaraki11 = @kk.length
        @ibaraki12 = @ll.length
      end
      if pp == "栃木県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @totigi1 = @aa.length
        @totigi2 = @bb.length
        @totigi3 = @cc.length
        @totigi4 = @dd.length
        @totigi5 = @ee.length
        @totigi6 = @ff.length
        @totigi7 = @gg.length
        @totigi8 = @hh.length
        @totigi9 = @ii.length
        @totigi10 = @jj.length
        @totigi11 = @kk.length
        @totigi12 = @ll.length
      end
      if pp == "群馬県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @gunnma1 = @aa.length
        @gunnma2 = @bb.length
        @gunnma3 = @cc.length
        @gunnma4 = @dd.length
        @gunnma5 = @ee.length
        @gunnma6 = @ff.length
        @gunnma7 = @gg.length
        @gunnma8 = @hh.length
        @gunnma9 = @ii.length
        @gunnma10 = @jj.length
        @gunnma11 = @kk.length
        @gunnma12 = @ll.length
      end
      if pp == "埼玉県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @saitama1 = @aa.length
        @saitama2 = @bb.length
        @saitama3 = @cc.length
        @saitama4 = @dd.length
        @saitama5 = @ee.length
        @saitama6 = @ff.length
        @saitama7 = @gg.length
        @saitama8 = @hh.length
        @saitama9 = @ii.length
        @saitama10 = @jj.length
        @saitama11 = @kk.length
        @saitama12 = @ll.length
      end
      if pp == "千葉県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @chiba1 = @aa.length
        @chiba2 = @bb.length
        @chiba3 = @cc.length
        @chiba4 = @dd.length
        @chiba5 = @ee.length
        @chiba6 = @ff.length
        @chiba7 = @gg.length
        @chiba8 = @hh.length
        @chiba9 = @ii.length
        @chiba10 = @jj.length
        @chiba11 = @kk.length
        @chiba12 = @ll.length
      end
      if pp == "東京都"
        @use_member = Client.where(prefecture: pp)
        month_data
        @tokyo1 = @aa.length
        @tokyo2 = @bb.length
        @tokyo3 = @cc.length
        @tokyo4 = @dd.length
        @tokyo5 = @ee.length
        @tokyo6 = @ff.length
        @tokyo7 = @gg.length
        @tokyo8 = @hh.length
        @tokyo9 = @ii.length
        @tokyo10 = @jj.length
        @tokyo11 = @kk.length
        @tokyo12 = @ll.length
      end
      if pp == "神奈川県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @kanagawa1 = @aa.length
        @kanagawa2 = @bb.length
        @kanagawa3 = @cc.length
        @kanagawa4 = @dd.length
        @kanagawa5 = @ee.length
        @kanagawa6 = @ff.length
        @kanagawa7 = @gg.length
        @kanagawa8 = @hh.length
        @kanagawa9 = @ii.length
        @kanagawa10 = @jj.length
        @kanagawa11 = @kk.length
        @kanagawa12 = @ll.length
      end
      if pp == "新潟県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @niigata1 = @aa.length
        @niigata2 = @bb.length
        @niigata3 = @cc.length
        @niigata4 = @dd.length
        @niigata5 = @ee.length
        @niigata6 = @ff.length
        @niigata7 = @gg.length
        @niigata8 = @hh.length
        @niigata9 = @ii.length
        @niigata10 = @jj.length
        @niigata11 = @kk.length
        @niigata12 = @ll.length
      end
      if pp == "富山県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @toyama1 = @aa.length
        @toyama2 = @bb.length
        @toyama3 = @cc.length
        @toyama4 = @dd.length
        @toyama5 = @ee.length
        @toyama6 = @ff.length
        @toyama7 = @gg.length
        @toyama8 = @hh.length
        @toyama9 = @ii.length
        @toyama10 = @jj.length
        @toyama11 = @kk.length
        @toyama12 = @ll.length
      end
      if pp == "石川県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @ishikawa1 = @aa.length
        @ishikawa2 = @bb.length
        @ishikawa3 = @cc.length
        @ishikawa4 = @dd.length
        @ishikawa5 = @ee.length
        @ishikawa6 = @ff.length
        @ishikawa7 = @gg.length
        @ishikawa8 = @hh.length
        @ishikawa9 = @ii.length
        @ishikawa10 = @jj.length
        @ishikawa11 = @kk.length
        @ishikawa12 = @ll.length
      end
      if pp == "福井県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @fukui1 = @aa.length
        @fukui2 = @bb.length
        @fukui3 = @cc.length
        @fukui4 = @dd.length
        @fukui5 = @ee.length
        @fukui6 = @ff.length
        @fukui7 = @gg.length
        @fukui8 = @hh.length
        @fukui9 = @ii.length
        @fukui10 = @jj.length
        @fukui11 = @kk.length
        @fukui12 = @ll.length
      end
      if pp == "山梨県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @yamanashi1 = @aa.length
        @yamanashi2 = @bb.length
        @yamanashi3 = @cc.length
        @yamanashi4 = @dd.length
        @yamanashi5 = @ee.length
        @yamanashi6 = @ff.length
        @yamanashi7 = @gg.length
        @yamanashi8 = @hh.length
        @yamanashi9 = @ii.length
        @yamanashi10 = @jj.length
        @yamanashi11 = @kk.length
        @yamanashi12 = @ll.length
      end
      if pp == "長野県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @nagano1 = @aa.length
        @nagano2 = @bb.length
        @nagano3 = @cc.length
        @nagano4 = @dd.length
        @nagano5 = @ee.length
        @nagano6 = @ff.length
        @nagano7 = @gg.length
        @nagano8 = @hh.length
        @nagano9 = @ii.length
        @nagano10 = @jj.length
        @nagano11 = @kk.length
        @nagano12 = @ll.length
      end
      if pp == "岐阜県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @gifu1 = @aa.length
        @gifu2 = @bb.length
        @gifu3 = @cc.length
        @gifu4 = @dd.length
        @gifu5 = @ee.length
        @gifu6 = @ff.length
        @gifu7 = @gg.length
        @gifu8 = @hh.length
        @gifu9 = @ii.length
        @gifu10 = @jj.length
        @gifu11 = @kk.length
        @gifu12 = @ll.length
      end
      if pp == "静岡県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @shizuoka1 = @aa.length
        @shizuoka2 = @bb.length
        @shizuoka3 = @cc.length
        @shizuoka4 = @dd.length
        @shizuoka5 = @ee.length
        @shizuoka6 = @ff.length
        @shizuoka7 = @gg.length
        @shizuoka8 = @hh.length
        @shizuoka9 = @ii.length
        @shizuoka10 = @jj.length
        @shizuoka11 = @kk.length
        @shizuoka12 = @ll.length
      end
      if pp == "愛知県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @aichi1 = @aa.length
        @aichi2 = @bb.length
        @aichi3 = @cc.length
        @aichi4 = @dd.length
        @aichi5 = @ee.length
        @aichi6 = @ff.length
        @aichi7 = @gg.length
        @aichi8 = @hh.length
        @aichi9 = @ii.length
        @aichi10 = @jj.length
        @aichi11 = @kk.length
        @aichi12 = @ll.length
      end
      if pp == "三重県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @mie1 = @aa.length
        @mie2 = @bb.length
        @mie3 = @cc.length
        @mie4 = @dd.length
        @mie5 = @ee.length
        @mie6 = @ff.length
        @mie7 = @gg.length
        @mie8 = @hh.length
        @mie9 = @ii.length
        @mie10 = @jj.length
        @mie11 = @kk.length
        @mie12 = @ll.length
      end
      if pp == "滋賀県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @shiga1 = @aa.length
        @shiga2 = @bb.length
        @shiga3 = @cc.length
        @shiga4 = @dd.length
        @shiga5 = @ee.length
        @shiga6 = @ff.length
        @shiga7 = @gg.length
        @shiga8 = @hh.length
        @shiga9 = @ii.length
        @shiga10 = @jj.length
        @shiga11 = @kk.length
        @shiga12 = @ll.length
      end
      if pp == "京都府"
        @use_member = Client.where(prefecture: pp)
        month_data
        @kyoto1 = @aa.length
        @kyoto2 = @bb.length
        @kyoto3 = @cc.length
        @kyoto4 = @dd.length
        @kyoto5 = @ee.length
        @kyoto6 = @ff.length
        @kyoto7 = @gg.length
        @kyoto8 = @hh.length
        @kyoto9 = @ii.length
        @kyoto10 = @jj.length
        @kyoto11 = @kk.length
        @kyoto12 = @ll.length
      end
      if pp == "大阪府"
        @use_member = Client.where(prefecture: pp)
        month_data
        @oosaka1 = @aa.length
        @oosaka2 = @bb.length
        @oosaka3 = @cc.length
        @oosaka4 = @dd.length
        @oosaka5 = @ee.length
        @oosaka6 = @ff.length
        @oosaka7 = @gg.length
        @oosaka8 = @hh.length
        @oosaka9 = @ii.length
        @oosaka10 = @jj.length
        @oosaka11 = @kk.length
        @oosaka12 = @ll.length
      end
      if pp == "兵庫県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @hyougo1 = @aa.length
        @hyougo2 = @bb.length
        @hyougo3 = @cc.length
        @hyougo4 = @dd.length
        @hyougo5 = @ee.length
        @hyougo6 = @ff.length
        @hyougo7 = @gg.length
        @hyougo8 = @hh.length
        @hyougo9 = @ii.length
        @hyougo10 = @jj.length
        @hyougo11 = @kk.length
        @hyougo12 = @ll.length
      end
      if pp == "奈良県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @nara1 = @aa.length
        @nara2 = @bb.length
        @nara3 = @cc.length
        @nara4 = @dd.length
        @nara5 = @ee.length
        @nara6 = @ff.length
        @nara7 = @gg.length
        @nara8 = @hh.length
        @nara9 = @ii.length
        @nara10 = @jj.length
        @nara11 = @kk.length
        @nara12 = @ll.length
      end
      if pp == "和歌山県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @wakayama1 = @aa.length
        @wakayama2 = @bb.length
        @wakayama3 = @cc.length
        @wakayama4 = @dd.length
        @wakayama5 = @ee.length
        @wakayama6 = @ff.length
        @wakayama7 = @gg.length
        @wakayama8 = @hh.length
        @wakayama9 = @ii.length
        @wakayama10 = @jj.length
        @wakayama11 = @kk.length
        @wakayama12 = @ll.length
      end
      if pp == "鳥取県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @tottori1 = @aa.length
        @tottori2 = @bb.length
        @tottori3 = @cc.length
        @tottori4 = @dd.length
        @tottori5 = @ee.length
        @tottori6 = @ff.length
        @tottori7 = @gg.length
        @tottori8 = @hh.length
        @tottori9 = @ii.length
        @tottori10 = @jj.length
        @tottori11 = @kk.length
        @tottori12 = @ll.length
      end
      if pp == "島根県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @shimane1 = @aa.length
        @shimane2 = @bb.length
        @shimane3 = @cc.length
        @shimane4 = @dd.length
        @shimane5 = @ee.length
        @shimane6 = @ff.length
        @shimane7 = @gg.length
        @shimane8 = @hh.length
        @shimane9 = @ii.length
        @shimane10 = @jj.length
        @shimane11 = @kk.length
        @shimane12 = @ll.length
      end
      if pp == "岡山県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @okayama1 = @aa.length
        @okayama2 = @bb.length
        @okayama3 = @cc.length
        @okayama4 = @dd.length
        @okayama5 = @ee.length
        @okayama6 = @ff.length
        @okayama7 = @gg.length
        @okayama8 = @hh.length
        @okayama9 = @ii.length
        @okayama10 = @jj.length
        @okayama11 = @kk.length
        @okayama12 = @ll.length
      end
      if pp == "広島県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @hiroshima1 = @aa.length
        @hiroshima2 = @bb.length
        @hiroshima3 = @cc.length
        @hiroshima4 = @dd.length
        @hiroshima5 = @ee.length
        @hiroshima6 = @ff.length
        @hiroshima7 = @gg.length
        @hiroshima8 = @hh.length
        @hiroshima9 = @ii.length
        @hiroshima10 = @jj.length
        @hiroshima11 = @kk.length
        @hiroshima12 = @ll.length
      end
      if pp == "山口県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @yamaguchi1 = @aa.length
        @yamaguchi2 = @bb.length
        @yamaguchi3 = @cc.length
        @yamaguchi4 = @dd.length
        @yamaguchi5 = @ee.length
        @yamaguchi6 = @ff.length
        @yamaguchi7 = @gg.length
        @yamaguchi8 = @hh.length
        @yamaguchi9 = @ii.length
        @yamaguchi10 = @jj.length
        @yamaguchi11 = @kk.length
        @yamaguchi12 = @ll.length
      end
      if pp == "徳島県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @tokushima1 = @aa.length
        @tokushima2 = @bb.length
        @tokushima3 = @cc.length
        @tokushima4 = @dd.length
        @tokushima5 = @ee.length
        @tokushima6 = @ff.length
        @tokushima7 = @gg.length
        @tokushima8 = @hh.length
        @tokushima9 = @ii.length
        @tokushima10 = @jj.length
        @tokushima11 = @kk.length
        @tokushima12 = @ll.length
      end
      if pp == "香川県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @kagawa1 = @aa.length
        @kagawa2 = @bb.length
        @kagawa3 = @cc.length
        @kagawa4 = @dd.length
        @kagawa5 = @ee.length
        @kagawa6 = @ff.length
        @kagawa7 = @gg.length
        @kagawa8 = @hh.length
        @kagawa9 = @ii.length
        @kagawa10 = @jj.length
        @kagawa11 = @kk.length
        @kagawa12 = @ll.length
      end
      if pp == "愛媛県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @ehime1 = @aa.length
        @ehime2 = @bb.length
        @ehime3 = @cc.length
        @ehime4 = @dd.length
        @ehime5 = @ee.length
        @ehime6 = @ff.length
        @ehime7 = @gg.length
        @ehime8 = @hh.length
        @ehime9 = @ii.length
        @ehime10 = @jj.length
        @ehime11 = @kk.length
        @ehime12 = @ll.length
      end
      if pp == "高知県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @kochi1 = @aa.length
        @kochi2 = @bb.length
        @kochi3 = @cc.length
        @kochi4 = @dd.length
        @kochi5 = @ee.length
        @kochi6 = @ff.length
        @kochi7 = @gg.length
        @kochi8 = @hh.length
        @kochi9 = @ii.length
        @kochi10 = @jj.length
        @kochi11 = @kk.length
        @kochi12 = @ll.length
      end
      if pp == "福岡県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @fukuoka1 = @aa.length
        @fukuoka2 = @bb.length
        @fukuoka3 = @cc.length
        @fukuoka4 = @dd.length
        @fukuoka5 = @ee.length
        @fukuoka6 = @ff.length
        @fukuoka7 = @gg.length
        @fukuoka8 = @hh.length
        @fukuoka9 = @ii.length
        @fukuoka10 = @jj.length
        @fukuoka11 = @kk.length
        @fukuoka12 = @ll.length
      end
      if pp == "佐賀県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @saga1 = @aa.length
        @saga2 = @bb.length
        @saga3 = @cc.length
        @saga4 = @dd.length
        @saga5 = @ee.length
        @saga6 = @ff.length
        @saga7 = @gg.length
        @saga8 = @hh.length
        @saga9 = @ii.length
        @saga10 = @jj.length
        @saga11 = @kk.length
        @saga12 = @ll.length
      end
      if pp == "長崎県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @nagasaki1 = @aa.length
        @nagasaki2 = @bb.length
        @nagasaki3 = @cc.length
        @nagasaki4 = @dd.length
        @nagasaki5 = @ee.length
        @nagasaki6 = @ff.length
        @nagasaki7 = @gg.length
        @nagasaki8 = @hh.length
        @nagasaki9 = @ii.length
        @nagasaki10 = @jj.length
        @nagasaki11 = @kk.length
        @nagasaki12 = @ll.length
      end
      if pp == "熊本県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @kumamoto1 = @aa.length
        @kumamoto2 = @bb.length
        @kumamoto3 = @cc.length
        @kumamoto4 = @dd.length
        @kumamoto5 = @ee.length
        @kumamoto6 = @ff.length
        @kumamoto7 = @gg.length
        @kumamoto8 = @hh.length
        @kumamoto9 = @ii.length
        @kumamoto10 = @jj.length
        @kumamoto11 = @kk.length
        @kumamoto12 = @ll.length
      end
      if pp == "大分県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @ooita1 = @aa.length
        @ooita2 = @bb.length
        @ooita3 = @cc.length
        @ooita4 = @dd.length
        @ooita5 = @ee.length
        @ooita6 = @ff.length
        @ooita7 = @gg.length
        @ooita8 = @hh.length
        @ooita9 = @ii.length
        @ooita10 = @jj.length
        @ooita11 = @kk.length
        @ooita12 = @ll.length
      end
      if pp == "宮崎県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @miyazaki1 = @aa.length
        @miyazaki2 = @bb.length
        @miyazaki3 = @cc.length
        @miyazaki4 = @dd.length
        @miyazaki5 = @ee.length
        @miyazaki6 = @ff.length
        @miyazaki7 = @gg.length
        @miyazaki8 = @hh.length
        @miyazaki9 = @ii.length
        @miyazaki10 = @jj.length
        @miyazaki11 = @kk.length
        @miyazaki12 = @ll.length
      end
      if pp == "鹿児島県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @kagoshima1 = @aa.length
        @kagoshima2 = @bb.length
        @kagoshima3 = @cc.length
        @kagoshima4 = @dd.length
        @kagoshima5 = @ee.length
        @kagoshima6 = @ff.length
        @kagoshima7 = @gg.length
        @kagoshima8 = @hh.length
        @kagoshima9 = @ii.length
        @kagoshima10 = @jj.length
        @kagoshima11 = @kk.length
        @kagoshima12 = @ll.length
      end
      if pp == "沖縄県"
        @use_member = Client.where(prefecture: pp)
        month_data
        @okinawa1 = @aa.length
        @okinawa2 = @bb.length
        @okinawa3 = @cc.length
        @okinawa4 = @dd.length
        @okinawa5 = @ee.length
        @okinawa6 = @ff.length
        @okinawa7 = @gg.length
        @okinawa8 = @hh.length
        @okinawa9 = @ii.length
        @okinawa10 = @jj.length
        @okinawa11 = @kk.length
        @okinawa12 = @ll.length
      end
    end
    render action: 'use_month'
  end
  
  def month_data
    @aa = Array.new
    @bb = Array.new
    @cc = Array.new
    @dd = Array.new
    @ee = Array.new
    @ff = Array.new
    @gg = Array.new
    @hh = Array.new
    @ii = Array.new
    @jj = Array.new
    @kk = Array.new
    @ll = Array.new
    @use_member.each do |a|
      if a.agreement1 == "有効"
        @aa << a
      end
      if a.agreement2 == "有効"
        @bb << a
      end
      if a.agreement3 == "有効"
        @cc << a
      end
      if a.agreement4 == "有効"
        @dd << a
      end
      if a.agreement5 == "有効"
        @ee << a
      end
      if a.agreement6 == "有効"
        @ff << a
      end
      if a.agreement7 == "有効"
        @gg << a
      end
      if a.agreement8 == "有効"
        @hh << a
      end
      if a.agreement9 == "有効"
        @ii << a
      end
      if a.agreement10 == "有効"
        @jj << a
      end
      if a.agreement11 == "有効"
        @kk << a
      end
      if a.agreement12 == "有効"
        @ll << a
      end
    end
  end
    
  def renewal
    @prefecture = Request::PREFECTURE_NAMES
    @prefecture.each do |pp|
      if pp == "北海道"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @hokkaido1 = @aa.length
        @hokkaido2 = @bb.length
        @hokkaido3 = @cc.length
        @hokkaido4 = @dd.length
        @hokkaido5 = @ee.length
        @hokkaido6 = @ff.length
        @hokkaido7 = @gg.length
        @hokkaido8 = @hh.length
        @hokkaido9 = @ii.length
        @hokkaido10 = @jj.length
        @hokkaido11 = @kk.length
        @hokkaido12 = @ll.length
      end
      if pp == "青森県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @aomori1 = @aa.length
        @aomori2 = @bb.length
        @aomori3 = @cc.length
        @aomori4 = @dd.length
        @aomori5 = @ee.length
        @aomori6 = @ff.length
        @aomori7 = @gg.length
        @aomori8 = @hh.length
        @aomori9 = @ii.length
        @aomori10 = @jj.length
        @aomori11 = @kk.length
        @aomori12 = @ll.length
      end
      if pp == "岩手県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @iwate1 = @aa.length
        @iwate2 = @bb.length
        @iwate3 = @cc.length
        @iwate4 = @dd.length
        @iwate5 = @ee.length
        @iwate6 = @ff.length
        @iwate7 = @gg.length
        @iwate8 = @hh.length
        @iwate9 = @ii.length
        @iwate10 = @jj.length
        @iwate11 = @kk.length
        @iwate12 = @ll.length
      end
      if pp == "宮城県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @miyagi1 = @aa.length
        @miyagi2 = @bb.length
        @miyagi3 = @cc.length
        @miyagi4 = @dd.length
        @miyagi5 = @ee.length
        @miyagi6 = @ff.length
        @miyagi7 = @gg.length
        @miyagi8 = @hh.length
        @miyagi9 = @ii.length
        @miyagi10 = @jj.length
        @miyagi11 = @kk.length
        @miyagi12 = @ll.length
      end
      if pp == "秋田県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @akita1 = @aa.length
        @akita2 = @bb.length
        @akita3 = @cc.length
        @akita4 = @dd.length
        @akita5 = @ee.length
        @akita6 = @ff.length
        @akita7 = @gg.length
        @akita8 = @hh.length
        @akita9 = @ii.length
        @akita10 = @jj.length
        @akita11 = @kk.length
        @akita12 = @ll.length
      end
      if pp == "山形県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @yamagata1 = @aa.length
        @yamagata2 = @bb.length
        @yamagata3 = @cc.length
        @yamagata4 = @dd.length
        @yamagata5 = @ee.length
        @yamagata6 = @ff.length
        @yamagata7 = @gg.length
        @yamagata8 = @hh.length
        @yamagata9 = @ii.length
        @yamagata10 = @jj.length
        @yamagata11 = @kk.length
        @yamagata12 = @ll.length
      end
      if pp == "福島県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @fukushima1 = @aa.length
        @fukushima2 = @bb.length
        @fukushima3 = @cc.length
        @fukushima4 = @dd.length
        @fukushima5 = @ee.length
        @fukushima6 = @ff.length
        @fukushima7 = @gg.length
        @fukushima8 = @hh.length
        @fukushima9 = @ii.length
        @fukushima10 = @jj.length
        @fukushima11 = @kk.length
        @fukushima12 = @ll.length
      end
      if pp == "茨城県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @ibaraki1 = @aa.length
        @ibaraki2 = @bb.length
        @ibaraki3 = @cc.length
        @ibaraki4 = @dd.length
        @ibaraki5 = @ee.length
        @ibaraki6 = @ff.length
        @ibaraki7 = @gg.length
        @ibaraki8 = @hh.length
        @ibaraki9 = @ii.length
        @ibaraki10 = @jj.length
        @ibaraki11 = @kk.length
        @ibaraki12 = @ll.length
      end
      if pp == "栃木県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @totigi1 = @aa.length
        @totigi2 = @bb.length
        @totigi3 = @cc.length
        @totigi4 = @dd.length
        @totigi5 = @ee.length
        @totigi6 = @ff.length
        @totigi7 = @gg.length
        @totigi8 = @hh.length
        @totigi9 = @ii.length
        @totigi10 = @jj.length
        @totigi11 = @kk.length
        @totigi12 = @ll.length
      end
      if pp == "群馬県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @gunnma1 = @aa.length
        @gunnma2 = @bb.length
        @gunnma3 = @cc.length
        @gunnma4 = @dd.length
        @gunnma5 = @ee.length
        @gunnma6 = @ff.length
        @gunnma7 = @gg.length
        @gunnma8 = @hh.length
        @gunnma9 = @ii.length
        @gunnma10 = @jj.length
        @gunnma11 = @kk.length
        @gunnma12 = @ll.length
      end
      if pp == "埼玉県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @saitama1 = @aa.length
        @saitama2 = @bb.length
        @saitama3 = @cc.length
        @saitama4 = @dd.length
        @saitama5 = @ee.length
        @saitama6 = @ff.length
        @saitama7 = @gg.length
        @saitama8 = @hh.length
        @saitama9 = @ii.length
        @saitama10 = @jj.length
        @saitama11 = @kk.length
        @saitama12 = @ll.length
      end
      if pp == "千葉県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @chiba1 = @aa.length
        @chiba2 = @bb.length
        @chiba3 = @cc.length
        @chiba4 = @dd.length
        @chiba5 = @ee.length
        @chiba6 = @ff.length
        @chiba7 = @gg.length
        @chiba8 = @hh.length
        @chiba9 = @ii.length
        @chiba10 = @jj.length
        @chiba11 = @kk.length
        @chiba12 = @ll.length
      end
      if pp == "東京都"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @tokyo1 = @aa.length
        @tokyo2 = @bb.length
        @tokyo3 = @cc.length
        @tokyo4 = @dd.length
        @tokyo5 = @ee.length
        @tokyo6 = @ff.length
        @tokyo7 = @gg.length
        @tokyo8 = @hh.length
        @tokyo9 = @ii.length
        @tokyo10 = @jj.length
        @tokyo11 = @kk.length
        @tokyo12 = @ll.length
      end
      if pp == "神奈川県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @kanagawa1 = @aa.length
        @kanagawa2 = @bb.length
        @kanagawa3 = @cc.length
        @kanagawa4 = @dd.length
        @kanagawa5 = @ee.length
        @kanagawa6 = @ff.length
        @kanagawa7 = @gg.length
        @kanagawa8 = @hh.length
        @kanagawa9 = @ii.length
        @kanagawa10 = @jj.length
        @kanagawa11 = @kk.length
        @kanagawa12 = @ll.length
      end
      if pp == "新潟県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @niigata1 = @aa.length
        @niigata2 = @bb.length
        @niigata3 = @cc.length
        @niigata4 = @dd.length
        @niigata5 = @ee.length
        @niigata6 = @ff.length
        @niigata7 = @gg.length
        @niigata8 = @hh.length
        @niigata9 = @ii.length
        @niigata10 = @jj.length
        @niigata11 = @kk.length
        @niigata12 = @ll.length
      end
      if pp == "富山県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @toyama1 = @aa.length
        @toyama2 = @bb.length
        @toyama3 = @cc.length
        @toyama4 = @dd.length
        @toyama5 = @ee.length
        @toyama6 = @ff.length
        @toyama7 = @gg.length
        @toyama8 = @hh.length
        @toyama9 = @ii.length
        @toyama10 = @jj.length
        @toyama11 = @kk.length
        @toyama12 = @ll.length
      end
      if pp == "石川県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @ishikawa1 = @aa.length
        @ishikawa2 = @bb.length
        @ishikawa3 = @cc.length
        @ishikawa4 = @dd.length
        @ishikawa5 = @ee.length
        @ishikawa6 = @ff.length
        @ishikawa7 = @gg.length
        @ishikawa8 = @hh.length
        @ishikawa9 = @ii.length
        @ishikawa10 = @jj.length
        @ishikawa11 = @kk.length
        @ishikawa12 = @ll.length
      end
      if pp == "福井県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @fukui1 = @aa.length
        @fukui2 = @bb.length
        @fukui3 = @cc.length
        @fukui4 = @dd.length
        @fukui5 = @ee.length
        @fukui6 = @ff.length
        @fukui7 = @gg.length
        @fukui8 = @hh.length
        @fukui9 = @ii.length
        @fukui10 = @jj.length
        @fukui11 = @kk.length
        @fukui12 = @ll.length
      end
      if pp == "山梨県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @yamanashi1 = @aa.length
        @yamanashi2 = @bb.length
        @yamanashi3 = @cc.length
        @yamanashi4 = @dd.length
        @yamanashi5 = @ee.length
        @yamanashi6 = @ff.length
        @yamanashi7 = @gg.length
        @yamanashi8 = @hh.length
        @yamanashi9 = @ii.length
        @yamanashi10 = @jj.length
        @yamanashi11 = @kk.length
        @yamanashi12 = @ll.length
      end
      if pp == "長野県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @nagano1 = @aa.length
        @nagano2 = @bb.length
        @nagano3 = @cc.length
        @nagano4 = @dd.length
        @nagano5 = @ee.length
        @nagano6 = @ff.length
        @nagano7 = @gg.length
        @nagano8 = @hh.length
        @nagano9 = @ii.length
        @nagano10 = @jj.length
        @nagano11 = @kk.length
        @nagano12 = @ll.length
      end
      if pp == "岐阜県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @gifu1 = @aa.length
        @gifu2 = @bb.length
        @gifu3 = @cc.length
        @gifu4 = @dd.length
        @gifu5 = @ee.length
        @gifu6 = @ff.length
        @gifu7 = @gg.length
        @gifu8 = @hh.length
        @gifu9 = @ii.length
        @gifu10 = @jj.length
        @gifu11 = @kk.length
        @gifu12 = @ll.length
      end
      if pp == "静岡県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @shizuoka1 = @aa.length
        @shizuoka2 = @bb.length
        @shizuoka3 = @cc.length
        @shizuoka4 = @dd.length
        @shizuoka5 = @ee.length
        @shizuoka6 = @ff.length
        @shizuoka7 = @gg.length
        @shizuoka8 = @hh.length
        @shizuoka9 = @ii.length
        @shizuoka10 = @jj.length
        @shizuoka11 = @kk.length
        @shizuoka12 = @ll.length
      end
      if pp == "愛知県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @aichi1 = @aa.length
        @aichi2 = @bb.length
        @aichi3 = @cc.length
        @aichi4 = @dd.length
        @aichi5 = @ee.length
        @aichi6 = @ff.length
        @aichi7 = @gg.length
        @aichi8 = @hh.length
        @aichi9 = @ii.length
        @aichi10 = @jj.length
        @aichi11 = @kk.length
        @aichi12 = @ll.length
      end
      if pp == "三重県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @mie1 = @aa.length
        @mie2 = @bb.length
        @mie3 = @cc.length
        @mie4 = @dd.length
        @mie5 = @ee.length
        @mie6 = @ff.length
        @mie7 = @gg.length
        @mie8 = @hh.length
        @mie9 = @ii.length
        @mie10 = @jj.length
        @mie11 = @kk.length
        @mie12 = @ll.length
      end
      if pp == "滋賀県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @shiga1 = @aa.length
        @shiga2 = @bb.length
        @shiga3 = @cc.length
        @shiga4 = @dd.length
        @shiga5 = @ee.length
        @shiga6 = @ff.length
        @shiga7 = @gg.length
        @shiga8 = @hh.length
        @shiga9 = @ii.length
        @shiga10 = @jj.length
        @shiga11 = @kk.length
        @shiga12 = @ll.length
      end
      if pp == "京都府"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @kyoto1 = @aa.length
        @kyoto2 = @bb.length
        @kyoto3 = @cc.length
        @kyoto4 = @dd.length
        @kyoto5 = @ee.length
        @kyoto6 = @ff.length
        @kyoto7 = @gg.length
        @kyoto8 = @hh.length
        @kyoto9 = @ii.length
        @kyoto10 = @jj.length
        @kyoto11 = @kk.length
        @kyoto12 = @ll.length
      end
      if pp == "大阪府"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @oosaka1 = @aa.length
        @oosaka2 = @bb.length
        @oosaka3 = @cc.length
        @oosaka4 = @dd.length
        @oosaka5 = @ee.length
        @oosaka6 = @ff.length
        @oosaka7 = @gg.length
        @oosaka8 = @hh.length
        @oosaka9 = @ii.length
        @oosaka10 = @jj.length
        @oosaka11 = @kk.length
        @oosaka12 = @ll.length
      end
      if pp == "兵庫県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @hyougo1 = @aa.length
        @hyougo2 = @bb.length
        @hyougo3 = @cc.length
        @hyougo4 = @dd.length
        @hyougo5 = @ee.length
        @hyougo6 = @ff.length
        @hyougo7 = @gg.length
        @hyougo8 = @hh.length
        @hyougo9 = @ii.length
        @hyougo10 = @jj.length
        @hyougo11 = @kk.length
        @hyougo12 = @ll.length
      end
      if pp == "奈良県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @nara1 = @aa.length
        @nara2 = @bb.length
        @nara3 = @cc.length
        @nara4 = @dd.length
        @nara5 = @ee.length
        @nara6 = @ff.length
        @nara7 = @gg.length
        @nara8 = @hh.length
        @nara9 = @ii.length
        @nara10 = @jj.length
        @nara11 = @kk.length
        @nara12 = @ll.length
      end
      if pp == "和歌山県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @wakayama1 = @aa.length
        @wakayama2 = @bb.length
        @wakayama3 = @cc.length
        @wakayama4 = @dd.length
        @wakayama5 = @ee.length
        @wakayama6 = @ff.length
        @wakayama7 = @gg.length
        @wakayama8 = @hh.length
        @wakayama9 = @ii.length
        @wakayama10 = @jj.length
        @wakayama11 = @kk.length
        @wakayama12 = @ll.length
      end
      if pp == "鳥取県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @tottori1 = @aa.length
        @tottori2 = @bb.length
        @tottori3 = @cc.length
        @tottori4 = @dd.length
        @tottori5 = @ee.length
        @tottori6 = @ff.length
        @tottori7 = @gg.length
        @tottori8 = @hh.length
        @tottori9 = @ii.length
        @tottori10 = @jj.length
        @tottori11 = @kk.length
        @tottori12 = @ll.length
      end
      if pp == "島根県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @shimane1 = @aa.length
        @shimane2 = @bb.length
        @shimane3 = @cc.length
        @shimane4 = @dd.length
        @shimane5 = @ee.length
        @shimane6 = @ff.length
        @shimane7 = @gg.length
        @shimane8 = @hh.length
        @shimane9 = @ii.length
        @shimane10 = @jj.length
        @shimane11 = @kk.length
        @shimane12 = @ll.length
      end
      if pp == "岡山県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @okayama1 = @aa.length
        @okayama2 = @bb.length
        @okayama3 = @cc.length
        @okayama4 = @dd.length
        @okayama5 = @ee.length
        @okayama6 = @ff.length
        @okayama7 = @gg.length
        @okayama8 = @hh.length
        @okayama9 = @ii.length
        @okayama10 = @jj.length
        @okayama11 = @kk.length
        @okayama12 = @ll.length
      end
      if pp == "広島県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @hiroshima1 = @aa.length
        @hiroshima2 = @bb.length
        @hiroshima3 = @cc.length
        @hiroshima4 = @dd.length
        @hiroshima5 = @ee.length
        @hiroshima6 = @ff.length
        @hiroshima7 = @gg.length
        @hiroshima8 = @hh.length
        @hiroshima9 = @ii.length
        @hiroshima10 = @jj.length
        @hiroshima11 = @kk.length
        @hiroshima12 = @ll.length
      end
      if pp == "山口県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @yamaguchi1 = @aa.length
        @yamaguchi2 = @bb.length
        @yamaguchi3 = @cc.length
        @yamaguchi4 = @dd.length
        @yamaguchi5 = @ee.length
        @yamaguchi6 = @ff.length
        @yamaguchi7 = @gg.length
        @yamaguchi8 = @hh.length
        @yamaguchi9 = @ii.length
        @yamaguchi10 = @jj.length
        @yamaguchi11 = @kk.length
        @yamaguchi12 = @ll.length
      end
      if pp == "徳島県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @tokushima1 = @aa.length
        @tokushima2 = @bb.length
        @tokushima3 = @cc.length
        @tokushima4 = @dd.length
        @tokushima5 = @ee.length
        @tokushima6 = @ff.length
        @tokushima7 = @gg.length
        @tokushima8 = @hh.length
        @tokushima9 = @ii.length
        @tokushima10 = @jj.length
        @tokushima11 = @kk.length
        @tokushima12 = @ll.length
      end
      if pp == "香川県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @kagawa1 = @aa.length
        @kagawa2 = @bb.length
        @kagawa3 = @cc.length
        @kagawa4 = @dd.length
        @kagawa5 = @ee.length
        @kagawa6 = @ff.length
        @kagawa7 = @gg.length
        @kagawa8 = @hh.length
        @kagawa9 = @ii.length
        @kagawa10 = @jj.length
        @kagawa11 = @kk.length
        @kagawa12 = @ll.length
      end
      if pp == "愛媛県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @ehime1 = @aa.length
        @ehime2 = @bb.length
        @ehime3 = @cc.length
        @ehime4 = @dd.length
        @ehime5 = @ee.length
        @ehime6 = @ff.length
        @ehime7 = @gg.length
        @ehime8 = @hh.length
        @ehime9 = @ii.length
        @ehime10 = @jj.length
        @ehime11 = @kk.length
        @ehime12 = @ll.length
      end
      if pp == "高知県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @kochi1 = @aa.length
        @kochi2 = @bb.length
        @kochi3 = @cc.length
        @kochi4 = @dd.length
        @kochi5 = @ee.length
        @kochi6 = @ff.length
        @kochi7 = @gg.length
        @kochi8 = @hh.length
        @kochi9 = @ii.length
        @kochi10 = @jj.length
        @kochi11 = @kk.length
        @kochi12 = @ll.length
      end
      if pp == "福岡県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @fukuoka1 = @aa.length
        @fukuoka2 = @bb.length
        @fukuoka3 = @cc.length
        @fukuoka4 = @dd.length
        @fukuoka5 = @ee.length
        @fukuoka6 = @ff.length
        @fukuoka7 = @gg.length
        @fukuoka8 = @hh.length
        @fukuoka9 = @ii.length
        @fukuoka10 = @jj.length
        @fukuoka11 = @kk.length
        @fukuoka12 = @ll.length
      end
      if pp == "佐賀県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @saga1 = @aa.length
        @saga2 = @bb.length
        @saga3 = @cc.length
        @saga4 = @dd.length
        @saga5 = @ee.length
        @saga6 = @ff.length
        @saga7 = @gg.length
        @saga8 = @hh.length
        @saga9 = @ii.length
        @saga10 = @jj.length
        @saga11 = @kk.length
        @saga12 = @ll.length
      end
      if pp == "長崎県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @nagasaki1 = @aa.length
        @nagasaki2 = @bb.length
        @nagasaki3 = @cc.length
        @nagasaki4 = @dd.length
        @nagasaki5 = @ee.length
        @nagasaki6 = @ff.length
        @nagasaki7 = @gg.length
        @nagasaki8 = @hh.length
        @nagasaki9 = @ii.length
        @nagasaki10 = @jj.length
        @nagasaki11 = @kk.length
        @nagasaki12 = @ll.length
      end
      if pp == "熊本県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @kumamoto1 = @aa.length
        @kumamoto2 = @bb.length
        @kumamoto3 = @cc.length
        @kumamoto4 = @dd.length
        @kumamoto5 = @ee.length
        @kumamoto6 = @ff.length
        @kumamoto7 = @gg.length
        @kumamoto8 = @hh.length
        @kumamoto9 = @ii.length
        @kumamoto10 = @jj.length
        @kumamoto11 = @kk.length
        @kumamoto12 = @ll.length
      end
      if pp == "大分県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @ooita1 = @aa.length
        @ooita2 = @bb.length
        @ooita3 = @cc.length
        @ooita4 = @dd.length
        @ooita5 = @ee.length
        @ooita6 = @ff.length
        @ooita7 = @gg.length
        @ooita8 = @hh.length
        @ooita9 = @ii.length
        @ooita10 = @jj.length
        @ooita11 = @kk.length
        @ooita12 = @ll.length
      end
      if pp == "宮崎県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @miyazaki1 = @aa.length
        @miyazaki2 = @bb.length
        @miyazaki3 = @cc.length
        @miyazaki4 = @dd.length
        @miyazaki5 = @ee.length
        @miyazaki6 = @ff.length
        @miyazaki7 = @gg.length
        @miyazaki8 = @hh.length
        @miyazaki9 = @ii.length
        @miyazaki10 = @jj.length
        @miyazaki11 = @kk.length
        @miyazaki12 = @ll.length
      end
      if pp == "鹿児島県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @kagoshima1 = @aa.length
        @kagoshima2 = @bb.length
        @kagoshima3 = @cc.length
        @kagoshima4 = @dd.length
        @kagoshima5 = @ee.length
        @kagoshima6 = @ff.length
        @kagoshima7 = @gg.length
        @kagoshima8 = @hh.length
        @kagoshima9 = @ii.length
        @kagoshima10 = @jj.length
        @kagoshima11 = @kk.length
        @kagoshima12 = @ll.length
      end
      if pp == "沖縄県"
        @use_member = Client.where(prefecture: pp).where.not(contract_renewal: 1)
        month_data
        @okinawa1 = @aa.length
        @okinawa2 = @bb.length
        @okinawa3 = @cc.length
        @okinawa4 = @dd.length
        @okinawa5 = @ee.length
        @okinawa6 = @ff.length
        @okinawa7 = @gg.length
        @okinawa8 = @hh.length
        @okinawa9 = @ii.length
        @okinawa10 = @jj.length
        @okinawa11 = @kk.length
        @okinawa12 = @ll.length
      end
    end
    render action: 'renewal'
  end
 
  private
  def administrator_params
    params.require(:administrator).permit(:email)
  end
end
