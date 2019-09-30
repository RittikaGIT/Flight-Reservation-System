VERSION 5.00
Begin VB.Form cancellation 
   BackColor       =   &H8000000E&
   Caption         =   "S"
   ClientHeight    =   7095
   ClientLeft      =   195
   ClientTop       =   540
   ClientWidth     =   11790
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
   ScaleHeight     =   7095
   ScaleWidth      =   11790
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      BackColor       =   &H000000FF&
      Caption         =   "CANCLE UR TICKET"
      Height          =   855
      Left            =   1920
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   5400
      Width           =   3975
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H8000000F&
      BorderStyle     =   0  'None
      Height          =   525
      Left            =   5760
      TabIndex        =   7
      Top             =   3000
      Width           =   3735
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H000000FF&
      Caption         =   "Home"
      Height          =   855
      Left            =   7560
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   5400
      Width           =   2895
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H8000000F&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Lucida Fax"
         Size            =   15.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5760
      TabIndex        =   4
      Top             =   4080
      Width           =   3735
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H8000000F&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Lucida Fax"
         Size            =   15.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000040&
      Height          =   495
      Left            =   5760
      TabIndex        =   2
      Top             =   2160
      Width           =   3735
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "ENTER FLIGHT NUMBER"
      Height          =   735
      Left            =   840
      TabIndex        =   5
      Top             =   3120
      Width           =   4815
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Transaction Id"
      Height          =   615
      Left            =   960
      TabIndex        =   3
      Top             =   4080
      Width           =   4935
   End
   Begin VB.Label Label2 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "Enter user id"
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   960
      TabIndex        =   1
      Top             =   2280
      Width           =   3495
   End
   Begin VB.Label Label1 
      BackColor       =   &H8000000E&
      BackStyle       =   0  'Transparent
      Caption         =   "Reservation cancellation form"
      BeginProperty Font 
         Name            =   "Lucida Fax"
         Size            =   21.75
         Charset         =   0
         Weight          =   600
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3000
      TabIndex        =   0
      Top             =   480
      Width           =   7335
   End
End
Attribute VB_Name = "cancellation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Unload cancellation
Load front
front.Show
End Sub

Private Sub Command2_Click()
If Text1.Text = "" Or Text2.Text = "" Or Text3.Text = "" Then
MsgBox "Enter the above details "
Else
If Text3.Text = "15" Or Text2.Text = "634293293121" Then
MsgBox "Ur Ticket has been cancelled "
Else
MsgBox "Enter Correct Details"
End If
End If
End Sub

Private Sub Text2_Change()
If Not IsNumeric(Text2) Then MsgBox "Please Enter Numerical Values only"
End Sub
