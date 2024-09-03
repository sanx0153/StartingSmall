#Requires AutoHotkey v2.0
#SingleInstance Force

#Include ruler.ahk
#Include input.ahk
#Include logic.ahk
#Include output.ahk

ruler  := rulerClass()
window := windowClass()
input  := inputClass()
game   := gameClass()

main()
{
    loop
    {
        if game.isRunning = false
        {
            break
        }
        input.Update()
        game.Update()
        window.Render()
        ; ######### PAREI AQUI VC SAB PQ test.
    }

}

ListLines()
main()