class Schedule < ApplicationRecord
  # 必須項目と文字数制限
  validates :title, presence: true, length: { maximum: 20 }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :memo, length: { maximum: 500 }

  # カスタムバリデーション：終了日が開始日より前にならないようにする
  validate :end_date_cannot_be_before_start_date

  private

  def end_date_cannot_be_before_start_date
    if start_date.present? && end_date.present? && end_date < start_date
      errors.add(:end_date, "は開始日以降の日付を選択してください")
    end
  end
end