// Class is responsible for inserting values in the card which user has entered.


import Foundation
import UIKit

extension CGRect {
    static func + (rect: CGRect, i: CGFloat) -> CGRect {
        return CGRect(x: rect.minX - i, y: rect.minY - i, width: rect.width + 2 * i, height: rect.height + 2 * i)
    }
}

extension UILabel {
    func select() {
        layoutIfNeeded()
        let labelBorder = CAShapeLayer()
        labelBorder.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: frame.width, height: frame.height) + 3, cornerRadius: 8).cgPath
        labelBorder.fillColor = UIColor.clear.cgColor
        labelBorder.strokeColor = UIColor(red: 0.99, green: 0.78, blue: 0.21, alpha: 1.00).cgColor
        labelBorder.lineWidth = 1
        layer.addSublayer(labelBorder)
    }

    func unSelect() {
        layer.sublayers?.removeAll()
    }
}

public enum YRCreditCardType {
    case masterCard
    case custom(UIImage)
}
