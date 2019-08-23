class Client < ActiveRecord::Base
  has_one :entries, class_name: 'Entry', dependent: :destroy
  
  include StringNormalizer
  
  has_many :events, class_name: 'ClientEvent', dependent: :destroy
  
  before_validation do
    self.email = normalize_as_email(email)
    self.email_for_index = email.downcase if email
    self.company_name = normalize_as_name(company_name)
    self.company_name_kana = normalize_as_furigana(company_name_kana)
  end
  
  KATAKANA_REGEXP = /\A[\p{katakana}\u{30fc}]+\z/
  
  validates :email, presence: true, email: { allow_blank: true }
  validates :company_name, :representative, presence: true
  
  validates :company_name_kana, :representative_kana, presence: true,
    format: { with: KATAKANA_REGEXP, allow_blank: true }
  validates :start_date, presence: true, date: {
    after_or_equal_to: Date.new(2000, 1, 1),
    before: -> (obj) { 1.year.from_now.to_date },
    allow_blank: true
  }
  validates :end_date, date: {
    after: :start_date,
    before: -> (obj) { 1.year.from_now.to_date },
    allow_blank: true
  }
  
  validates :email_for_index, uniqueness: { allow_blank: true }
  after_validation do
    if errors.include?(:email_for_index)
      errors.add(:email, :taken)
      errors.delete(:email_for_index)
    end
  end
  
  def password=(raw_password)
    if raw_password.kind_of?(String)
      self.hashed_password = BCrypt::Password.create(raw_password)
    elsif raw_password.nil?
      self.hashed_password = nil
    end
  end
  
  def active?
    !suspended? && start_date <= Date.today &&
      (end_date.nil? || end_date > Date.today)
  end
  
  AGREEMENTS = %w(無効), %(有効)
  
  CONTRACT_RENEWAL = %w(1), %(2)
  
  OPERATION_STATUS = %w(即対応可), %w(30分以内), %w(約45分), %w(約1時間), %w(約1時間半), %w(約2時間), %w(約2時間半), %w(3時間以上), %w(本日終了), %w(本日休業), %w(予約のみ), %w(電話で確認)
  
  PREFECTURE_NAMES = %w(
    北海道
    青森県 岩手県 宮城県 秋田県 山形県 福島県
    茨城県 栃木県 群馬県 埼玉県 千葉県 東京都 神奈川県
    新潟県 富山県 石川県 福井県 山梨県 長野県 岐阜県 静岡県 愛知県
    三重県 滋賀県 京都府 大阪府 兵庫県 奈良県 和歌山県
    鳥取県 島根県 岡山県 広島県 山口県
    徳島県 香川県 愛媛県 高知県
    福岡県 佐賀県 長崎県 熊本県 大分県 宮崎県 鹿児島県
    沖縄県
  )
  
  validates :prefecture, inclusion: { in: PREFECTURE_NAMES, allow_blank: true }
  
  validates :prefecture, inclusion: { in: %w(北海道
    青森県 岩手県 宮城県 秋田県 山形県 福島県
    茨城県 栃木県 群馬県 埼玉県 千葉県 東京都 神奈川県
    新潟県 富山県 石川県 福井県 山梨県 長野県 岐阜県 静岡県 愛知県
    三重県 滋賀県 京都府 大阪府 兵庫県 奈良県 和歌山県
    鳥取県 島根県 岡山県 広島県 山口県
    徳島県 香川県 愛媛県 高知県
    福岡県 佐賀県 長崎県 熊本県 大分県 宮崎県 鹿児島県
    沖縄県
), allow_blank: true }
end
