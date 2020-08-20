class ApiResponse < ApplicationRecord
  validate do |model|
    if (JSON.parse model.json rescue nil).nil?
      errors.add :json, message: 'JSON を入力してください'
    end
  end
end
