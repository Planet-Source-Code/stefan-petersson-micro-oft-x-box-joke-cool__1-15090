VERSION 5.00
Begin VB.Form frmxcontroller 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "X-box controller"
   ClientHeight    =   5610
   ClientLeft      =   45
   ClientTop       =   285
   ClientWidth     =   7155
   Icon            =   "main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   5610
   ScaleWidth      =   7155
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrscan 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   5520
      Top             =   120
   End
   Begin VB.Timer tmr1 
      Interval        =   1000
      Left            =   5040
      Top             =   120
   End
   Begin VB.CommandButton cmdend 
      Caption         =   "EXIT"
      Height          =   495
      Left            =   1200
      TabIndex        =   7
      Top             =   4560
      Width           =   2775
      Visible         =   0   'False
   End
   Begin VB.Label lblbill 
      BackStyle       =   0  'Transparent
      Height          =   1095
      Left            =   600
      TabIndex        =   0
      Top             =   4080
      Width           =   3855
   End
   Begin VB.Line ln2 
      BorderColor     =   &H000000FF&
      BorderWidth     =   4
      Visible         =   0   'False
      X1              =   4900
      X2              =   3050
      Y1              =   2160
      Y2              =   2160
   End
   Begin VB.Line ln1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   4
      Visible         =   0   'False
      X1              =   2400
      X2              =   0
      Y1              =   2160
      Y2              =   2160
   End
   Begin VB.Label lblgamec 
      BackColor       =   &H8000000A&
      Caption         =   "Gamecube button"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   6
      Top             =   1320
      Width           =   2175
      Visible         =   0   'False
   End
   Begin VB.Shape ring 
      BorderColor     =   &H000000FF&
      BorderWidth     =   4
      FillColor       =   &H000000FF&
      Height          =   615
      Left            =   2430
      Shape           =   3  'Circle
      Top             =   1870
      Width           =   615
      Visible         =   0   'False
   End
   Begin VB.Label lblblub 
      BackColor       =   &H8000000A&
      Caption         =   "Green Blub"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   5
      Top             =   1080
      Width           =   2175
      Visible         =   0   'False
   End
   Begin VB.Image imgblub 
      Height          =   1260
      Left            =   5400
      Picture         =   "main.frx":08CA
      Top             =   1800
      Width           =   1320
      Visible         =   0   'False
   End
   Begin VB.Label lblblackcolor 
      BackColor       =   &H8000000A&
      Caption         =   "Black color"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   4
      Top             =   840
      Width           =   2175
      Visible         =   0   'False
   End
   Begin VB.Label lbldreamcontroller 
      BackColor       =   &H8000000A&
      Caption         =   "Dreamcast controller"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5160
      TabIndex        =   3
      Top             =   600
      Width           =   2175
      Visible         =   0   'False
   End
   Begin VB.Label lblscan 
      BackStyle       =   0  'Transparent
      Caption         =   "Scanning for good ideas..."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   240
      TabIndex        =   2
      Top             =   4680
      Width           =   4815
      Visible         =   0   'False
   End
   Begin VB.Image imgscanline 
      Height          =   75
      Left            =   510
      Picture         =   "main.frx":5FAC
      Top             =   100
      Width           =   3750
      Visible         =   0   'False
   End
   Begin VB.Label lbltime 
      Caption         =   "0"
      Height          =   375
      Left            =   6000
      TabIndex        =   1
      Top             =   120
      Width           =   1575
      Visible         =   0   'False
   End
   Begin VB.Line Line1 
      X1              =   4920
      X2              =   4920
      Y1              =   3360
      Y2              =   0
   End
   Begin VB.Image imgbill 
      Height          =   2250
      Left            =   4920
      Picture         =   "main.frx":6E9E
      Top             =   3360
      Width           =   2235
   End
   Begin VB.Image imgtotalherm 
      Height          =   3735
      Left            =   480
      Picture         =   "main.frx":17560
      Top             =   120
      Width           =   3825
      Visible         =   0   'False
   End
   Begin VB.Image imgxbox 
      Height          =   3735
      Left            =   480
      Picture         =   "main.frx":460A2
      Top             =   120
      Width           =   3825
      Visible         =   0   'False
   End
   Begin VB.Image imgdream2 
      Height          =   3735
      Left            =   480
      Picture         =   "main.frx":74BE4
      Top             =   120
      Width           =   3825
      Visible         =   0   'False
   End
   Begin VB.Image imgdream 
      Height          =   3735
      Left            =   480
      Picture         =   "main.frx":A3726
      Top             =   120
      Width           =   3825
      Visible         =   0   'False
   End
   Begin VB.Image imgdreamx 
      Height          =   3735
      Left            =   480
      Picture         =   "main.frx":D2268
      Top             =   120
      Width           =   3825
      Visible         =   0   'False
   End
   Begin VB.Image imggamecube2 
      Height          =   3735
      Left            =   480
      Picture         =   "main.frx":100DAA
      Top             =   0
      Width           =   3825
      Visible         =   0   'False
   End
   Begin VB.Image imggamecube 
      Height          =   3735
      Left            =   480
      Picture         =   "main.frx":12F8EC
      Top             =   0
      Width           =   3825
      Visible         =   0   'False
   End
   Begin VB.Image imgbubble 
      Height          =   1410
      Left            =   360
      Picture         =   "main.frx":15E42E
      Top             =   3960
      Width           =   4485
      Visible         =   0   'False
   End
