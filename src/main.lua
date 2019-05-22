require('gui')





local function main()
-- инициализация интерфейса
  
	start = 0
  
	core.init()
-- основной цикл
  
	while gui.command[1] ~= 'q' do
    
		if start > 0 then gui.readCommand() end
    
		repeat
      
		core.tick()
      
		core.init()
    
		until core.flag < 2
    
		if start == 0 then core.score = 0 end
    
		core.dump()    
    
		core.mix()
    
		start = 1
  
	end
end



main()
