VERSION 5.00
Begin VB.Form Printticket 
   BackColor       =   &H8000000E&
   Caption         =   "Form1"
   ClientHeight    =   6600
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11805
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
   Picture         =   "Printticket.frx":0000
   ScaleHeight     =   6600
   ScaleWidth      =   11805
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000E&
      Caption         =   "Ticket  Details"
      ForeColor       =   &H000000FF&
      Height          =   6255
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   10575
      Begin VB.TextBox Text13 
         Height          =   525
         Left            =   3240
         TabIndex        =   28
         Text            =   "634293293121"
         Top             =   2040
         Width           =   2895
      End
      Begin VB.TextBox Text4 
         Height          =   615
         Left            =   9240
         TabIndex        =   26
         Top             =   1920
         Width           =   1095
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H000000FF&
         Caption         =   "Go Back"
         Height          =   615
         Left            =   5400
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   5520
         Width           =   3015
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H000000FF&
         Caption         =   "Print Ur Ticket"
         Height          =   615
         Left            =   1200
         MaskColor       =   &H00FFFFFF&
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   5520
         Width           =   3495
      End
      Begin VB.TextBox Text12 
         Height          =   525
         Left            =   5280
         TabIndex        =   22
         Top             =   4800
         Width           =   2775
      End
      Begin VB.TextBox Text11 
         DataField       =   "age"
         DataSource      =   "Data3"
         Height          =   645
         Left            =   1680
         TabIndex        =   20
         Top             =   4800
         Width           =   1455
      End
      Begin VB.TextBox Text10 
         Height          =   525
         Left            =   8280
         TabIndex        =   18
         Text            =   "F6"
         Top             =   1200
         Width           =   1935
      End
      Begin VB.TextBox Text9 
         DataField       =   "Name"
         DataSource      =   "Data3"
         Height          =   525
         Left            =   1680
         TabIndex        =   16
         Top             =   4080
         Width           =   6975
      End
      Begin VB.TextBox Text8 
         Height          =   615
         Left            =   6720
         TabIndex        =   14
         Text            =   "confirmed"
         Top             =   3360
         Width           =   2535
      End
      Begin VB.TextBox Text7 
         DataField       =   "class"
         DataSource      =   "Data2"
         Height          =   525
         Left            =   1680
         TabIndex        =   12
         Top             =   3480
         Width           =   3375
      End
      Begin VB.TextBox Text6 
         DataField       =   "cto"
         DataSource      =   "Data2"
         Height          =   525
         Left            =   6960
         TabIndex        =   10
         Top             =   2760
         Width           =   3255
      End
      Begin VB.TextBox Text5 
         DataField       =   "from"
         DataSource      =   "Data2"
         Height          =   525
         Left            =   1680
         TabIndex        =   8
         Top             =   2760
         Width           =   3375
      End
      Begin VB.TextBox Text3 
         Height          =   615
         Left            =   8520
         TabIndex        =   6
         Top             =   480
         Width           =   1695
      End
      Begin VB.TextBox Text2 
         Height          =   525
         Left            =   1800
         TabIndex        =   4
         Top             =   1200
         Width           =   2535
      End
      Begin VB.TextBox Text1 
         DataField       =   "user id "
         DataSource      =   "Data1"
         Height          =   525
         Left            =   1800
         TabIndex        =   2
         Top             =   480
         Width           =   2535
      End
      Begin VB.Label Label13 
         BackStyle       =   0  'Transparent
         Caption         =   "Transaction Id"
         Height          =   615
         Left            =   120
         TabIndex        =   27
         Top             =   2040
         Width           =   3255
      End
      Begin VB.Label Label4 
         BackStyle       =   0  'Transparent
         Caption         =   "Ticket Number"
         Height          =   735
         Left            =   6240
         TabIndex        =   25
         Top             =   2040
         Width           =   3015
      End
      Begin VB.Label Label12 
         BackColor       =   &H8000000E&
         Caption         =   "Fare"
         Height          =   495
         Left            =   3840
         TabIndex        =   21
         Top             =   4800
         Width           =   1935
      End
      Begin VB.Label Label11 
         BackColor       =   &H8000000E&
         Caption         =   "Age"
         Height          =   615
         Left            =   120
         TabIndex        =   19
         Top             =   4800
         Width           =   1695
      End
      Begin VB.Label Label10 
         BackColor       =   &H8000000E&
         Caption         =   "Seat No."
         Height          =   495
         Left            =   5400
         TabIndex        =   17
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label Label9 
         BackColor       =   &H8000000E&
         Caption         =   "Name"
         Height          =   495
         Left            =   120
         TabIndex        =   15
         Top             =   4080
         Width           =   1455
      End
      Begin VB.Label Label8 
         BackColor       =   &H8000000E&
         Caption         =   "Status"
         Height          =   495
         Left            =   5280
         TabIndex        =   13
         Top             =   3480
         Width           =   1335
      End
      Begin VB.Label Label7 
         BackColor       =   &H8000000E&
         Caption         =   "Class"
         Height          =   615
         Left            =   120
         TabIndex        =   11
         Top             =   3480
         Width           =   1695
      End
      Begin VB.Label Label6 
         BackColor       =   &H8000000E&
         Caption         =   "To"
         Height          =   495
         Left            =   5640
         TabIndex        =   9
         Top             =   2760
         Width           =   1095
      End
      Begin VB.Label Label5 
         BackColor       =   &H8000000E&
         Caption         =   "From"
         Height          =   375
         Left            =   120
         TabIndex        =   7
         Top             =   2760
         Width           =   1215
      End
      Begin VB.Label Label3 
         BackColor       =   &H8000000E&
         Caption         =   "Flight Number"
         Height          =   615
         Left            =   5160
         TabIndex        =   5
         Top             =   480
         Width           =   3015
      End
      Begin VB.Label Label2 
         BackColor       =   &H8000000E&
         Caption         =   "Date"
         Height          =   495
         Left            =   120
         TabIndex        =   3
         Top             =   1200
         Width           =   1935
      End
      Begin VB.Label Label1 
         BackColor       =   &H8000000E&
         Caption         =   "User id"
         Height          =   375
         Left            =   120
         TabIndex        =   1
         Top             =   600
         Width           =   1575
      End
   End
End
Attribute VB_Name = "Printticket"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
MsgBox "Printing  Ur Ticket"
MsgBox "Ticket has been printed"
Unload Me
Load front
front.Show
End Sub

Private Sub Command2_Click()
Unload Me
End Sub
Private Sub Text11_Change()
Text11.Text = Pasdetail.Text8.Text
End Sub

