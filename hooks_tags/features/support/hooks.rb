Before do
  @users = ['Dave', 'Gill', 'Jim']
end

After do 
  # p "I'm a after hook"
end

Before ('@test2')do
  p 'this is a specific output for test 2'
end