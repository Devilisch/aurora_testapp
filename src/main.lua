require('gui')



local function main()
-- ������������� ����������
  start = 0
  core.init()
  --core.dump()
-- �������� ����
  while gui.status ~= 'q' do
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
