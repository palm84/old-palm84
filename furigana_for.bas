Sub ふりがな設定()
    Dim 選択セル As Range
    
    If Range("A2").Value = "" Then
      MsgBox "A2から「名前」を入力してください"
      Exit Sub
    Else
      Range("A" & Rows.Count).End(xlUp).Select
      Range(Selection, "A2").Select
      Selection.SetPhonetic   '選択範囲にふりがな再設定
      For Each 選択セル In Selection
        With 選択セル.Phonetics
          .CharacterType = xlHiragana
          .Alignment = xlPhoneticAlignNoControl
          .Font.Name = "ＭＳ ゴシック"
          .Font.Size = 9
          .Visible = True
        End With
      Next
      Selection.Columns.AutoFit
      Selection.Rows.AutoFit
    End If
End Sub
Sub ふりがな抜き出し()
    Dim A列 As Range
    Dim myRtn As Integer
    Dim myHanni As Range
    Set myHanni = Range("B2:B65536")
    
    If Range("A2").Value = "" Then
      MsgBox "A2から「名前」を入力してください"
      Exit Sub
    End If
      
    If Application.CountA(myHanni) > 0 Then
       myRtn = MsgBox("B列が現在のふりがなデータで上書されます。よろしいですか？", vbYesNo)
        If myRtn = vbNo Then Exit Sub
        If myRtn = vbYes Then GoTo mySyori
    Else
      GoTo mySyori
      
mySyori:
    Range("A" & Rows.Count).End(xlUp).Select
    Range(Selection, "A2").Select
    For Each A列 In Selection
        A列.Offset(0, 1).Value = A列.Phonetic.Text
    Next
    Columns("B").AutoFit

    End If
End Sub
Sub 修正再設定()
    Dim A列 As Range
    Dim myRtn As Integer
    Dim myHanni As Range
    Set myHanni = Range("B2:B65536")
  
    If Application.CountA(myHanni) = 0 Then Exit Sub
    If Range("A2").Value = "" Then
      MsgBox "A2から「名前」を入力してください"
      Exit Sub
    Else
      myRtn = MsgBox("B列のふりがな内容をA列「名前」のふりがなに設定します。よろしいですか？", vbYesNo)
      If myRtn = vbNo Then
        Exit Sub
      End If
      Range("A" & Rows.Count).End(xlUp).Select
      Range(Selection, "A2").Select
      For Each A列 In Selection
        A列.Characters.PhoneticCharacters = A列.Offset(0, 1).Value
      Next
    Selection.Columns.AutoFit
    Selection.Rows.AutoFit
    End If
End Sub
Sub ふりがな表示()
    If Range("A2").Value = "" Then
      MsgBox "A2から「名前」を入力してください"
      Exit Sub
    Else
      Range("A" & Rows.Count).End(xlUp).Select
      Range(Selection, "A2").Select
      Selection.Phonetic.Visible = True
      Selection.Columns.AutoFit
      Selection.Rows.AutoFit
    End If
End Sub
Sub ふりがな非表示()
    If Range("A2").Value = "" Then
      MsgBox "A2から「名前」を入力してください"
      Exit Sub
    Else
      Range("A" & Rows.Count).End(xlUp).Select
      Range(Selection, "A2").Select
      Selection.Phonetic.Visible = False
      Selection.Columns.AutoFit
      Selection.Rows.AutoFit
    End If
End Sub
Sub カタカナ()
    If Range("A2").Value = "" Then
      MsgBox "A2から「名前」を入力してください"
      Exit Sub
    Else
      Range("A" & Rows.Count).End(xlUp).Select
      Range(Selection, "A2").Select
        With Selection.Phonetics
          On Error Resume Next
          .CharacterType = xlKatakana
          .Alignment = xlPhoneticAlignNoControl
          .Font.Name = "ＭＳ ゴシック"
          .Font.Size = 9
          .Visible = True
          On Error GoTo 0
        End With
      Selection.Columns.AutoFit
      Selection.Rows.AutoFit
    End If
End Sub
Sub 半角カタカナ()
    If Range("A2").Value = "" Then
      MsgBox "A2から「名前」を入力してください"
      Exit Sub
    Else
      Range("A" & Rows.Count).End(xlUp).Select
      Range(Selection, "A2").Select
        With Selection.Phonetics
          On Error Resume Next
          .CharacterType = xlKatakanaHalf
          .Alignment = xlPhoneticAlignNoControl
          .Font.Name = "ＭＳ ゴシック"
          .Font.Size = 11
          .Visible = True
          On Error GoTo 0
        End With
      Selection.Columns.AutoFit
      Selection.Rows.AutoFit
    End If
