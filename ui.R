library(shiny)

ui <- fluidPage(
  # Page title / ページタイトル
  titlePanel("English-Japanese Greatest Common Divisor Calculator"),
  
  br(),
  
  p("This app calculates the greatest common divisor of two numbers. 
    Please select the language and enter the 2 numbers below. 
    The result will be displayed in the selected language."),
  
  br(),
  
  # Radio buttons for language selection / 言語選択のラジオボタン
  radioButtons(
    inputId = "language",
    label = "Language / 言語",
    choices = list("English" = "en", "日本語" = "jp"),
    selected = "en"
  ),
  # title / タイトル
  uiOutput("title"),
  # numeric input / 数値入力
  numericInput("num1", label = NULL, value = 1, min = 1, max = 50, step = 1),
  numericInput("num2", label = NULL, value = 1, min = 1, max = 50, step = 1),
  # action button / 実行ボタン
  uiOutput("result")
)
