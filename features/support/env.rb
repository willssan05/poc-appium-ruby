require 'rspec'
require 'appium_lib'
require 'yaml'

SERVER_URL = 'http://localhost:4723/wd/hub'

#PROJECT_DIR = File.expand_path(File.dirname(__FILE__) + '../../..')
begin
rescue Exception => e
p e.message
end

def caps
    {caps: {
              platformName: 'android',
              deviceName: 'emulator-5554',
              browserName:   'Chrome',
              newCommandTimeout: "3600",

          },
          appium_lib: {
              server_url: SERVER_URL,
              port: 4723
          }
      }
end
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object


      


