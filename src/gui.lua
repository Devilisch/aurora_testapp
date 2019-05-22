gui = {
  command = {'m', -1, -1, ''}
}

function gui.showTable(table, n, m)
  io.write('Score: ',core.score,'\n')
  io.write('_|')
  for j = 1, m do
    io.write(j,'_')
  end
  io.write('\n')
  for i = 1, n do
  io.write(i,'|')
    for j = 1, m do
      io.write(table[i][j],' ')
    end
    io.write('\n')
  end
  io.write('\n')
end

function gui.readCommand(status)
  gui.command[1] = io.read(1)
  if gui.command[1] == 'm' then
    gui.command[2] = io.read("*number")
    gui.command[3] = io.read("*number")
    io.read(1)
    gui.command[4] = io.read(1)
    io.read(1)
  end
  status = gui.command[1]
  io.write('Input command ', gui.command[1], ':', gui.command[2], ':', gui.command[3], ':', gui.command[4],'\n')
end