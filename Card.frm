VERSION 5.00
Begin VB.Form Card 
   Caption         =   "Form1"
   ClientHeight    =   6210
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   6915
   BeginProperty Font 
      Name            =   "Lucida Handwriting"
      Size            =   18
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   6210
   ScaleWidth      =   6915
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Card Details"
      BeginProperty Font 
         Name            =   "Lucida Handwriting"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   6135
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6855
      Begin VB.CommandButton Command2 
         BackColor       =   &H00C00000&
         Caption         =   "Go Back"
         Height          =   855
         Left            =   3840
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   4320
         Width           =   2175
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H000000FF&
         Caption         =   "Pay"
         BeginProperty Font 
            Name            =   "Lucida Handwriting"
            Size            =   26.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   855
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   4320
         Width           =   2895
      End
      Begin VB.TextBox Text3 
         Height          =   585
         Left            =   480
         TabIndex        =   6
         Top             =   3000
         Width           =   2175
      End
      Begin VB.TextBox Text2 
         Height          =   585
         Left            =   3480
         TabIndex        =   4
         Top             =   3000
         Width           =   2415
      End
      Begin VB.TextBox Text1 
         Height          =   735
         Left            =   360
         TabIndex        =   2
         Top             =   1440
         Width           =   5295
      End
      Begin VB.Label Label3 
         Caption         =   "MM/yy"
         Height          =   615
         Left            =   480
         TabIndex        =   5
         Top             =   2400
         Width           =   1935
      End
      Begin VB.Label Label2 
         Caption         =   "CVV"
         Height          =   495
         Left            =   4080
         TabIndex        =   3
         Top             =   2520
         Width           =   1935
      End
      Begin VB.Label Label1 
         Caption         =   "Enter  ur Card nummber"
         Height          =   615
         Left            =   240
         TabIndex        =   1
         Top             =   720
         Width           =   5895
      End
   End
End
Attribute VB_Name = "Card"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Then
MsgBox "Enter the above details"
Else
Printticket.Text4.Text = Int((Rnd * 9) + 1)
Unload Me
Load Printticket
Printticket.Show
End If
End Sub

Private Sub Command2_Click()
MsgBox "Payment Calcelled "
Unload Me
Load front
front.Show
End Sub
Private Sub Text1_Change()
If Not IsNumeric(Text1) Then MsgBox "Please Enter Numerical Values only"
End Sub

Private Sub Text2_Change()
If Not IsNumeric(Text2) Then MsgBox "Please Enter Numerical Values only"
End Sub

Private Sub Text3_Change()
If Not IsNumeric(Text3) Then MsgBox "Please Enter Numerical Values only"
End Sub
