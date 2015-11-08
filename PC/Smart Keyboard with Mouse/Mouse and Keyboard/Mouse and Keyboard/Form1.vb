Imports System
Imports System.IO.Ports
Public Class Form1

    Declare Sub mouse_event Lib "user32" Alias "mouse_event" (ByVal dwFlags As Integer, ByVal dx As Integer, ByVal dy As Integer, ByVal cButtons As Integer, ByVal dwExtraInfo As Integer)
    Dim rcText As String
    Dim rcText1 As String
    Dim previousX, previousY As Integer

    Const MOUSEEVENTF_LEFTDOWN = &H2 ' left button down   
    Const MOUSEEVENTF_LEFTUP = &H4 ' left button up  
    Const MOUSEEVENTF_RIGHTDOWN = &H8 ' left button down   
    Const MOUSEEVENTF_RIGHTUP = &H10 ' left button up  

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            SerialPort1.PortName = TextBox1.Text
            SerialPort1.Open()
            Timer1.Enabled = True
            Timer1.Start()
            Button1.Enabled = False
        Catch ex As Exception
            MessageBox.Show(ex.ToString)
        End Try
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Timer1.Enabled = False
        Dim key As Char
        Dim currentCur As Integer
        rcText = rcText + SerialPort1.ReadExisting
        Dim vblLength As Integer = rcText.Length
        If vblLength > 2000 Then
            rcText = rcText.Substring(vblLength - 2001, 2000)
            vblLength = rcText.Length
        End If

        If vblLength > 5 Then
            If rcText(0) = "%" And rcText(5) = "?" Then
                '*************************************************
                'identify the command for keyboard or mouse
                If rcText(1) = "K" Then
                    key = rcText(2)
                    If key = "^" Then
                        My.Computer.Keyboard.SendKeys("{BACKSPACE}")
                    Else
                        Try
                            My.Computer.Keyboard.SendKeys(key)
                        Catch ex As Exception

                        End Try
                    End If
                ElseIf rcText(1) = "L" Then
                    mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 1)
                    mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 1)
                ElseIf rcText(1) = "R" Then
                    mouse_event(MOUSEEVENTF_RIGHTDOWN, 0, 0, 0, 1)
                    mouse_event(MOUSEEVENTF_RIGHTUP, 0, 0, 0, 1)
                ElseIf rcText(1) = "X" Then
                    currentCur = Convert.ToDecimal(rcText.Substring(2, 3))
                    Cursor.Position = New Point(Cursor.Position.X - (currentCur - 336) / 10, Cursor.Position.Y)
                ElseIf rcText(1) = "Y" Then
                    currentCur = Convert.ToDecimal(rcText.Substring(2, 3))
                    Cursor.Position = New Point(Cursor.Position.X, Cursor.Position.Y + (currentCur - 336) / 10)

                End If
                'remove the read part
                Dim TempString As String = rcText.Remove(0, 6)
                rcText = TempString
            Else
                For i = 0 To vblLength - 1 Step 1
                    If rcText(i) = "%" Then
                        If rcText(i + 5) = "?" Then
                            rcText = rcText.Substring(i, vblLength - i - 1)
                            'this is use to terminatr the for loop
                            i = vblLength - 1
                        Else
                            rcText = rcText.Substring(i + 1, vblLength - i - 1)
                            'this is use to terminatr the for loop
                            i = vblLength - 1
                        End If
                    End If
                Next
            End If
            'vbllength smaller than 6
        ElseIf vblLength > 0 Then
            If rcText(0) = "%" Then
                'says that the comming date correctly enter to the string
            Else
                'says comming data have some error
                For i = 0 To vblLength - 1 Step 1
                    If rcText(i) = "%" Then
                        rcText = rcText.Remove(0, i + 1)
                        'this is use to terminatr the for loop
                        i = vblLength - 1
                    End If
                Next
            End If
        End If

        Timer1.Enabled = True
    End Sub

    Private Sub Timer2_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer2.Tick
        Timer1.Enabled = False
        Timer2.Enabled = False

        Try
            'Dim vblLength As Integer = SerialPort1.BytesToRead
            Dim rcText1, rcText2, CurrentX, CurrentY As String
            rcText1 = SerialPort1.ReadTo("%")
            rcText1 = SerialPort1.ReadTo("%")
            rcText2 = SerialPort1.ReadTo("%")

            'XL says left click
            If rcText1(0) = "X" And rcText1(1) = "L" Then

                'XR says it is Riht click
            ElseIf rcText1(0) = "X" And rcText1(1) = "R" Then

                'to indicate to turn into keyboard mode
            ElseIf rcText1(0) = "X" And rcText1(1) = "K" Then
                Timer1.Enabled = True
                Timer2.Enabled = False
            ElseIf rcText1(0) = "X" And rcText2(0) = "Y" Then
                CurrentX = Convert.ToDecimal(rcText1.Substring(1, 3))
                CurrentY = Convert.ToDecimal(rcText2.Substring(1, 3))
                Cursor.Position = New Point(Cursor.Position.X - (CurrentX - 336) / 4, Cursor.Position.Y + (CurrentY - 336) / 4)
            ElseIf rcText2(0) = "X" And rcText1(0) = "Y" Then
                CurrentX = Convert.ToDecimal(rcText2.Substring(1, 3))
                CurrentY = Convert.ToDecimal(rcText1.Substring(1, 3))
                Cursor.Position = New Point(Cursor.Position.X - (CurrentX - 336) / 4, Cursor.Position.Y + (CurrentY - 336) / 4)
            ElseIf rcText1(0) = "K" Or rcText2(0) = "K" Then
                Timer1.Enabled = True
            End If

        Catch ex As Exception
            MessageBox.Show(ex.ToString)
        End Try

        Timer2.Enabled = True
    End Sub

    Private Sub _Port_DataReceived(ByVal sender As Object, ByVal e As System.IO.Ports.SerialDataReceivedEventArgs) Handles SerialPort1.DataReceived


    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)


        Const MOUSEEVENTF_LEFTDOWN = &H2 ' left button down   
        Const MOUSEEVENTF_LEFTUP = &H4 ' left button up  
        Const MOUSEEVENTF_RIGHTDOWN = &H8 ' left button down   
        Const MOUSEEVENTF_RIGHTUP = &H10 ' left button up  


        mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 1)
        mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 1)


    End Sub
    Private Sub Form1_MouseClick(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Me.MouseClick
        'MessageBox.Show("clicked")

    End Sub
End Class
