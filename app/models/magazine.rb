class Magazine < ApplicationRecord
  validates :title,
  presence: {message: "タイトルを入力してください"}

  validates :origin,
  presence: {message: "原作を入力してください"}

  validates :author,
  presence: {message: "作者を入力してください"}

  validates :circle,
  presence: {message: "サークルを入力してください"}

  validates :qualify,
  presence: {message: "対象年齢を入力してください"},
  inclusion: {in: ["ALL", "R-18"], message: "R-18またはALLと入力してください"}

  validates :publication,
  presence: {message: "発行日を入力してください"},
  format: {with: /\d\d\d\d.\d\d.\d\d/, message: "発行日は2000.01.01のような形式で入力してください"}

  validates :printed,
  presence: {message: "印刷所を入力してください"}
end
