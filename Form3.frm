VERSION 5.00
Begin VB.Form fdetail 
   AutoRedraw      =   -1  'True
   BorderStyle     =   1  'Fixed Single
   Caption         =   "7-"
   ClientHeight    =   7890
   ClientLeft      =   5100
   ClientTop       =   1140
   ClientWidth     =   15690
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7890
   ScaleWidth      =   15690
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0FF&
      Height          =   7935
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   15735
      Begin VB.CommandButton Command7 
         BackColor       =   &H000000FF&
         Caption         =   "GO  Back"
         BeginProperty Font 
            Name            =   "Lucida Handwriting"
            Size            =   20.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   5400
         Style           =   1  'Graphical
         TabIndex        =   9
         Top             =   7080
         Width           =   4815
      End
      Begin VB.CommandButton Command6 
         BackColor       =   &H000000FF&
         Caption         =   "BOOK"
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
         Left            =   13560
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   6120
         Width           =   1815
      End
      Begin VB.CommandButton Command5 
         BackColor       =   &H000000FF&
         Caption         =   "BOOK"
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
         Left            =   13560
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   5280
         Width           =   1815
      End
      Begin VB.CommandButton Command4 
         BackColor       =   &H000000FF&
         Caption         =   "BOOK"
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
         Left            =   13560
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   4440
         Width           =   1815
      End
      Begin VB.CommandButton Command3 
         BackColor       =   &H000000FF&
         Caption         =   "BOOK"
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
         Left            =   13560
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   3480
         Width           =   1815
      End
      Begin VB.ListBox List1 
         Appearance      =   0  'Flat
         BackColor       =   &H00C0C0FF&
         BeginProperty Font 
            Name            =   "Lucida Handwriting"
            Size            =   18
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   5610
         ItemData        =   "Form3.frx":0000
         Left            =   600
         List            =   "Form3.frx":0007
         TabIndex        =   4
         Top             =   1320
         Width           =   12855
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H000000FF&
         Caption         =   "BOOK"
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
         Left            =   13560
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   2520
         Width           =   1815
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H000000FF&
         Caption         =   "BOOK"
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
         Left            =   13560
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   1560
         Width           =   1815
      End
      Begin VB.Label Label1 
         BackColor       =   &H00FFFFFF&
         BackStyle       =   0  'Transparent
         Caption         =   "Flight no.       DEPARTURE           ARRIVAL               DURATION              PRICE"
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
         Left            =   480
         TabIndex        =   1
         Top             =   840
         Width           =   12855
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H000000FF&
         BorderStyle     =   2  'Dash
         Height          =   7695
         Left            =   120
         Shape           =   4  'Rounded Rectangle
         Top             =   120
         Width           =   15375
      End
   End
End
Attribute VB_Name = "fdetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Printticket.Text12.Text = 2200
nbpay.Text2.Text = 2200
Pasdetail.Text1.Text = "G8-530"
Printticket.Text3.Text = "G8-530"
Unload Me
Load Pasdetail
Pasdetail.Show
End Sub

Private Sub Command2_Click()
Printticket.Text12.Text = 3200
nbpay.Text2.Text = 3200
Pasdetail.Text1.Text = "G7-456"
Printticket.Text3.Text = "G7-456"
Unload Me
Load Pasdetail
Pasdetail.Show
End Sub

Private Sub Command3_Click()
Printticket.Text12.Text = 2500
nbpay.Text2.Text = 2500
Pasdetail.Text1.Text = "A3-789"
Printticket.Text3.Text = "A3-789"
Unload Me
Load Pasdetail
Pasdetail.Show
End Sub

Private Sub Command4_Click()
Printticket.Text12.Text = 1200
nbpay.Text2.Text = 1200
Pasdetail.Text1.Text = "S4-567"
Printticket.Text3.Text = "S4-567"
Unload Me
Load Pasdetail
Pasdetail.Show
End Sub

Private Sub Command5_Click()
Printticket.Text12.Text = 2000
nbpay.Text2.Text = 2000
Pasdetail.Text1.Text = "R5-453"
Printticket.Text3.Text = "R5-453"
Unload Me
Load Pasdetail
Pasdetail.Show
End Sub

Private Sub Command6_Click()
Printticket.Text12.Text = 3200
nbpay.Text2.Text = 3200
Pasdetail.Text1.Text = "A5-234"
Printticket.Text3.Text = "A5-234"
Unload Me
Load Pasdetail
Pasdetail.Show
End Sub

Private Sub Command7_Click()
Unload Me
Load journey
journey.Show
End Sub

Private Sub Form_Load()
List1.AddItem "G8-530      7:00                  9:00             2hrs          Rs. 2200"
List1.AddItem " "
List1.AddItem "G7-456      8:30                 10:30             2hrs          Rs. 3200"
List1.AddItem " "
List1.AddItem "A3-789     10:00                 11:50         1hrs  50min       Rs. 2500"
List1.AddItem " "
List1.AddItem "S4-567      13:00                15:00             2hrs          Rs. 1200"
List1.AddItem " "
List1.AddItem "R5-453      16:00                 18:00            2hrs          Rs. 2000"
List1.AddItem " "
List1.AddItem "A5-234      20:00                 22:00             2hrs          Rs. 3200"
End Sub
