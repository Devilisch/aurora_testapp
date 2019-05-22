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
  for i = 1, core.N do
    for j = 1, core.M do
      if core.map[i][j] == 0 then
         core.map[i][j] = core.mapVariables[math.random(#core.mapVariables)]
      end
    end
  end
end

function core.tick()
-- ����������� ��������� �� ���� ("������" �� ����� ���)
end

function core.move(from, to)
-- ���������� ��������
end

function core.mix()
-- ������������� ���������, ���� ��������� ����������� ���
end

function core.dump()
-- ����� ������� ���� ������������� ����
end