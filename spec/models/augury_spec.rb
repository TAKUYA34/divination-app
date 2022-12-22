require 'rails_helper'

RSpec.describe Augury, type: :model do
  before do
    @augury = FactoryBot.build(:augury)
  end

  describe '占い投稿機能' do
    context '占いが投稿できる' do
      it '必要な情報が全て存在すれば登録できる' do
        expect(@augury).to be_valid
      end
      it 'nicknameが空では登録できない' do
        @augury.nickname = ''
        @augury.valid?
        expect(@augury.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'signが空では登録できない' do
        @augury.sign = ''
        @augury.valid?
        expect(@augury.errors.full_messages).to include("Sign can't be blank")
      end
      it 'birth_idが空では登録できない' do
        @augury.birth_id = ''
        @augury.valid?
        expect(@augury.errors.full_messages).to include("Birth can't be blank")
      end
    end
  end
end


