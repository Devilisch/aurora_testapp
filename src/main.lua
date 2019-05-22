require('core')
require('gui')



local function main()
  status = 'm'
  while status ~= 'q' do
    core.init()
    gui.showTable(core.map, core.N, core.M)
    gui.readCommand(status)
  end

end

main()
