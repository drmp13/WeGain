//
//  OnboardingPageViewController.swift
//  WeGain
//
//  Created by Komang Aryadinata on 09/06/21.
//

import UIKit

protocol onboardingPageViewControllerDelegate: class {
    func setupPageController(numberOfPage: Int)
    func turnPageController(to index: Int)
}

class OnboardingPageViewController: UIPageViewController {

    weak var pageViewControllerDelagate: onboardingPageViewControllerDelegate?
    
    var currentIndex = 0
    var pageTitle = ["Nutrients", "Underweight", "WeGain", ""]
    var pageImage: [UIImage] = [
        UIImage(named: "WGOnboarding1")!,
        UIImage(named: "WGOnboarding2")!,
        UIImage(named: "WGOnboarding3")!,
        UIImage()
    ]
    var pageDescriptionText = ["Nutrients in foods are essential to life and health, providing us with energy, the building blocks for repair and growth. Three major nutrients are Carbohydrates, Fats, and Proteins.", "If you're underweight, it's likely that you're not eating a healthy, balanced diet, which can lead to you lacking nutrients that your body needs to work properly.", "WeGain will help you plan your daily meal for the day and make sure your nutrients intakes met with your body needs to gain weight.", ""]

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        if let firstViewController = contentViewController(at: 0) {
            setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
    }

}

extension OnboardingPageViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if var index = (viewController as? OnboardingContentViewController)?.index {
            index -= 1
            return contentViewController(at: index)
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if var index = (viewController as? OnboardingContentViewController)?.index {
            index += 1
            return contentViewController(at: index)
        }
        return nil
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {

        if let pageContentViewController = pageViewController.viewControllers?.first as? OnboardingContentViewController {
            currentIndex = pageContentViewController.index
            self.pageViewControllerDelagate?.turnPageController(to: currentIndex)
        }
    }
    
    func contentViewController(at index: Int) -> OnboardingContentViewController? {
        if index == pageTitle.count {
            performSegue(withIdentifier: "ToFillUserDetail", sender: nil)
            return nil
        }
        if index < 0 {
            return nil
        }
        let storyBoard = UIStoryboard(name: "SwipeInfo", bundle: nil)
        if let pageContentViewController = storyBoard.instantiateViewController(withIdentifier: "onboardingContentVC") as? OnboardingContentViewController {
            pageContentViewController.index = index
            pageContentViewController.image = pageImage[index]
            pageContentViewController.heading = pageTitle[index]
            pageContentViewController.subHeading = pageDescriptionText[index]
            self.pageViewControllerDelagate?.setupPageController(numberOfPage: 3)
            return pageContentViewController
        }
        return nil
    }
}
