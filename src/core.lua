core = {
  score = 0, -- счёт
  N = 4, -- N > 0
  M = 8, -- M >= 10
  map = {}, -- основная таблица с значениями
  mapVariables = {'A', 'B', 'C', 'D', 'E', 'F'} -- "палитра" основной таблицы
}

-- создание двумерного массива
for i = 1, core.N do
  core.map[i] = {}
  for j = 1, core.M do
    core.map[i][j] = 0
  end
end

function core.init()
-- заполнение поля рандомными объектами
  for i = 1, core.N do
    for j = 1, core.M do
      if core.map[i][j] == 0 then
         core.map[i][j] = core.mapVariables[math.random(#core.mapVariables)]
      end
    end
  end
end

function core.tick()
-- отслеживает изменения на поле ("тикает" во время них)
end

function core.move(from, to)
-- перемещает кристалл
end

function core.mix()
-- перемешивание кристалов, если вариантов перемещения нет
end

function core.dump()
-- после каждого тика визуализирует поле
end