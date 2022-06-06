from pynput import keyboard

typer = keyboard.Controller()

def on_press(key):
    if key == keyboard.Key.up:
        typer.type('SIL')
    elif key == keyboard.Key.down:
        typer.type('x')
        

def on_release(key):
    if key == keyboard.Key.esc:
        return False
        
with keyboard.Listener(
    on_press=on_press,
    on_release=on_release
) as listener:
    listener.join()