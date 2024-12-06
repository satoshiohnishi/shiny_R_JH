library(shiny)

# Function to calculate the greatest common divisor
# 最大公約数を計算する関数
gcd <- function(a, b) {
  while (b != 0) {
    temp <- b
    b <- a %% b
    a <- temp
  }
  return(a)
}

server <- function(input, output, session) {
  # Dynamic title switching
  # 動的なタイトルの切り替え
  output$title <- renderUI({
    if (input$language == "en") {
      h3("Greatest Common Divisor Calculator")
    } else {
      h3("最大公約数の計算")
    }
  })
  
  # Dynamic result switching
  # 動的な結果の切り替え
  output$result <- renderUI({
    a <- input$num1
    b <- input$num2
    
    if (input$language == "en") {
      if (is.na(a) || is.na(b) || a < 1 || b < 1) {
        p("Please enter integers between 1 and 50.")
      } else {
        p(paste("The Greatest Common Divisor is:", gcd(a, b)))
      }
    } else {
      if (is.na(a) || is.na(b) || a < 1 || b < 1) {
        p("1から50の間の整数を入力してください。")
      } else {
        p(paste("最大公約数は:", gcd(a, b)))
      }
    }
  })
}
