VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.5#0"; "comctl32.ocx"
Begin VB.Form journey 
   BackColor       =   &H8000000E&
   ClientHeight    =   9345
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15540
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "Lucida Calligraphy"
      Size            =   21.75
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   Picture         =   "Form2.frx":0000
   ScaleHeight     =   9345
   ScaleWidth      =   15540
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      ForeColor       =   &H80000008&
      Height          =   7095
      Left            =   240
      TabIndex        =   1
      Top             =   1800
      Width           =   13935
      Begin ComctlLib.ProgressBar ProgressBar1 
         Height          =   615
         Left            =   480
         TabIndex        =   13
         Top             =   5640
         Visible         =   0   'False
         Width           =   13095
         _ExtentX        =   23098
         _ExtentY        =   1085
         _Version        =   327682
         Appearance      =   0
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H000000FF&
         Caption         =   "GO Back"
         Height          =   1095
         Left            =   11160
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   4080
         Width           =   2295
      End
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   100
         Left            =   1560
         Top             =   6360
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H000000FF&
         Caption         =   "Search "
         Height          =   1095
         Left            =   4920
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   12
         Top             =   4080
         Width           =   5295
      End
      Begin VB.ComboBox Combo5 
         Height          =   675
         Left            =   960
         TabIndex        =   11
         Text            =   "Select"
         Top             =   3000
         Width           =   3495
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   615
         Left            =   10440
         TabIndex        =   8
         Top             =   1560
         Width           =   3375
         _ExtentX        =   5953
         _ExtentY        =   1085
         _Version        =   393216
         Format          =   132579329
         CurrentDate     =   43181
      End
      Begin VB.ComboBox Combo2 
         BeginProperty Font 
            Name            =   "Lucida Calligraphy"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   5760
         TabIndex        =   7
         Text            =   "Select from list"
         Top             =   1560
         Width           =   3855
      End
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "Lucida Calligraphy"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   960
         TabIndex        =   4
         Text            =   "Select from list"
         Top             =   1560
         Width           =   3735
      End
      Begin VB.OptionButton Option1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         Caption         =   "One Way"
         ForeColor       =   &H80000008&
         Height          =   555
         Left            =   360
         TabIndex        =   2
         Top             =   240
         Width           =   2655
      End
      Begin VB.Label Label8 
         Caption         =   "Searching....."
         Height          =   735
         Left            =   600
         TabIndex        =   15
         Top             =   5040
         Visible         =   0   'False
         Width           =   2895
      End
      Begin VB.Label Label6 
         Height          =   615
         Left            =   3480
         TabIndex        =   14
         Top             =   5040
         UseMnemonic     =   0   'False
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.Label Label7 
         BackStyle       =   0  'Transparent
         Caption         =   "Classs"
         BeginProperty Font 
            Name            =   "Lucida Calligraphy"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   615
         Index           =   2
         Left            =   960
         TabIndex        =   10
         Top             =   2400
         Width           =   2415
      End
      Begin VB.Label Label5 
         BackStyle       =   0  'Transparent
         Caption         =   "Departure"
         ForeColor       =   &H000000FF&
         Height          =   495
         Left            =   10320
         TabIndex        =   9
         Top             =   840
         Width           =   3135
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "To"
         ForeColor       =   &H000000FF&
         Height          =   495
         Left            =   6120
         TabIndex        =   6
         Top             =   960
         Width           =   1575
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "From"
         ForeColor       =   &H000000FF&
         Height          =   495
         Left            =   840
         TabIndex        =   5
         Top             =   960
         Width           =   2895
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   300
      Left            =   240
      Top             =   840
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Flight  Reservation"
      ForeColor       =   &H000000FF&
      Height          =   975
      Left            =   960
      TabIndex        =   3
      Top             =   960
      Width           =   5295
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Helpline number :-9471476916     Mail us at :-flight@irctc.co.in"
      BeginProperty Font 
         Name            =   "Lucida Fax"
         Size            =   26.25
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   20295
   End
End
Attribute VB_Name = "journey"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
Pasdetail.Text2.Text = Combo1.Text
Pasdetail.Text3.Text = Combo2.Text
Pasdetail.Text5.Text = Combo5.Text
Printticket.Text5.Text = Combo1.Text
Printticket.Text6.Text = Combo2.Text
Printticket.Text7.Text = Combo5.Text
Pasdetail.Text4.Text = DTPicker1.Value
Printticket.Text2.Text = DTPicker1.Value
If Combo1 = Combo2 Then
MsgBox "Enter two different cities "
Else
Timer2.Enabled = True
Label6.Visible = True
Label8.Visible = True
ProgressBar1.Visible = True
End If
Printticket.Text5.Text = Combo1.Text
End Sub

Private Sub Command2_Click()
Unload Me
Load login
login.Show
End Sub
Private Sub Form_Load()
Label1.Caption = Label1.Caption & Space(20)
Timer1.Enabled = True
Combo1.AddItem ("Mumbai(BOM)")
Combo1.AddItem ("New Delhi(DEL)")
Combo1.AddItem ("Bengaluru(BLR)")
Combo1.AddItem ("Chennai(MAA)")
Combo1.AddItem ("Kolkata(CCU)")
Combo1.AddItem ("Lucknow(LKO)")


Combo2.AddItem ("Mumbai(BOM)")
Combo2.AddItem ("New Delhi(DEL)")
Combo2.AddItem ("Bengaluru(BLR)")
Combo2.AddItem ("Chennai(MAA)")
Combo2.AddItem ("Kolkata(CCU)")
Combo2.AddItem ("Lucknow(LKO)")


Combo5.AddItem ("Economy")
Combo5.AddItem ("Business")
Combo5.AddItem ("Premium Economy")
End Sub


Private Sub Timer1_Timer()
Dim str As String
str = journey.Label1.Caption
str = Mid$(str, 2, Len(str)) + Left(str, 1)
journey.Label1.Caption = str
End Sub

Private Sub Timer2_Timer()
Timer2.Interval = Rnd * 300 + 10
ProgressBar1.Value = ProgressBar1.Value + 10
Label6.Caption = ProgressBar1.Value & "%"
If Label6.Caption = 100 & "%" Then
MsgBox "Searched Completed"
Unload Me
Load fdetail
fdetail.Show
End If
End Sub
