VERSION 5.00
Begin VB.Form nbpay 
   Caption         =   "Form1"
   ClientHeight    =   7965
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10455
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
   ScaleHeight     =   7965
   ScaleWidth      =   10455
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000E&
      Caption         =   "Payment Gateway"
      Height          =   8175
      Left            =   -120
      TabIndex        =   0
      Top             =   0
      Width           =   10935
      Begin VB.TextBox Text2 
         Height          =   855
         Left            =   4800
         TabIndex        =   6
         Top             =   2520
         Width           =   3855
      End
      Begin VB.TextBox Text1 
         Height          =   735
         Left            =   4800
         TabIndex        =   4
         Text            =   "634293293121"
         Top             =   1200
         Width           =   3735
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H8000000D&
         Caption         =   "Go Back"
         BeginProperty Font 
            Name            =   "Lucida Handwriting"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   6240
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   4920
         Width           =   3735
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H000000C0&
         Caption         =   "Pay"
         BeginProperty Font 
            Name            =   "Lucida Handwriting"
            Size            =   36
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1095
         Left            =   1800
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   4920
         Width           =   3615
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Amount to be Paid"
         Height          =   495
         Left            =   840
         TabIndex        =   5
         Top             =   2760
         Width           =   4095
      End
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Transaction Id"
         Height          =   375
         Left            =   840
         TabIndex        =   3
         Top             =   1320
         Width           =   3615
      End
   End
End
Attribute VB_Name = "nbpay"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
MsgBox "Your Ticket has been booked"
Printticket.Text4.Text = Int((Rnd * 9) + 1)
Unload Me
Load Printticket
Printticket.Show
End Sub

Private Sub Command2_Click()
MsgBox "Your Payment has been canclled"
Unload Me
Load front
front.Show
End Sub
