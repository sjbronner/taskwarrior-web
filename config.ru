# To use with thin 
#  thin start -p PORT -R config.ru
require File.join(File.dirname(__FILE__), 'lib', 'taskwarrior-web')

disable :run
TaskwarriorWeb::App.set({
  :environment => :production
})
run TaskwarriorWeb::App
