core = {
  N = 10, -- N > 0
  M = 10, -- M >= 10
  map = {} -- �������� ������� � ����������
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