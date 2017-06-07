Pod::Spec.new do |s|
s.name         = 'HZCalendarVC'
s.version      = '0.0.3'
s.summary      = '日历'
s.homepage     = 'https://github.com/houzhenup/HZCalendarVC'
s.license      = 'MIT'
s.authors      = { "侯震" => "450351763@qq.com" }
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/houzhenup/HZCalendarVC.git', :tag => s.version}
s.source_files = 'HZCalendarVC/**/*'
s.requires_arc = true
end
