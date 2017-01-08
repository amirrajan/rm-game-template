# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  app.version = "2.2"
  app.deployment_target = "8.1"
  app.name = 'Beautiful Go'

  app.frameworks = %w(CoreGraphics AVFoundation UIKit QuartzCore SpriteKit Foundation)

  app.frameworks << "CoreGraphics"
  app.frameworks << "QuartzCore"
  app.frameworks << 'AudioToolbox'
  app.identifier = "com.scratchworkdevelopment.beautifulgo"

  app.interface_orientations = [:portrait]

  app.device_family = [:iphone, :ipad]

  #development
  app.codesign_certificate = "iPhone Developer: Amirali Rajan"
  app.provisioning_profile = './profiles/Development_Wildcard.mobileprovision'

  #production
  # app.codesign_certificate = "iOS Distribution: Amirali Rajan"
  # app.provisioning_profile = './profiles/Beautiful_Go_Distribution.mobileprovision'

  app.icons = ['large', 'medium', 'small']
end

namespace :sim do
  task :five do
    system("rake simulator device_name='iPhone 5'")
  end

  task :six do
    system("rake simulator device_name='iPhone 6'")
  end

  task :plus do
    system("rake simulator device_name='iPhone 6 Plus'")
  end

  task :ipad do
    system("rake simulator device_name='iPad Pro (9.7 inch)'")
  end

  task :ipadpro do
    system("rake simulator device_name='iPad Pro (12.9 inch)'")
  end
end
