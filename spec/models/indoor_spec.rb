require 'rails_helper'

RSpec.describe Indoor, type: :model do
  describe '#create' do
    before do
      @indoor = FactoryBot.build(:indoor)
      @indoor.image = fixture_file_upload('public/images/test_image.png')
end
describe '投稿' do
 context '投稿がうまくいく時' do

    it "全ての項目が存在すれば出品できる" do
      expect(@indoor).to be_valid
    end
  end

  context '投稿がうまくいかないとき' do

    it  "indoor_nameが空だと登録できない" do
      @indoor.indoor_name = ""
      @indoor.valid?
      expect(@indoor.errors.full_messages).to include("Indoor name can't be blank")
    end

    it  "indoor_textが空だと登録できない" do
      @indoor.indoor_text  = ""
      @indoor.valid?
      expect(@indoor.errors.full_messages).to include("Indoor text can't be blank")
    end

    it  "imageが空だと登録できない" do
      @indoor.image  = nil
      @indoor.valid?
      expect(@indoor.errors.full_messages).to include("Image can't be blank")
    end

  end
end
end
end