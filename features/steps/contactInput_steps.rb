Given(/^the app has launched$/) do
  wait_for do
    !query("*").empty?
  end
end

Given(/^I type email and number$/) do
  touch('textField index:0')
  set_text('textField index:0', 'omuk@m')
  touch('textField index:1')
  set_text('textField index:1', '12345')
  query("textField index:1", :resignFirstResponder)
  sleep 0.5
  swipe :down, force: :strong
end


