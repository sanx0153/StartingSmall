class windowClass extends Gui
{
    __New()
    {
        super.__New("-Border -Caption -Resize")
        super.Show("Center W" WIN_W " H" WIN_H)
    }
    Render()
    {

    }
    Update()
    {
        this.Render()
    }
}