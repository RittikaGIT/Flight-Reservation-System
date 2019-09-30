VERSION 5.00
Begin VB.Form start 
   Caption         =   "Form1"
   ClientHeight    =   7125
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12705
   FillColor       =   &H00C0C0FF&
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
   Picture         =   "Start.frx":0000
   ScaleHeight     =   7125
   ScaleWidth      =   12705
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "START"
      Height          =   975
      Left            =   4560
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   2520
      Width           =   2895
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   $"Start.frx":80BB
      ForeColor       =   &H00FFFFFF&
      Height          =   2895
      Left            =   7320
      TabIndex        =   2
      Top             =   4200
      Width           =   5415
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "  Welcome to airline reservation"
      BeginProperty Font 
         Name            =   "Lucida Handwriting"
         Size            =   27.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0FF&
      Height          =   1335
      Left            =   960
      TabIndex        =   0
      Top             =   240
      Width           =   10575
   End
End
Attribute VB_Name = "start"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
Load front
front.Show
End Sub
