Set WshShell=WScript.CreateObject("WScript.Shell")
Set objFS = WScript.CreateObject("Scripting.FileSystemObject")

Const CONF="complete.inf"
If Not objFs.FileExists(CONF) Then
  WScript.Quit(-1)
End If
Set objTs=objFs.OpenTextFile(CONF,1,False)
Do While Not objTs.AtEndOfStream
  aryDat=Split(objTs.readLine,",")
  Set objUrl=WshShell.CreateShortcut(objFs.BuildPath(WshShell.SpecialFolders("Favorites"),aryDat(0) & ".url"))
  objUrl.TargetPath=aryDat(1)
  objUrl.Save
Loop
objTs.Close

iBtn = WshShell.Popup("�C���X�g�[�����������܂���", 60, "Microsoft Office Viewer �Z�b�g�A�b�v�c�[��", vbOKOnly + vbInformation + vbDefaultButton1)
