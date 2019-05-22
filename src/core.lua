core = {
  score = 0, -- ����
  N = 4, -- N > 0
  M = 8, -- M >= 10
  map = {}, -- �������� ������� � ����������
  mapVariables = {'A', 'B', 'C', 'D', 'E', 'F'} -- "�������" �������� �������
}

-- �������� ���������� �������
for i = 1, core.N do
  core.map[i] = {}
  for j = 1, core.M do
    core.map[i][j] = 0
  end
end

function core.init()
-- ���������� ���� ���������� ���������
-- �������� �������:
-- 1 - ���� ������� �� ������ ������, �� ��������� ��� ���������
-- 2 - ���� ������� �� ������ ������, �� ������� ��� �������� ���� �� ���� ����
--     � ���������� ��������� � ������ ������
  for i = 1, core.N do
    for j = 1, core.M do
      if core.map[i][j] == 0 then
         -- 2
         if i ~= 1 then 
           for k = i,1,-1 do 
             if k == 1 then core.map[k][j] = core.mapVariables[math.random(#core.mapVariables)] 
             else core.map[k][j] = core.map[k-1][j]
             end
           end
         --
         -- 1
         else
           core.map[i][j] = core.mapVariables[math.random(#core.mapVariables)]
         end
         --
      end
    end
  end
end

function core.tick()
-- ����������� ��������� �� ���� ("������" �� ����� ���)
-- �������� �� �����������

-- �������, �������������� ������� ����� ����� ����� �� ��������� (������ ��� ��������������� �������)
  up = function (i,j) if i - 1 > 0 and core.map[i][j] == core.map[i-1][j] then return up(i-1,j) + 1 else return 0 end end
  down = function (i,j) if i + 1 < core.N and core.map[i][j] == core.map[i+1][j] then return down(i+1,j) + 1 else return 0 end end
  left = function (i,j) if j - 1 > 0 and core.map[i][j] == core.map[i][j-1] then return left(i,j-1) + 1 else return 0 end end
  right = function (i,j) if i + 1 < core.M and core.map[i][j] == core.map[i][j+1] then return up(i,j+1) + 1 else return 0 end end
  
-- �������� �������: ���� �� ����� ����� ��������� ����� 3 ���������� ��������� - �������� �� � ������� 0
  for i = 1, core.N do
    for j = 1, core.M do
      _up = up(i,j)
      _down = down(i,j)
      _left = left(i,j)
      _right =right(i,j)
      if _up + _down > 1 then
        for k = 0, _up do
          core.map[i-k][j] = 0
          core.score = core.score + 1
        end
        for k = 0, _down do
          core.map[i+k][j] = 0
          core.score = core.score + 1
        end      
      elseif _left + _right > 1 then
        for k = 0, _left do
          core.map[i][j-k] = 0
          core.score = core.score + 1
        end      
        for k = 0, _right do
          core.map[i][j+k] = 0
          core.score = core.score + 1
        end      
      end
    end
  end
      
      
end

function core.move(from, to)
-- ���������� ��������
  if to == 'l' then
    if from[2]-1 > 0 then
      core.map[from[1]][from[2]] , core.map[from[1]][from[2] - 1] = core.map[from[1]][from[2] - 1], core.map[from[1]][from[2]]
    else print('ERROR: Can\'t move this object')
    end
  elseif to == 'r'then 
    if from[2]+1 <= core.M then
      core.map[from[1]][from[2]] , core.map[from[1]][from[2] + 1] = core.map[from[1]][from[2] + 1], core.map[from[1]][from[2]]
    else print('ERROR: Can\'t move this object')
    end 
  elseif to == 'u' then
    if from[1]-1 > 0 then
      core.map[from[1]][from[2]] , core.map[from[1] - 1][from[2]] = core.map[from[1] - 1][from[2]], core.map[from[1]][from[2]]
    else print('ERROR: Can\'t move this object')
    end
  elseif to == 'd' then
    if from[1]+1 <= core.N then
      core.map[from[1]][from[2]] , core.map[from[1] + 1][from[2]] = core.map[from[1] + 1][from[2]], core.map[from[1]][from[2]]
    else print('ERROR: Can\'t move this object')
    end
  else io.write('ERROR: Move function error.')
  end
end

function core.mix()
-- ������������� ���������, ���� ��������� ����������� ���
end

function core.dump()
-- ����� ������� ���� ������������� ����
  io.write('Score: ',core.score,'\n')
  io.write('_|')
  for j = 1, core.M do
    io.write(j,'_')
  end
  io.write('\n')
  for i = 1, core.N do
  io.write(i,'|')
    for j = 1, core.M do
      io.write(core.map[i][j],' ')
    end
    io.write('\n')
  end
  io.write('\n')
end