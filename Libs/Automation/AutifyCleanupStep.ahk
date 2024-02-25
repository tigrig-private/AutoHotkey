; ホットキーの割り当て
; ^!F11:: showMousePosition()

; 現在のマウスカーソルの座標を表示する関数
showMousePosition() {
  ; 現在のマウスカーソルの座標を取得
  MouseGetPos(&posX, &posY)

  ; 座標をTooltipで表示
  Tooltip("X座標: " posX ", Y座標: " posY)

  ; 2秒後にTooltipを消去
  Sleep(2000)
  Tooltip

  SoundBeep
}

InsertText(Content) {
  cb_bk := A_Clipboard
  A_Clipboard := Content
  Send("^{v}")
  Sleep(200)
  A_Clipboard := cb_bk
}

; ^!F12:: addAutifyCleanupStep()

addAutifyCleanupStep() {
  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  ; ====================================
  Send("^{PgDn}")
  Sleep(500)

  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  ; ====================================
  Send("^{PgDn}")
  Sleep(500)

  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  ; ====================================
  Send("^{PgDn}")
  Sleep(500)

  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  ; ====================================
  Send("^{PgDn}")
  Sleep(500)

  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  ; ====================================
  Send("^{PgDn}")
  Sleep(500)

  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  ; ====================================
  Send("^{PgDn}")
  Sleep(500)

  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  ; ====================================
  Send("^{PgDn}")
  Sleep(500)

  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  ; ====================================
  Send("^{PgDn}")
  Sleep(500)

  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  ; ====================================
  Send("^{PgDn}")
  Sleep(500)

  ; クリーンアップステップの表示
  Send("^+{i}")
  Sleep(500)
  InsertText("function funcAndWait(func){func();return new Promise((resolve)=>setTimeout(resolve,300))};function clickAndWait(selector){return funcAndWait(()=>document.querySelector(selector).click())};let selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector);selector='#show-cleanup-steps';if(document.getElementById('show-cleanup-steps').checked!==!0){await clickAndWait(selector)};selector='#editor-root > div.sc-ehIIUG.hKxtAB.App > div > div.page-header-section-sticky > nav > ul > li.sc-kiIAaw.hQwVTn > button';await clickAndWait(selector)")
  Sleep(500)
  Send("{Enter}")
  Sleep(1000)
  Send("^{w}")
  Sleep(1000)

  ; フォーカスを適当な場所にセットする
  Click(1020, 283)
  Sleep(300)

  ; クリーンアップステップが見えるところまでスクロール
  Send("^{End}")
  Sleep(1000)

  ; クリーンアップステップの『ステップを追加』ボタンをクリック
  Click(820, 680)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(829, 872, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(1168, 629)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「強制ログアウト」を選択
  InsertText("強制ログアウト")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(491, 334)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(631, 503, 0)
  Sleep(300)

  ; 『ステップグループ』をクリック
  Click(858, 272)
  Sleep(300)

  ; ステップグループ検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「SVログイン」を選択
  InsertText("SVログイン")
  Send("{Enter}")
  Click(721, 622)
  Sleep(500)

  ; ステップ挿入の＋ボタンをクリック
  Click(712, 339)
  Sleep(300)

  ; 『ステップを挿入』メニューをフォーカス
  MouseMove(817, 500, 0)
  Sleep(300)

  ; 『スニペットからJSステップ』をクリック
  Click(1165, 336)
  Sleep(300)

  ; JSスニペット検索欄をクリック
  Click(790, 540)
  Sleep(300)

  ; 「アカウント削除」を選択
  InsertText("アカウント削除（API）")
  Send("{Enter}")
  Click(721, 583)
  Sleep(500)

  ; 引数設定欄のプルダウンをクリック
  Click(1121, 676)
  Sleep(500)

  ; [他のステップから取得] をクリック
  Click(1173, 809)
  Sleep(300)

  ; 値欄をクリック
  Click(1297, 676)
  Sleep(300)

  ; 「アカウント削除」を選択
  Send("{vkF2}{vkF3}") ;英入力モードにする
  Sleep(100)
  Send("1-7")
  Sleep(100)
  Send("{Enter}")
  Click(721, 583)
  Sleep(1000)


  SoundBeep
}