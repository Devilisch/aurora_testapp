require('core')
gui = {
  command = {'m', -1, -1, ''},
  status = 's'
}

function gui.readCommand()
  gui.command[1] = io.read(1)
  if gui.command[1] == 'm' then
    gui.command[2] = io.read("*number")
    gui.command[3] = io.read("*number")
    io.read(1)
    gui.command[4] = io.read(1)
    core.move({gui.command[2], gui.command[3]},gui.command[4])
  end
  io.read(1)
  gui.status = gui.command[1]
  io.write('Input command ', gui.command[1], ':', gui.command[2], ':', gui.command[3], ':', gui.command[4],'\n')
end