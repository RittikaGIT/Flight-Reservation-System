VERSION 5.00
Begin VB.Form Payment 
   BackColor       =   &H8000000E&
   Caption         =   "Form1"
   ClientHeight    =   5835
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   16185
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
   ScaleHeight     =   5835
   ScaleWidth      =   16185
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000E&
      Caption         =   "Payment"
      BeginProperty Font 
         Name            =   "Lucida Handwriting"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   7695
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   7455
      Begin VB.CommandButton Command3 
         BackColor       =   &H000000C0&
         Caption         =   "Pay Later"
         Height          =   975
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   4320
         Width           =   3735
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H8000000D&
         Caption         =   "Net Banking"
         Height          =   855
         Left            =   1560
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   2640
         Width           =   3735
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H8000000D&
         Caption         =   "Debit Card With Pin"
         Height          =   975
         Left            =   1440
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   1080
         Width           =   4215
      End
   End
   Begin VB.Image Image1 
      Height          =   5445
      Left            =   7080
      Picture         =   "Payment.frx":0000
      Top             =   240
      Width           =   10365
   End
End
Attribute VB_Name = "Payment"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
Load Card
Card.Show
End Sub

Private Sub Command2_Click()
Unload Me
Load Netbanking
Netbanking.Show
End Sub

Private Sub Command3_Click()
Printticket.Text4.Text = Int((Rnd * 9) + 1)
Unload Me
Load Printticket
Printticket.Show
End Sub

