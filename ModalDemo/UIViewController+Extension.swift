//
//  UIViewController+Extension.swift
//  athene
//
//  Created by Meng Li on 2018/07/26.
//  Copyright © 2018 XFLAG. All rights reserved.
//

import UIKit

extension UIViewController {
    
    var topMostViewController: UIViewController {
        if presentedViewController == nil {
            return self
        }
        if let navigation = presentedViewController as? UINavigationController {
            if let visibleViewController = navigation.visibleViewController {
                return visibleViewController.topMostViewController
            }
            return navigation.topMostViewController
        } else if let tab = presentedViewController as? UITabBarController {
            if let selectedTab = tab.selectedViewController {
                return selectedTab.topMostViewController
            }
            return tab.topMostViewController
        }
        return presentedViewController!.topMostViewController
    }
    
}

extension UIApplication {
    
    func backToRoot(completion: (() -> Void)? = nil) {
        if let root = keyWindow?.rootViewController {
            let top = root.topMostViewController
            if top == root {
                completion?()
            }
            if let navigationController = top as? UINavigationController {
                navigationController.popToRootViewController(animated: false)
            } else if let navigationController = top.navigationController {
                navigationController.popToRootViewController(animated: false)
                navigationController.dismiss(animated: false) {
                    self.backToRoot(completion: completion)
                }
            } else {
                top.dismiss(animated: false)  {
                    self.backToRoot(completion: completion)
                }
            }
        }
    }
    
}
