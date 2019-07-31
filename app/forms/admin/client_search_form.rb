class Admin::ClientSearchForm
  include ActiveModel::Model
  include StringNormalizer
  
  attr_accessor :company_name_kana, :prefecture
  
  def search
    normalize_values
    
    rel = Client
    if company_name_kana.present?
      rel = rel.where(company_name_kana: company_name_kana)
    end
    
    if prefecture.present?
      rel = rel.where('client.prefecture' => prefecture)
    end
    rel.order(:company_name_kana)
  end
  
  private
  def normalize_values
    self.company_name_kana = normalize_as_furigana(company_name_kana)
  end
end