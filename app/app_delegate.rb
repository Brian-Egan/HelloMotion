class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    
    # This is all from the wonderful tutorial found at: http://rubymotion-tutorial.com/


    # UIScreen describes the display our app is running on

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    # # Changed in Chapter 3
    # @window.rootViewController = TapController.alloc.initWithNibName(nil, bundle: nil)
    # # --- Chapter 3 ---


    # # Changed in Chapter 4 (Nav Controller)
    # controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    # @window.rootViewController = UINavigationController.alloc.initWithRootViewController(controller)
    # # --- Chapter 4 ---

    # # Changed in Chapter 4 (Tab Controller)
    controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    nav_controller = UINavigationController.alloc.initWithRootViewController(controller)

   



    other_controller = UIViewController.alloc.initWithNibName(nil, bundle: nil)
    other_controller.title = "Other"
    other_controller.view.backgroundColor = UIColor.purpleColor 


    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tab_controller.viewControllers = [nav_controller, other_controller]
    @window.rootViewController = tab_controller

    # # --- Chapter 4 ---


    # # Changed in Chapter 2
    # @window.rootViewController = TapController.alloc.initWithNibName(nil, bundle: nil)
 
    # @blue_view = UIView.alloc.initWithFrame(CGRectMake(10,10,100,100))
    # @blue_view.backgroundColor = UIColor.blueColor
    # @window.addSubview(@blue_view)

    # # puts "Window height: #{view.frame.position.y}"
    # @green_view = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
    # @green_view.backgroundColor = UIColor.greenColor
    # @window.addSubview(@green_view)

    # @red_view  = UIView.alloc.initWithFrame(CGRectMake(30, 30, 40, 40))
    # @red_view.backgroundColor = UIColor.redColor
    # # NOTE: *not* adding to @window
    # @blue_view.addSubview(@red_view)

    # # --- Chapter 2 ---

    true
  end
end
