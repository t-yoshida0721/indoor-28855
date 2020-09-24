require 'rails_helper'
describe Message do
  before do
    @message = FactoryBot.build(:message)
  end

  describe 'コメント投稿' do
    context 'コメント投稿がうまくいくとき' do
      it "textがあればれば登録できる" do
        expect(@message).to be_valid
      end
     end
     context '投稿がうまくいかないとき' do

      it  "textが空だと登録できない" do
        @message.text = ""
        @message.valid?
        expect(@message.errors.full_messages).to include("Text は１文字以上入力してください。")
      end
    end
  end
end