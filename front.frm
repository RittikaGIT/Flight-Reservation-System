VERSION 5.00
Begin VB.Form front 
   BackColor       =   &H00C0C0C0&
   Caption         =   "Form4"
   ClientHeight    =   9105
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   15375
   BeginProperty Font 
      Name            =   "Lucida Handwriting"
      Size            =   15.75
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form4"
   Picture         =   "front.frx":0000
   ScaleHeight     =   9105
   ScaleWidth      =   15375
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command5 
      BackColor       =   &H0080FF80&
      Caption         =   "ABOUT US"
      Height          =   855
      Left            =   480
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   3720
      Width           =   3015
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H000000FF&
      Caption         =   "CANCELLATION"
      Height          =   855
      Left            =   360
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2520
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00FFFFFF&
      Caption         =   "EXIT"
      Height          =   855
      Left            =   4800
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   2520
      Width           =   3135
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H008080FF&
      Caption         =   "Create Ur account"
      Height          =   855
      Left            =   4800
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1200
      Width           =   3735
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FF80FF&
      Caption         =   "RESERVATION"
      Height          =   855
      Left            =   360
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1200
      Width           =   3375
   End
End
Attribute VB_Name = "front"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
login.Data1.Recordset.AddNew
Unload Me
Load login
login.Show
End Sub

Private Sub Command2_Click()
Create.Data1.Recordset.AddNew
Unload Me
Load Create
Create.Show
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Command4_Click()
Unload Me
Load cancellation
cancellation.Show
End Sub

Private Sub Command5_Click()
Unload Me
Load about
about.Show
End Sub

