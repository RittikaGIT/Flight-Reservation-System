VERSION 5.00
Begin VB.Form login 
   BackColor       =   &H00FF0000&
   Caption         =   "Form1"
   ClientHeight    =   10260
   ClientLeft      =   195
   ClientTop       =   540
   ClientWidth     =   15690
   FillColor       =   &H000000FF&
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   10260
   ScaleWidth      =   15690
   StartUpPosition =   3  'Windows Default
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "F:\VB Project\account.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   615
      Left            =   4200
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "login info"
      Top             =   6720
      Visible         =   0   'False
      Width           =   3495
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H000000FF&
      Caption         =   "Create a New Account"
      BeginProperty Font 
         Name            =   "Lucida Fax"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1680
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   5400
      Width           =   3615
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C00000&
      Caption         =   "Login"
      BeginProperty Font 
         Name            =   "Lucida Fax"
         Size            =   18
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   4575
      Left            =   1560
      TabIndex        =   1
      Top             =   1680
      Width           =   6255
      Begin VB.CommandButton Command4 
         BackColor       =   &H000000FF&
         Caption         =   "Go Back"
         BeginProperty Font 
            Name            =   "Lucida Handwriting"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   4080
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   3720
         Width           =   1935
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H8000000A&
         Caption         =   "Login"
         BeginProperty Font 
            Name            =   "Lucida Fax"
            Size            =   18
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   2160
         TabIndex        =   7
         Top             =   2760
         Width           =   1575
      End
      Begin VB.TextBox Text2 
         DataField       =   "password"
         DataSource      =   "Data1"
         BeginProperty Font 
            Name            =   "Lucida Handwriting"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         IMEMode         =   3  'DISABLE
         Left            =   2280
         PasswordChar    =   "*"
         TabIndex        =   5
         Top             =   1800
         Width           =   3375
      End
      Begin VB.TextBox Text1 
         DataField       =   "user id "
         DataSource      =   "Data1"
         BeginProperty Font 
            Name            =   "Lucida Handwriting"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2280
         TabIndex        =   3
         Top             =   720
         Width           =   3375
      End
      Begin VB.Label Label4 
         BackColor       =   &H8000000E&
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "Lucida Fax"
            Size            =   18
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   120
         TabIndex        =   6
         Top             =   1920
         Width           =   2055
      End
      Begin VB.Label Label3 
         BackColor       =   &H8000000E&
         Caption         =   "User ID"
         BeginProperty Font 
            Name            =   "Lucida Fax"
            Size            =   18
            Charset         =   0
            Weight          =   600
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   120
         TabIndex        =   4
         Top             =   840
         Width           =   1815
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000E&
         BorderStyle     =   1  'Fixed Single
         Height          =   4095
         Left            =   0
         TabIndex        =   2
         Top             =   480
         Width           =   6255
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   300
      Left            =   240
      Top             =   0
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C00000&
      Caption         =   "   Welcome to airline reservation        Welcome to airline reservation"
      BeginProperty Font 
         Name            =   "Lucida Fax"
         Size            =   21.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   480
      Width           =   19455
   End
End
Attribute VB_Name = "login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
With Create.Data1.Recordset
.FindFirst "[user name]like'" + Text1.Text + "'"
If .NoMatch Then
MsgBox "User id not found"
Else
Create.Data1.Recordset.Filter = "[user name]'" & Text1.Text & "'"
End If
End With
With Create.Data1.Recordset
.FindFirst "[password]like'" + Text2.Text + "'"
If .NoMatch Then
MsgBox "Passsword Incorrect"
Else
Printticket.Text1.Text = Text1.Text
Unload Me
Load journey
journey.Show
Data1.Recordset.AddNew
End If
End With
End Sub

Private Sub Command2_Click()
Unload Me
Load front
front.Show
End Sub

Private Sub Command3_Click()
Unload Me
Load Create
Create.Show
Create.Data1.Recordset.AddNew
End Sub

Private Sub Command4_Click()
Unload Me
Load front
front.Show
End Sub

Private Sub Form_Load()
Label1.Caption = Label1.Caption & Space(20)
Timer1.Enabled = True
End Sub

Private Sub Timer1_Timer()
Dim str As String
str = login.Label1.Caption
str = Mid$(str, 2, Len(str)) + Left(str, 1)
login.Label1.Caption = str
End Sub
