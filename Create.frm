VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomct2.ocx"
Begin VB.Form Create 
   Caption         =   "Form1"
   ClientHeight    =   7485
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10335
   BeginProperty Font 
      Name            =   "Lucida Handwriting"
      Size            =   15.75
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   7485
   ScaleWidth      =   10335
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFC0&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7575
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   10455
      Begin VB.TextBox Text3 
         Height          =   615
         Left            =   3240
         TabIndex        =   14
         Top             =   2880
         Width           =   1575
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         DataField       =   "dob"
         DataSource      =   "Data1"
         Height          =   615
         Left            =   3240
         TabIndex        =   13
         Top             =   2160
         Width           =   3375
         _ExtentX        =   5953
         _ExtentY        =   1085
         _Version        =   393216
         Format          =   132579329
         CurrentDate     =   43220
      End
      Begin VB.Data Data1 
         Caption         =   "Data1"
         Connect         =   "Access"
         DatabaseName    =   "F:\VB Project\account.mdb"
         DefaultCursorType=   0  'DefaultCursor
         DefaultType     =   2  'UseODBC
         Exclusive       =   0   'False
         Height          =   735
         Left            =   2760
         Options         =   0
         ReadOnly        =   0   'False
         RecordsetType   =   1  'Dynaset
         RecordSource    =   "user"
         Top             =   6600
         Visible         =   0   'False
         Width           =   3015
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Go Back"
         Height          =   735
         Left            =   5760
         TabIndex        =   12
         Top             =   5640
         Width           =   3015
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Create an  Account"
         Height          =   735
         Left            =   960
         TabIndex        =   11
         Top             =   5640
         Width           =   4095
      End
      Begin VB.TextBox Text6 
         DataField       =   "password"
         DataSource      =   "Data1"
         Height          =   525
         IMEMode         =   3  'DISABLE
         Left            =   3240
         PasswordChar    =   "*"
         TabIndex        =   10
         Top             =   4440
         Width           =   3975
      End
      Begin VB.TextBox Text5 
         DataField       =   "mailid"
         DataSource      =   "Data1"
         Height          =   615
         Left            =   3240
         TabIndex        =   9
         Top             =   3600
         Width           =   3975
      End
      Begin VB.TextBox Text2 
         DataField       =   "name"
         DataSource      =   "Data1"
         Height          =   525
         Left            =   3240
         TabIndex        =   6
         Top             =   1440
         Width           =   3855
      End
      Begin VB.TextBox Text1 
         DataField       =   "user name"
         DataSource      =   "Data1"
         Height          =   525
         Left            =   3240
         TabIndex        =   2
         Top             =   600
         Width           =   3855
      End
      Begin VB.Label Label6 
         BackColor       =   &H00C0FFC0&
         Caption         =   "Password"
         Height          =   495
         Left            =   480
         TabIndex        =   8
         Top             =   4440
         Width           =   1815
      End
      Begin VB.Label Label5 
         BackColor       =   &H00C0FFC0&
         Caption         =   "E-mail id"
         Height          =   735
         Left            =   480
         TabIndex        =   7
         Top             =   3720
         Width           =   2055
      End
      Begin VB.Label Label4 
         BackColor       =   &H00C0FFC0&
         Caption         =   "Age"
         Height          =   495
         Left            =   480
         TabIndex        =   5
         Top             =   2880
         Width           =   1575
      End
      Begin VB.Label Label3 
         BackColor       =   &H00C0FFC0&
         Caption         =   "D.O.B"
         Height          =   495
         Left            =   480
         TabIndex        =   4
         Top             =   2160
         Width           =   1935
      End
      Begin VB.Label Label2 
         BackColor       =   &H00C0FFC0&
         Caption         =   "Name"
         Height          =   495
         Left            =   480
         TabIndex        =   3
         Top             =   1440
         Width           =   2415
      End
      Begin VB.Label Label1 
         BackColor       =   &H00C0FFC0&
         Caption         =   "Username"
         Height          =   615
         Left            =   480
         TabIndex        =   1
         Top             =   600
         Width           =   2415
      End
   End
End
Attribute VB_Name = "Create"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" Then
MsgBox "Ener Ur user name "
Else
If Text2.Text = "" Then
MsgBox "Enter Ur name"
Else
If Text3.Text = "" Then
MsgBox "Enter Ur Age"
Else
If Text5.Text = "" Then
MsgBox "Enter ur mail id "
Else
If Text6.Text = "" Then
MsgBox "Enter ur password "
Else
MsgBox "Account Creation Successful"
Unload Me
Load login
login.Show
End If
End If
End If
End If
End If
Data1.Recordset.AddNew
login.Data1.Recordset.AddNew
End Sub

Private Sub Command2_Click()
Unload Me
Load login
login.Show
End Sub
Private Sub Text3_Change()
If Not IsNumeric(Text3) Then MsgBox "Please Enter Numerical Values only"
End Sub
