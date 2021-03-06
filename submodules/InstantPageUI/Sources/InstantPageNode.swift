import Foundation
import UIKit
import AsyncDisplayKit
import Display
import TelegramPresentationData

protocol InstantPageNode {    
    func updateIsVisible(_ isVisible: Bool)
    
    func transitionNode(media: InstantPageMedia) -> (ASDisplayNode, () -> (UIView?, UIView?))?
    func updateHiddenMedia(media: InstantPageMedia?)
    func update(strings: PresentationStrings, theme: InstantPageTheme)
    
    func updateLayout(size: CGSize, transition: ContainedViewLayoutTransition)
}