End
Attribute VB_Name = "frmxcontroller"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False



Private Sub cmdend_Click()
MsgBox "Don't gossip now huh?!?!?!", vbExclamation, "Bill Gates:"
End
End Sub

Private Sub Form_Unload(Cancel As Integer)
MsgBox "Don't gossip now huh?!?!?!", vbExclamation, "Bill Gates:"
End Sub

Private Sub tmr1_Timer()
lbltime.Caption = lbltime.Caption + 1

If lbltime.Caption = "2" Then
imgbubble.Visible = True
lblbill.Caption = "Lets make the X-Box controller. We need insperation."
End If

If lbltime.Caption = "4" Then
imgbubble.Visible = False
lblbill.Caption = ""
End If

If lbltime.Caption = "5" Then
imgbubble.Visible = True
lblbill.Caption = "Lets take a little look on the dreamcast controller... Here we go."
End If

If lbltime.Caption = "7" Then
imgdream.Visible = True
End If

If lbltime.Caption = "9" Then
imgbubble.Visible = False
lblbill.Caption = ""
End If

If lbltime.Caption = "11" Then
tmrscan.Enabled = True
imgscanline.Visible = True
tmr1.Enabled = False
lblscan.Visible = True
End If

If lbltime.Caption = "12" Then
imgbubble.Visible = True
lblbill.Caption = "What the heck... Take all of it!"
End If

If lbltime.Caption = "14" Then
imgbubble.Visible = False
lblbill.Caption = ""
End If

If lbltime.Caption = "15" Then
lbldreamcontroller.Visible = True
End If

If lbltime.Caption = "16" Then
imgbubble.Visible = True
lblbill.Caption = "What color should it be..... Aha! We will make it black, just like my boxers!"
End If

If lbltime.Caption = "18" Then
imgdream.Visible = False
imgdream2.Visible = True
End If

If lbltime.Caption = "19" Then
imgbubble.Visible = False
lblbill.Caption = ""
lblblackcolor.Visible = True
End If

If lbltime.Caption = "21" Then
imgbubble.Visible = True
lblbill.Caption = "Lets replace the dreamcast vm socket and dreamcast logo with this blub."
End If

If lbltime.Caption = "23" Then
imgbubble.Visible = True
lblbill.Caption = "Lets replace the dreamcast vm socket and dreamcast logo with this blub."
imgblub.Visible = True
End If

