
Pod::Spec.new do |s|
  s.name             = 'SwiftySQLLite'
  s.version          = '0.1.6'
  s.summary          = 'Simple swift wrapper over sqllite C api'
 
  s.description      = <<-DESC
Simple swift wrapper over sqllite C api, ideal for simple sqllite operations where no ORM overhead is needed.
                       DESC
 
  s.homepage         = 'https://github.com/chelemen-razvan/SQLiteDB'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chelemen Razvan' => 'chelemen.razvan@gmail.com' }
  s.source           = { :git => 'https://github.com/chelemen-razvan/SQLiteDB.git', :tag => s.version.to_s }
 
  s.ios.deployment_target = '8.0'
  s.source_files = 'SwiftySQLLite/*.swift'
  s.pod_target_xcconfig = {
    'SWIFT_VERSION' => '3.0',
  }
  s.library = 'sqlite3'
  s.preserve_paths = 'SwiftySQLLite/{iphone,simulator}/*'
  s.pod_target_xcconfig = {
      'SWIFT_INCLUDE_PATHS[sdk=iphoneos*]'           => '$(SRCROOT)/SwiftySQLLite/SwiftySQLLite/iphone',
      'SWIFT_INCLUDE_PATHS[sdk=iphonesimulator*]'    => '$(SRCROOT)/SwiftySQLLite/SwiftySQLLite/simulator',
  }
 
end