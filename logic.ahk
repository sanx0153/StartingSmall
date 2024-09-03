class gameClass
{
    __New()
    {
        /*
        Isso aqui é rascunho daquela fita do bitwise
        
        this.isRunning := 0x01
        this.isOff     := 0x10
        this.state := 0x00
        */

        this.appleTimer := 0
        this.field := []
        this.isRunning := true
        this.player := playerClass()
        this.snake  := snakeClass()
    }
    SpawnApple() 
    {
        this.field.Push(appleClass())
    }
    ResetAppleTimer()
    {
        this.appleTimer := 0
    }
    Update()
    {
        if this.appleTimer = 10
        {
            this.SpawnApple()
            this.ResetAppleTimer()
        }
        else
        {
            this.appleTimer++
        }
    }
}

class playerClass
{
    __New()
    {
        this.command := "Idle"
        this.score   := 0
    }
    Scores() 
    {
        this.score++
    }
    Update()
    {
        this.command := input.fromPlayer()
    }
}

class snakeClass
{
    __New()
    {
        this.position := [0,0]

    }
    Update()
    {        

    }
}

class appleClass
{
    __New()
    {
        this.position := [Random(0,9),Random(0,9)]
        this.beenEaten := false
    }
    Update()
    {
        if this.beenEaten = true 
        {
            game.player.scores()
        }
    }
}