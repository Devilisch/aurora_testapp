require('gui')



local function main()
  core.init()
  core.dump()
  while gui.status ~= 'q' do
    gui.readCommand()
    core.tick()
    core.init()
    core.dump()
  end

end

main()
