After do |scenario|
	
    if scenario.passed?
		unless File.directory?("screenshots") 
			FileUtils.mkdir_p("screenshots")
    
       else  scenario.failed?
           unless File.directory?("screenshots")
               FileUtils.mkdir_p("screenshots")
        
           end
           end

		time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
		screenshot_name = "#{time_stamp}.png"
		screenshot_file = File.join("screenshots", screenshot_name)
		$driver.screenshot(screenshot_file)
		embed("#{screenshot_file}", "image/png")
	end
	$driver.driver_quit
end

AfterConfiguration do
	FileUtils.rm_r("screenshots") if File.directory?("screenshots") 
end