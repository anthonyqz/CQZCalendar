Pod::Spec.new do |s|
	s.name 				= 'CQZCalendar'
  	s.version			= '0.5.0'
  	s.summary 			= 'CQZCalendar'
  	s.homepage 			= 'https://github.com/anthonyqz/CQZCalendar.git'
  	s.author 			= { "Christian Quicano" => "anthony.qz@ecorenetworks.com" }
  	s.source 			= {:git => 'https://github.com/anthonyqz/CQZCalendar', :tag => s.version}
  	s.ios.deployment_target 	= '8.0'
  	s.requires_arc 			= true
	s.frameworks             	= "Foundation"
	s.source_files			= 'project/CQZCalendar/*.swift'
end