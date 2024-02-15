public class Page {
  
  GameModel gameModel;
  
  Page(GameModel gameModel){
    this.gameModel = gameModel;
  }

  // Main Page
  public void mainPage(){
    // Load Main Menu
    surface.setTitle("Deep Sea Fall!! Main Menu");
    image(mainMenu, 0, 0, width, height);
    
    // Loading Game Title
    gameTitle.resize(550, 0);
    image(gameTitle, 25, 60);
    
    // Loading Diver Image
    diverImage.resize(200, 0);
    image(diverImage, 0, 500);
    
    // Loading Shark Image
    sharkImage.resize(200, 0);
    image(sharkImage, 400, 500);
    
    // Loading Crab/Player Image
    crabPlayer.resize(70, 0);
    image(crabPlayer, 300, 232);
   
    // Draw Start Button
    image(startButton, width/2 - buttonWidth/2, height/2 - buttonHeight, buttonWidth, buttonHeight);
       
    image(aboutButton, width/2 - buttonWidth/2, (height/2 - buttonHeight) + 100, buttonWidth, buttonHeight);
    
    image(helpButton, (width/2 - buttonWidth/2) + 3, (height/2 - buttonHeight) + 200, buttonWidth, buttonHeight);
       
    // Loading Leaderboard Button
    //scoreBoardButton.resize(350, 0);
    image(scoreBoardButton, width/2 - buttonWidth/2, (height/2 - buttonHeight) + 300, buttonWidth, buttonHeight);
        
  }
  
  public void drawStatusBar(){
    fill(255);
    rect(0, 0, width, statusBarHeight);
    image(backButton, backButtonX, backButtonY, backButtonWidth, backButtonHeight);
    image(scoreLabel, backButtonX + backButtonWidth + 10, backButtonY, backButtonWidth, backButtonHeight);
    int lives = gameModel.getLives();
    for(int i=lives;i>0;i--){
      image(livesLabel, width - i*livesWidth, backButtonY, livesWidth, backButtonHeight);
    }
  }
  
  public void startPage(){
    image(mainMenu, 0, 0, width, height);
    surface.setTitle("Start");
    drawStatusBar();
  }
  
  public void aboutPage(){
    image(mainMenu, 0, 0, width, height);
    surface.setTitle("About Page");
    image(backButton, backButtonX, backButtonY, backButtonWidth, backButtonHeight);
    
    // Load Lore Logo
    loreLogo.resize(250, 0);
    image(loreLogo, 175, 0);
    
    PFont font = createFont("../assets/pixel-font-text.ttf", 16);
    textFont(font);
    text("The world is dead.", 10, 100);
  }
  
  public void helpPage(){
    image(mainMenu, 0, 0, width, height);
    surface.setTitle("Help Page");
    image(backButton, backButtonX, backButtonY, backButtonWidth, backButtonHeight);
  }
  
  public void leaderboardPage(){
    image(mainMenu, 0, 0, width, height);
    surface.setTitle("Leaderboard");
    image(backButton, backButtonX, backButtonY, backButtonWidth, backButtonHeight);
  }
}
