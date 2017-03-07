Given(/^the app has launched$/) do
  wait_for do
    !query("*").empty?
  end
end

Given(/^I type Username and Password$/) do
  touch('textField index:0')
  set_text('textField index:0', 'Meraj')
  sleep 0.5
  touch('textField index:1')
  set_text('textField index:1', 'Secret')
end
