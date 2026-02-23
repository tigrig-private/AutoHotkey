; アプリケーション起動

; ダウンロードフォルダ
#+E:: Run("C:\Users\" A_UserName "\Downloads")

; ブラウザ
#d:: Send("#{1}")
#f:: Send("#{2}")

; メモ・Todo管理ツール
#c:: Send("#{3}")

; ターミナル
#t:: Send("#{4}")

; 統合開発環境
#+c:: Send("#{5}")