require('core')
gui = {
  command = {'s', -1, -1, ''}
}

function gui.readCommand()
  io.write('Enter command: ')
  gui.command[1] = io.read(1)
  --io.write(gui.command[1],'\n')
  if gui.command[1] == 'm' then
    gui.command[2], gui.command[3], gui.command[4] = io.read("*number", "*number", 1)
    io.write('Input command: ', gui.command[1], ' ', gui.command[2], ' ', gui.command[3], ' ', gui.command[4],'\n')
    core.move({gui.command[2], gui.command[3]},gui.command[4])

  end
  io.read(1)
  io.write('\n')
end