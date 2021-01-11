require 'rails_helper'

RSpec.describe 'ユーザー新規登録機能', type: :system do
  before do
    @user = FactoryBot.build(:user)
  end
  context 'ユーザー新規登録ができるとき' do 
    it '正しい情報を入力すればユーザー新規登録ができてトップページに移動する' do
      # トップページに移動する
      visit root_path
      # トップページにサインアップページへ遷移するボタンがあることを確認する
      expect(page).to have_content('新規登録')
      # 新規登録ページへ移動する
      visit new_user_registration_path
      # ユーザー情報を入力する
      fill_in 'ニックネーム', with: @user.nickname
      fill_in 'Eメール', with: @user.email
      fill_in 'パスワード', with: @user.password
      fill_in 'パスワード（確認用）', with: @user.password_confirmation
      # サインアップボタンを押すとユーザーモデルのカウントが1上がることを確認する
      expect{
        find('.action-btn').click
      }.to change { User.count }.by(1)
      # トップページへ遷移する
      visit root_path
      #ログインユーザー名とログアウトボタンが表示されることを確認する
      expect(page).to have_content(@user.nickname)
      expect(page).to have_content('ログアウト')
    end
  end
  context 'ユーザー新規登録ができないとき' do
    it '誤った情報ではユーザー新規登録ができずに新規登録ページへ戻ってくる' do
      # トップページに移動する
      visit root_path
      # トップページにサインアップページへ遷移するボタンがあることを確認する
      expect(page).to have_content('新規登録')
      # 新規登録ページへ移動する
      visit new_user_registration_path
      # ユーザー情報を入力する
      fill_in 'ニックネーム', with: ""
      fill_in 'Eメール', with: ""
      fill_in 'パスワード', with: ""
      fill_in 'パスワード（確認用）', with: ""
      # サインアップボタンを押してもユーザーモデルのカウントは上がらないことを確認する
      expect{
        find('.action-btn').click
      }.to change { User.count }.by(0)
      # 新規登録ページへ戻されることを確認する
      expect(current_path).to eq user_registration_path
    end
  end
end

RSpec.describe 'ユーザーログイン機能', type: :system do
  before do
    @user = FactoryBot.create(:user)
  end
  context 'ログインができるとき' do 
    it '正しい情報を入力すればログインができてトップページに移動する' do
      # トップページに移動する
      visit root_path
      # トップページにログインページへ遷移するボタンがあることを確認する
      expect(page).to have_content('ログイン')
      # ログインページへ移動する
      visit new_user_session_path
      # 登録済みのユーザーのemailとpasswordを入力する
      fill_in 'Eメール', with: @user.email
      fill_in 'パスワード', with: @user.password
      # ログインボタンをクリックする
      find('.action-btn').click
      # トップページに遷移していることを確認する
      expect(current_path).to eq root_path
      #ログインユーザー名とログアウトボタンが表示されることを確認する
      expect(page).to have_content(@user.nickname)
      expect(page).to have_content('ログアウト')
    end
  end
  
  context 'ログインができないとき' do
    it '誤った情報ではログインができずにログインページへ戻ってくる' do
      # トップページに移動する
      visit root_path
      # トップページにログインページへ遷移するボタンがあることを確認する
      expect(page).to have_content('ログイン')
      # ログインページへ移動する
      visit new_user_session_path
      # 誤ったユーザー情報を入力する
      fill_in 'Eメール', with: ""
      fill_in 'パスワード', with: ""
      # ログインボタンをクリックする
      find('.action-btn').click
      # ログインページに戻ってきていることを確認する
      expect(current_path).to eq new_user_session_path
    end
  end
end

