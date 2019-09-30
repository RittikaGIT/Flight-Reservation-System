VERSION 5.00
Begin VB.Form Netbanking 
   ClientHeight    =   8280
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   13275
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
   ScaleHeight     =   8280
   ScaleWidth      =   13275
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000E&
      Caption         =   "Login"
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   13335
      Begin VB.CommandButton Command2 
         BackColor       =   &H8000000D&
         Caption         =   "Go Back"
         Height          =   1095
         Left            =   4320
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   4320
         Width           =   2655
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H000000FF&
         Caption         =   "Login"
         Height          =   1095
         Left            =   840
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   4320
         Width           =   2415
      End
      Begin VB.TextBox Text2 
         Height          =   645
         IMEMode         =   3  'DISABLE
         Left            =   600
         PasswordChar    =   "*"
         TabIndex        =   5
         Top             =   3240
         Width           =   5895
      End
      Begin VB.TextBox Text1 
         Height          =   615
         Left            =   600
         TabIndex        =   3
         Top             =   1800
         Width           =   6135
      End
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Password"
         Height          =   855
         Left            =   600
         TabIndex        =   4
         Top             =   2760
         Width           =   4815
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Username"
         Height          =   1095
         Left            =   600
         TabIndex        =   2
         Top             =   1320
         Width           =   2535
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "(CARE: Username and password are case sensitive.) "
         BeginProperty Font 
            Name            =   "Lucida Handwriting"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   735
         Left            =   240
         TabIndex        =   1
         Top             =   720
         Width           =   8055
      End
      Begin VB.Image Image2 
         Height          =   5610
         Left            =   7080
         Picture         =   "Netbanking.frx":0000
         Top             =   2640
         Width           =   7500
      End
      Begin VB.Image Image1 
         Height          =   2940
         Left            =   8400
         Picture         =   "Netbanking.frx":1106D
         Top             =   360
         Width           =   4800
      End
   End
End
Attribute VB_Name = "Netbanking"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" Or Text2.Text = "" Then
MsgBox "Enter the username or password"
Else
Unload Me
Load nbpay
nbpay.Show
End If
End Sub

Private Sub Command2_Click()
Unload Me
Load Payment
Payment.Show
End Sub
