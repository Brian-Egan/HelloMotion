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
    

    # # --- Chapter 4 Nav and Tab Controller---

    # # Changed in Chapter 4 (Tab Controller)
    # controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    # nav_controller = UINavigationController.alloc.initWithRootViewController(controller)

    # other_controller = UIViewController.alloc.initWithNibName(nil, bundle: nil)
    # other_controller.title = "Other"
    # other_controller.view.backgroundColor = UIColor.purpleColor 


    # tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    # tab_controller.viewControllers = [nav_controller, other_controller]
    # @window.rootViewController = tab_controller

    # # --- Chapter 4 ---


    # # # --- Chapter 5 - Table View ---
    # controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    # nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
    # alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)

    # tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    # tab_controller.viewControllers = [alphabet_controller, nav_controller]
    # @window.rootViewController = tab_controller

    # # # --- Chapter 5 ---

    # # --- Chapter 6 - Animation ---

    # the points we'll be animating to
    @points = [[0, 0], [50, 0], [0, 50], [50, 50]]
    @current_index = 0

    # usual method of adding views to our window
    @view = UIView.alloc.initWithFrame([@points[@current_index], [100,100]])
    @view.backgroundColor = UIColor.blueColor
    @window.addSubview(@view)

    animate_to_next_point






    # controller = TapController.alloc.initWithNibName(nil, bundle: nil)
    # nav_controller = UINavigationController.alloc.initWithRootViewController(controller)
    # alphabet_controller = AlphabetController.alloc.initWithNibName(nil, bundle: nil)

    # tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    # tab_controller.viewControllers = [alphabet_controller, nav_controller]
    # @window.rootViewController = tab_controller

    # # --- Chapter 5 ---


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


  def animate_to_next_point
    @current_index += 1

    # this keeps it in the right range
    @current_index = @current_index % @points.count 


    UIView.animateWithDuration(2,
      delay: 1,
      options: UIViewAnimationOptionCurveLinear,
      # options: UIVIewAnimationOptionCurveEaseInOut,
      animations: lambda {
        @view.frame = [@points[@current_index], [100,100]]
        },
      completion: lambda { |finished|
        self.animate_to_next_point
      }
    )

  end
end
