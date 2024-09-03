class inputClass
{
    __New()
    {
        this.playerInput := 0000
        this.table := {0000: "Idle", 1000: "Left", 0100: "Up", 0010: "Down", 0001: "Right"}
    }
    fromPlayer()
    {
        return this.table[%this.playerInput%]
    }
    Update()
    {
        if GetKeyState("Left","P") = true
        {
            this.player := 1000
            return
        }
        if GetKeyState("Up","P") = true
        {
            this.player := 0100
            return
        }
        if GetKeyState("Down","P") = true
        {
            this.player := 0010
            return
        }
        if GetKeyState("Right","P") = true
        {
            this.player := 0001
            return
        }
        else
        {
            this.player := 0000
            return
        }
    }
}