End Sub
Sub ひらがな()
    If Range("A2").Value = "" Then
      MsgBox "A2から「名前」を入力してください"
      Exit Sub
    Else
      Range("A" & Rows.Count).End(xlUp).Select
      Range(Selection, "A2").Select
        With Selection.Phonetics
          On Error Resume Next
          .CharacterType = xlHiragana
          .Alignment = xlPhoneticAlignNoControl
          .Font.Name = "ＭＳ ゴシック"
          .Font.Size = 9
          .Visible = True
          On Error GoTo 0
        End With
      Selection.Columns.AutoFit
      Selection.Rows.AutoFit
    End If
End Sub
Sub 半角変換()
    Dim B列 As Range
    Dim myRtn As Integer
    Dim myHanni As Range
    Set myHanni = Range("B2:B65536")
    
    If Range("A2").Value = "" Then
      MsgBox "A2から「名前」を入力してください"
      Exit Sub
    End If
      
    If Application.CountA(myHanni) > 0 Then
       myRtn = MsgBox("B列をすべて半角に変換します。よろしいですか？", vbYesNo)
        If myRtn = vbNo Then Exit Sub
        If myRtn = vbYes Then GoTo myHankaku
    Else
      GoTo myHankaku
      
myHankaku:
    Range("B" & Rows.Count).End(xlUp).Select
    Range(Selection, "B2").Select
    For Each B列 In Selection
        B列.Value = StrConv(B列.Value, vbNarrow)
    Next B列
    Columns("B").AutoFit

    End If
End Sub
Sub FORMAT()
  If Application.CountA(Cells) <> 0 Then
    MsgBox "空白シートで実行してください"
    Exit Sub
  Else
    Range("A1").Value = "名前"
    Range("B1").Value = "ふりがな"
    With Range("A1:B1")
        .Interior.ColorIndex = 8
        .HorizontalAlignment = xlHAlignCenter
        .VerticalAlignment = xlVAlignBottom
        .Font.Bold = True
        .RowHeight = 45
    End With
    Columns("A:B").ColumnWidth = 12
   'ボタン作成
    ActiveSheet.Buttons.Add(1, 1, 80, 25).Select
      With Selection
        .OnAction = "ふりがな設定"
        .Characters.Text = "ふりがな設定"
        .Placement = xlFreeFloating
        .PrintObject = False
        .Font.Size = 9
      End With
    ActiveSheet.Buttons.Add(82, 1, 80, 25).Select
      With Selection
        .OnAction = "ふりがな抜き出し"
        .Characters.Text = "ふりがな抜き出し"
        .Placement = xlFreeFloating
        .PrintObject = False
        .Font.Size = 9
      End With
    ActiveSheet.Buttons.Add(163, 1, 80, 25).Select
      With Selection
        .OnAction = "ふりがな非表示"
        .Characters.Text = "ふりがな非表示"
        .Placement = xlFreeFloating
        .PrintObject = False
        .Font.Size = 9
      End With
    ActiveSheet.Buttons.Add(244, 1, 80, 25).Select
      With Selection
        .OnAction = "ふりがな表示"
        .Characters.Text = "ふりがな表示"
        .Placement = xlFreeFloating
        .PrintObject = False
        .Font.Size = 9
      End With
    ActiveSheet.Buttons.Add(325, 1, 80, 25).Select
      With Selection
        .OnAction = "カタカナ"
        .Characters.Text = "カタカナに切替"
        .Placement = xlFreeFloating
        .PrintObject = False
        .Font.Size = 9
      End With
    ActiveSheet.Buttons.Add(406, 1, 80, 25).Select
      With Selection
        .OnAction = "半角カタカナ"
        .Characters.Text = "半角ｶﾀｶﾅに切替"
        .Placement = xlFreeFloating
        .PrintObject = False
        .Font.Size = 9
      End With
    ActiveSheet.Buttons.Add(487, 1, 80, 25).Select
      With Selection
        .OnAction = "ひらがな"
        .Characters.Text = "ひらがなに切替"
        .Placement = xlFreeFloating
        .Font.Size = 9
        .PrintObject = False
      End With
    ActiveSheet.Buttons.Add(570, 1, 50, 25).Select
      With Selection
        .OnAction = "半角変換"
        .Characters.Text = "半角変換"
        .Placement = xlFreeFloating
        .PrintObject = False
        .Font.Size = 9
      End With
    ActiveSheet.Buttons.Add(625, 1, 80, 25).Select
      With Selection
        .OnAction = "修正再設定"
        .Characters.Text = "修正再設定"
        .Placement = xlFreeFloating
        .PrintObject = False
        .Font.Size = 9
      End With
    Range("A2").Select
    ActiveWindow.FreezePanes = True
  End If
End Sub