If lbltime.Caption = "24" Then
imgbubble.Visible = False
lblbill.Caption = ""
End If

If lbltime.Caption = "25" Then
imgblub.Visible = False
imgdream2.Visible = False
imgdreamx.Visible = True
End If

If lbltime.Caption = "26" Then
lblblub.Visible = True
End If

If lbltime.Caption = "28" Then
imgbubble.Visible = True
lblbill.Caption = "Something is missing! We need more insperation... Lets take a little look on the gamecube controller!!!!!!!"
End If

If lbltime.Caption = "30" Then
imgdreamx.Visible = False
imggamecube.Visible = True
End If

If lbltime.Caption = "30" Then
imgdreamx.Visible = False
imggamecube.Visible = True
End If

If lbltime.Caption = "32" Then
imgbubble.Visible = False
lblbill.Caption = ""
imgscanline.Top = 100
tmrscan.Enabled = True
imgscanline.Visible = True
tmr1.Enabled = False
lblscan.Visible = True
End If

If lbltime.Caption = "33" Then
ring.Visible = True
ln1.Visible = True
ln2.Visible = True
End If

If lbltime.Caption = "34" Then
ring.Visible = True
End If

If lbltime.Caption = "35" Then
imgbubble.Visible = True
lblbill.Caption = "Aha!!! Thats a pretty good idea!!! Lets borrow the gamecube analouge C button!"
End If

If lbltime.Caption = "37" Then
imgbubble.Visible = False
lblbill.Caption = ""
imggamecube.Visible = False
imggamecube2.Visible = True
lblgamec.Visible = True
ring.Visible = False
ln1.Visible = False
ln2.Visible = False
End If

If lbltime.Caption = "38" Then
imggamecube2.Visible = False
End If

If lbltime.Caption = "40" Then
imgdreamx.Visible = True
End If

If lbltime.Caption = "41" Then
imgdreamx.Visible = False
imgtotalherm.Visible = True
End If

If lbltime.Caption = "42" Then
imgbubble.Visible = True
lblbill.Caption = "Perfect!"
End If

If lbltime.Caption = "43" Then
imgbubble.Visible = False
lblbill.Caption = ""
End If

If lbltime.Caption = "44" Then
imgbubble.Visible = True
lblbill.Caption = "Now we must change the design a little bit... Here we gooo!"
End If

If lbltime.Caption = "46" Then
imgbubble.Visible = False
lblbill.Caption = ""

End If

If lbltime.Caption = "46" Then
imgbubble.Visible = False
lblbill.Caption = ""
imgtotalherm.Visible = False
End If

If lbltime.Caption = "47" Then
lblscan.Caption = "Transforming..."
lblscan.Visible = True
End If

If lbltime.Caption = "48" Then
lblscan.Visible = False
End If

If lbltime.Caption = "49" Then
lblscan.Visible = True
End If

If lbltime.Caption = "50" Then
lblscan.Visible = False
End If

If lbltime.Caption = "51" Then
lblscan.Visible = True
End If

If lbltime.Caption = "52" Then
lblscan.Visible = False
End If

If lbltime.Caption = "53" Then
imgxbox.Visible = True
End If

If lbltime.Caption = "54" Then
imgbubble.Visible = True
lblbill.Caption = "Oh! It's perfect! No one will suspect us now! Buhahaha!"
End If

If lbltime.Caption = "56" Then
imgbubble.Visible = False
lblbill.Caption = ""
End If

If lbltime.Caption = "57" Then
cmdend.Visible = True
End If
End Sub

Private Sub tmrscan_Timer()
imgscanline.Top = imgscanline.Top + 100

If imgscanline.Top = 3700 Then
tmrscan.Enabled = False
imgscanline.Visible = False
lblscan.Visible = False
tmr1.Enabled = True
End If
End Sub

Private Sub txttemp_Change()
lbltime.Caption = txttemp.Text
End Sub
