VERSION 5.00
Begin VB.Form Pasdetail 
   BackColor       =   &H8000000E&
   Caption         =   "Form1"
   ClientHeight    =   8280
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   11040
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
   ScaleWidth      =   11040
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame1 
      Caption         =   "Passengers  Details"
      Height          =   8655
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11295
      Begin VB.Frame Frame3 
         BackColor       =   &H8000000B&
         BorderStyle     =   0  'None
         Height          =   4455
         Left            =   360
         TabIndex        =   12
         Top             =   3720
         Width           =   10575
         Begin VB.CommandButton Command2 
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
            Height          =   735
            Left            =   840
            Style           =   1  'Graphical
            TabIndex        =   19
            Top             =   2160
            Width           =   3615
         End
         Begin VB.CommandButton Command1 
            BackColor       =   &H000000FF&
            Caption         =   "Go Back"
            Height          =   615
            Left            =   5520
            Style           =   1  'Graphical
            TabIndex        =   18
            Top             =   2280
            Width           =   2295
         End
         Begin VB.CheckBox Check1 
            BackColor       =   &H8000000B&
            DataField       =   "seniour"
            DataSource      =   "Data1"
            BeginProperty Font 
               Name            =   "Lucida Handwriting"
               Size            =   27.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   8520
            MaskColor       =   &H00FFFFFF&
            TabIndex        =   17
            Top             =   960
            Width           =   735
         End
         Begin VB.ComboBox Combo1 
            DataField       =   "sex"
            DataSource      =   "Data1"
            Height          =   525
            Left            =   5640
            TabIndex        =   16
            Top             =   960
            Width           =   1695
         End
         Begin VB.TextBox Text8 
            DataField       =   "age"
            DataSource      =   "Data1"
            Height          =   615
            Left            =   3600
            TabIndex        =   15
            Top             =   960
            Width           =   1575
         End
         Begin VB.TextBox Text7 
            DataField       =   "Name"
            DataSource      =   "Data1"
            Height          =   615
            Left            =   120
            TabIndex        =   14
            Top             =   960
            Width           =   3135
         End
         Begin VB.TextBox Text6 
            BackColor       =   &H80000008&
            BorderStyle     =   0  'None
            ForeColor       =   &H80000005&
            Height          =   525
            Left            =   120
            TabIndex        =   13
            Text            =   "Name                     Age           Sex        Seniour citizen"
            Top             =   120
            Width           =   10335
         End
         Begin VB.Shape Shape1 
            BorderStyle     =   3  'Dot
            Height          =   735
            Left            =   0
            Top             =   0
            Width           =   10575
         End
      End
      Begin VB.Frame Frame2 
         BackColor       =   &H8000000E&
         BorderStyle     =   0  'None
         Caption         =   "Frame2"
         Height          =   3135
         Left            =   360
         TabIndex        =   1
         Top             =   600
         Width           =   10575
         Begin VB.TextBox Text5 
            Height          =   645
            Left            =   7440
            TabIndex        =   11
            Top             =   1800
            Width           =   2775
         End
         Begin VB.TextBox Text4 
            DataSource      =   "Data2"
            Height          =   615
            Left            =   2400
            TabIndex        =   9
            Top             =   1800
            Width           =   3135
         End
         Begin VB.TextBox Text3 
            Height          =   735
            Left            =   7440
            TabIndex        =   7
            Top             =   840
            Width           =   2895
         End
         Begin VB.TextBox Text2 
            Height          =   615
            Left            =   2520
            TabIndex        =   5
            Top             =   960
            Width           =   3135
         End
         Begin VB.TextBox Text1 
            Height          =   615
            Left            =   2400
            TabIndex        =   3
            Top             =   120
            Width           =   3135
         End
         Begin VB.Label Label5 
            BackStyle       =   0  'Transparent
            Caption         =   "Class"
            Height          =   495
            Left            =   6240
            TabIndex        =   10
            Top             =   1920
            Width           =   1575
         End
         Begin VB.Label Label4 
            BackStyle       =   0  'Transparent
            Caption         =   "Date"
            Height          =   615
            Left            =   360
            TabIndex        =   8
            Top             =   1920
            Width           =   2175
         End
         Begin VB.Label Label3 
            BackStyle       =   0  'Transparent
            Caption         =   "To"
            Height          =   615
            Left            =   6360
            TabIndex        =   6
            Top             =   840
            Width           =   1455
         End
         Begin VB.Label Label2 
            BackStyle       =   0  'Transparent
            Caption         =   "From"
            Height          =   615
            Left            =   360
            TabIndex        =   4
            Top             =   960
            Width           =   2295
         End
         Begin VB.Label Label1 
            BackColor       =   &H8000000E&
            BackStyle       =   0  'Transparent
            Caption         =   "Flight No."
            Height          =   495
            Left            =   240
            TabIndex        =   2
            Top             =   240
            Width           =   2055
         End
      End
   End
End
Attribute VB_Name = "Pasdetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
Load fdetail
fdetail.Show
End Sub

Private Sub Command2_Click()
If Text7.Text = "" Or Text8.Text = "" Then
MsgBox "Enter ur Name and Age"
Else
Unload Me
Load Payment
Payment.Show
End If
End Sub

Private Sub Command3_Click()
Text1.Text = ""
End Sub

Private Sub Form_Load()
Combo1.AddItem "Male"
Combo1.AddItem "Female"
End Sub

Private Sub Text10_Change()
If Not IsNumeric(Text10) Then MsgBox "Please Enter Numerical Values only"
End Sub

Private Sub Text12_Change()
If Not IsNumeric(Text12) Then MsgBox "Please Enter Numerical Values only"
End Sub

Private Sub Text2_Change()
Text2.Text = journey.Combo1
End Sub

Private Sub Text7_Change()
Printticket.Text9.Text = Text7.Text
End Sub

Private Sub Text8_Change()
Printticket.Text11.Text = Val(Text8.Text)
If Not IsNumeric(Text8) Then MsgBox "Please Enter Numerical Values only"
End Sub

