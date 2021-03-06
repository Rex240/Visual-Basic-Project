VERSION 5.00
Begin VB.Form Form5 
   Caption         =   "Form5"
   ClientHeight    =   8370
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10050
   LinkTopic       =   "Form5"
   ScaleHeight     =   8370
   ScaleWidth      =   10050
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton AddButton 
      Caption         =   "Add"
      Height          =   615
      Left            =   840
      TabIndex        =   25
      Top             =   1680
      Width           =   1935
   End
   Begin VB.CommandButton DeleteButton 
      Caption         =   "Delete"
      Height          =   615
      Left            =   3120
      TabIndex        =   24
      Top             =   1680
      Width           =   1815
   End
   Begin VB.CommandButton NextButton1 
      Caption         =   "Next >>"
      Height          =   495
      Left            =   3120
      TabIndex        =   23
      Top             =   2520
      Width           =   1815
   End
   Begin VB.CommandButton PreviousButton1 
      Caption         =   "<< Previous"
      Height          =   495
      Left            =   840
      TabIndex        =   22
      Top             =   2520
      Width           =   1935
   End
   Begin VB.TextBox ItemName 
      Alignment       =   2  'Center
      CausesValidation=   0   'False
      DataField       =   "Name"
      DataSource      =   "Data1"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   510
      Left            =   840
      TabIndex        =   20
      Text            =   "Text7"
      Top             =   3585
      Width           =   4095
   End
   Begin VB.CommandButton SearchButton 
      Caption         =   "Go"
      Height          =   375
      Left            =   4440
      TabIndex        =   17
      Top             =   1080
      Width           =   495
   End
   Begin VB.TextBox SearchBox 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   840
      TabIndex        =   16
      Text            =   "Search Tanks..."
      Top             =   1080
      Width           =   3615
   End
   Begin VB.Data Data1 
      BOFAction       =   1  'BOF
      Caption         =   "Browse"
      Connect         =   "Access"
      DatabaseName    =   "C:\Visual-Basic-Project\Database.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      EOFAction       =   1  'EOF
      Exclusive       =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   840
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "Tanks"
      Top             =   360
      Visible         =   0   'False
      Width           =   4095
   End
   Begin VB.TextBox Text4 
      DataField       =   "Units Available"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   3960
      TabIndex        =   11
      Text            =   "Text4"
      Top             =   4440
      Width           =   975
   End
   Begin VB.TextBox Text3 
      DataField       =   "Weight"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1680
      TabIndex        =   10
      Text            =   "Text3"
      Top             =   5880
      Width           =   975
   End
   Begin VB.TextBox Text2 
      DataField       =   "Top Speed"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1680
      TabIndex        =   9
      Text            =   "Text2"
      Top             =   5160
      Width           =   975
   End
   Begin VB.TextBox Text1 
      DataField       =   "Armor Class"
      DataSource      =   "Data1"
      Height          =   375
      Left            =   1680
      TabIndex        =   8
      Text            =   "Text1"
      Top             =   4440
      Width           =   975
   End
   Begin VB.PictureBox Picture 
      Height          =   3015
      Left            =   5400
      ScaleHeight     =   2955
      ScaleWidth      =   3675
      TabIndex        =   7
      Top             =   1080
      Width           =   3735
   End
   Begin VB.Frame Description 
      Caption         =   "Description"
      Height          =   2055
      Left            =   5400
      TabIndex        =   6
      Top             =   4320
      Width           =   3735
      Begin VB.TextBox DescriptionBox 
         DataField       =   "Description"
         DataSource      =   "Data1"
         Height          =   1455
         Left            =   240
         MultiLine       =   -1  'True
         TabIndex        =   19
         Text            =   "TanksForm.frx":0000
         Top             =   360
         Width           =   3255
      End
   End
   Begin VB.CommandButton FirearmsButton 
      Caption         =   "Firearms"
      Height          =   615
      Left            =   1200
      TabIndex        =   5
      Top             =   6720
      Width           =   2295
   End
   Begin VB.CommandButton GearButton 
      Caption         =   "Gear"
      Height          =   615
      Left            =   3720
      TabIndex        =   4
      Top             =   6720
      Width           =   2295
   End
   Begin VB.CommandButton TransportButton 
      Caption         =   "Transport"
      Height          =   615
      Left            =   6240
      TabIndex        =   3
      Top             =   6720
      Width           =   2295
   End
   Begin VB.CommandButton TanksButton 
      Caption         =   "Tanks"
      Enabled         =   0   'False
      Height          =   615
      Left            =   1200
      TabIndex        =   2
      Top             =   7560
      Width           =   2295
   End
   Begin VB.CommandButton JetsButton 
      Caption         =   "Jets"
      Height          =   615
      Left            =   3720
      TabIndex        =   1
      Top             =   7560
      Width           =   2295
   End
   Begin VB.CommandButton ExitButton 
      Caption         =   "Exit"
      Height          =   615
      Left            =   6240
      TabIndex        =   0
      Top             =   7560
      Width           =   2295
   End
   Begin VB.Label Label7 
      Caption         =   "Name"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   21
      Top             =   3240
      Width           =   975
   End
   Begin VB.Label TableName 
      Alignment       =   2  'Center
      Caption         =   "Tanks"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   2520
      TabIndex        =   18
      Top             =   120
      Width           =   4815
   End
   Begin VB.Label Label4 
      Caption         =   "Unit Available"
      DataSource      =   "Data1"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3000
      TabIndex        =   15
      Top             =   4320
      Width           =   855
   End
   Begin VB.Label Label3 
      Caption         =   "Weight"
      DataSource      =   "Data1"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   14
      Top             =   5880
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "Top Speed"
      DataSource      =   "Data1"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   720
      TabIndex        =   13
      Top             =   5040
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Armor Class"
      DataSource      =   "Data1"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   720
      TabIndex        =   12
      Top             =   4320
      Width           =   855
   End
End
Attribute VB_Name = "Form5"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub AddButton_Click()

Data1.Recordset.AddNew

End Sub

Private Sub DeleteButton_Click()
Data1.Recordset.Delete
MessageBox.Show ("Current Record has been deleted.")
End Sub

Private Sub ExitButton_Click()
End
End Sub

Private Sub FirearmsButton_Click()
Form2.Show
Form5.Hide
End Sub


Private Sub NextButton1_Click()
    
    Data1.Recordset.MoveNext
    
    If Data1.Recordset.EOF = True Then
        Data1.Recordset.MoveFirst
    End If
    
End Sub

Private Sub PreviousButton1_Click()

    Data1.Recordset.MovePrevious
    
    If Data1.Recordset.BOF Then
        Data1.Recordset.MoveLast
    End If
    
End Sub

Private Sub GearButton_Click()
Form3.Show
Form5.Hide
End Sub

Private Sub JetsButton_Click()
Form6.Show
Form5.Hide
End Sub

Private Sub NextButton_Click()
    
    Data1.Recordset.MoveNext
    
    If Data1.Recordset.EOF = True Then
        Data1.Recordset.MoveLFirst
    End If
    
    
End Sub

Private Sub PreviousButton_Click()

    Data1.Recordset.MovePrevious
    
    If Data1.Recordset.BOF Then
        Data1.Recordset.MoveLast
    End If
    
End Sub

Private Sub TransportButton_Click()
Form4.Show
Form5.Hide
End Sub

