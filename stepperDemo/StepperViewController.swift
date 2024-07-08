//
//  StepperViewController.swift
//  stepperDemo
//
//  Created by Apple on 08/07/24.
//

////
////  StepperViewController.swift
////  CMA_Astrologer
////
////  Created by Apple on 08/07/24.
////
//
//
//import UIKit
//
//@IBDesignable
//class StepperViewController: UIControl {
//
//    // MARK: Properties
//
//    @IBInspectable
//    var steps:Int = 3 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var selectedStep:Int = -1 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var indicatorSize:CGFloat = 14.0 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var lineWidth:CGFloat = 1.0 {
//        didSet {
//            self.adjustEdgeInsets()
//            self.setNeedsDisplay()
//        }
//    }
//
//    var edgeInsets:UIEdgeInsets = UIEdgeInsets.zero {
//        didSet {
//            self.adjustEdgeInsets()
//        }
//    }
//
//    // MARK: Init
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.adjustEdgeInsets()
//    }
//
//    required init?(coder decoder: NSCoder) {
//        super.init(coder: decoder)
//        self.adjustEdgeInsets()
//    }
//
//    func adjustEdgeInsets() {
//        if (self.edgeInsets.top < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.lineWidth/2, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.left < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.lineWidth/2, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right);
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.bottom < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.lineWidth/2, right: self.edgeInsets.right);
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.right < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.lineWidth/2);
//            self.setNeedsDisplay()
//        }
//    }
//
//    // MARK: Drawing
//
//    func pathForStepWithIndex(step: Int) -> (UIBezierPath) {
//        var delta = Float(self.frame.size.width - self.edgeInsets.left - self.edgeInsets.right - self.indicatorSize)
//        var offset = Float(step) * (delta / Float(self.steps - 1))
//        var x = CGFloat( Double(self.edgeInsets.left) + Double(offset))
//
//        return UIBezierPath(ovalIn:CGRectMake(x, self.edgeInsets.top, self.indicatorSize, self.indicatorSize))
//    }
//
//    func linePathForStepWithIndex(step: Int) -> (UIBezierPath) {
//        var delta = (Double(self.frame.size.width) - Double(self.edgeInsets.left) - Double(self.edgeInsets.right) - Double(self.indicatorSize)) / Double(self.steps - 1)
//        var offset = Double(step) * delta
//        var path = UIBezierPath()
//
//        var x = Double(self.edgeInsets.left) + Double(self.indicatorSize) + offset
//        var y = Double(self.edgeInsets.top) + Double(self.indicatorSize / 2)
//
//        path.move(to: CGPoint(x:x, y:y))
//
//        x = Double(self.edgeInsets.left) + Double(offset) + Double(delta)
//        y = Double(self.edgeInsets.top) + Double(self.indicatorSize / 2)
//
//        path.addLine(to: CGPoint(x:x, y:y))
//
//        return path;
//    }
//
//    override func draw(_ rect: CGRect) {
//        self.tintColor.setStroke()
//
//        for i in 0..<self.steps - 1 {
//            var linePath = self.linePathForStepWithIndex(step: i)
//            linePath.lineWidth = self.lineWidth
//            linePath.stroke()
//        }
//
//        for i in 0..<self.steps{
//            var path = self.pathForStepWithIndex(step: i)
//
//            (i == self.selectedStep) ? self.tintColor.setFill() : UIColor.clear.setFill();
//            path.fill();
//
//            path.lineWidth = self.lineWidth
//            path.stroke()
//        }
//    }x
//}
//

import UIKit




//with iamge
//import UIKit
//
//@IBDesignable
//class StepperViewController: UIControl {
//
//    // MARK: Properties
//
//    @IBInspectable
//    var steps:Int = 3 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var selectedStep:Int = -1 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var indicatorSize:CGFloat = 14.0 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var lineWidth:CGFloat = 1.0 {
//        didSet {
//            self.adjustEdgeInsets()
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var indicatorImage: UIImage? {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    var edgeInsets:UIEdgeInsets = UIEdgeInsets.zero {
//        didSet {
//            self.adjustEdgeInsets()
//        }
//    }
//
//    // MARK: Init
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.adjustEdgeInsets()
//    }
//
//    required init?(coder decoder: NSCoder) {
//        super.init(coder: decoder)
//        self.adjustEdgeInsets()
//    }
//
//    func adjustEdgeInsets() {
//        if (self.edgeInsets.top < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.lineWidth/2, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.left < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.lineWidth/2, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.bottom < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.lineWidth/2, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.right < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.lineWidth/2)
//            self.setNeedsDisplay()
//        }
//    }
//
//    // MARK: Drawing
//
//    func pathForStepWithIndex(step: Int) -> UIBezierPath {
//        let delta = Float(self.frame.size.width - self.edgeInsets.left - self.edgeInsets.right - self.indicatorSize)
//        let offset = Float(step) * (delta / Float(self.steps - 1))
//        let x = CGFloat(Double(self.edgeInsets.left) + Double(offset))
//
//        return UIBezierPath(ovalIn: CGRect(x: x, y: self.edgeInsets.top, width: self.indicatorSize, height: self.indicatorSize))
//    }
//
//    func linePathForStepWithIndex(step: Int) -> UIBezierPath {
//        let delta = (Double(self.frame.size.width) - Double(self.edgeInsets.left) - Double(self.edgeInsets.right) - Double(self.indicatorSize)) / Double(self.steps - 1)
//        let offset = Double(step) * delta
//        let path = UIBezierPath()
//
//        var x = Double(self.edgeInsets.left) + Double(self.indicatorSize) + offset
//        let y = Double(self.edgeInsets.top) + Double(self.indicatorSize / 2)
//
//        path.move(to: CGPoint(x: x, y: y))
//
//        x = Double(self.edgeInsets.left) + Double(offset) + Double(delta)
//
//        path.addLine(to: CGPoint(x: x, y: y))
//
//        return path
//    }
//
//    override func draw(_ rect: CGRect) {
//        self.tintColor.setStroke()
//
//        for i in 0..<self.steps - 1 {
//            let linePath = self.linePathForStepWithIndex(step: i)
//            linePath.lineWidth = self.lineWidth
//            linePath.stroke()
//        }
//
//        for i in 0..<self.steps {
//            let path = self.pathForStepWithIndex(step: i)
//
//            (i == self.selectedStep) ? self.tintColor.setFill() : UIColor.clear.setFill()
//            path.fill()
//
//            path.lineWidth = self.lineWidth
//            path.stroke()
//
//            if let image = indicatorImage, i == self.selectedStep {
//                let imageRect = CGRect(x: path.bounds.origin.x + (path.bounds.size.width - image.size.width) / 2,
//                                       y: path.bounds.origin.y + (path.bounds.size.height - image.size.height) / 2,
//                                       width: image.size.width,
//                                       height: image.size.height)
//                image.draw(in: imageRect)
//            }
//        }
//    }
//}
//



//with two images
//import UIKit
//
//@IBDesignable
//class StepperViewController: UIControl {
//
//    // MARK: Properties
//
//    @IBInspectable
//    var steps: Int = 3 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var selectedStep: Int = -1 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var indicatorSize: CGFloat = 14.0 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var lineWidth: CGFloat = 1.0 {
//        didSet {
//            self.adjustEdgeInsets()
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var indicatorImage: UIImage? {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var completedStepImage: UIImage? {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    var edgeInsets: UIEdgeInsets = UIEdgeInsets.zero {
//        didSet {
//            self.adjustEdgeInsets()
//        }
//    }
//
//    // MARK: Init
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.adjustEdgeInsets()
//    }
//
//    required init?(coder decoder: NSCoder) {
//        super.init(coder: decoder)
//        self.adjustEdgeInsets()
//    }
//
//    func adjustEdgeInsets() {
//        if (self.edgeInsets.top < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.lineWidth/2, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.left < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.lineWidth/2, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.bottom < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.lineWidth/2, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.right < self.lineWidth/2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.lineWidth/2)
//            self.setNeedsDisplay()
//        }
//    }
//
//    // MARK: Drawing
//
//    func pathForStepWithIndex(step: Int) -> UIBezierPath {
//        let delta = Float(self.frame.size.width - self.edgeInsets.left - self.edgeInsets.right - self.indicatorSize)
//        let offset = Float(step) * (delta / Float(self.steps - 1))
//        let x = CGFloat(Double(self.edgeInsets.left) + Double(offset))
//
//        return UIBezierPath(ovalIn: CGRect(x: x, y: self.edgeInsets.top, width: self.indicatorSize, height: self.indicatorSize))
//    }
//
//    func linePathForStepWithIndex(step: Int) -> UIBezierPath {
//        let delta = (Double(self.frame.size.width) - Double(self.edgeInsets.left) - Double(self.edgeInsets.right) - Double(self.indicatorSize)) / Double(self.steps - 1)
//        let offset = Double(step) * delta
//        let path = UIBezierPath()
//
//        var x = Double(self.edgeInsets.left) + Double(self.indicatorSize) + offset
//        let y = Double(self.edgeInsets.top) + Double(self.indicatorSize / 2)
//
//        path.move(to: CGPoint(x: x, y: y))
//
//        x = Double(self.edgeInsets.left) + Double(offset) + Double(delta)
//
//        path.addLine(to: CGPoint(x: x, y: y))
//
//        return path
//    }
//
//    override func draw(_ rect: CGRect) {
//        self.tintColor.setStroke()
//
//        for i in 0..<self.steps - 1 {
//            let linePath = self.linePathForStepWithIndex(step: i)
//            linePath.lineWidth = self.lineWidth
//            linePath.stroke()
//        }
//
//        for i in 0..<self.steps {
//            let path = self.pathForStepWithIndex(step: i)
//
//            (i == self.selectedStep) ? self.tintColor.setFill() : UIColor.clear.setFill()
//            path.fill()
//
//            path.lineWidth = self.lineWidth
//            path.stroke()
//
//            if i <= self.selectedStep, let image = completedStepImage {
//                let imageRect = CGRect(x: path.bounds.origin.x + (path.bounds.size.width - image.size.width) / 2,
//                                       y: path.bounds.origin.y + (path.bounds.size.height - image.size.height) / 2,
//                                       width: image.size.width,
//                                       height: image.size.height)
//                image.draw(in: imageRect)
//            } else if let image = indicatorImage {
//                let imageRect = CGRect(x: path.bounds.origin.x + (path.bounds.size.width - image.size.width) / 2,
//                                       y: path.bounds.origin.y + (path.bounds.size.height - image.size.height) / 2,
//                                       width: image.size.width,
//                                       height: image.size.height)
//                image.draw(in: imageRect)
//            }
//        }
//    }
//}
//



//
////with 3 mage
//import UIKit
//@IBDesignable
//class StepperViewController: UIControl {
//
//    // MARK: Properties
//
//    @IBInspectable
//    var steps: Int = 3 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var selectedStep: Int = -1 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var indicatorSize: CGFloat = 14.0 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var lineWidth: CGFloat = 1.0 {
//        didSet {
//            self.adjustEdgeInsets()
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var indicatorImage: UIImage? {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var completedStepImage: UIImage? {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var notCompletedStepImage: UIImage? {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var completedLineColor: UIColor = UIColor.green {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var notCompletedLineColor: UIColor = UIColor.red {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    var edgeInsets: UIEdgeInsets = UIEdgeInsets.zero {
//        didSet {
//            self.adjustEdgeInsets()
//        }
//    }
//
//    // MARK: Init
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.adjustEdgeInsets()
//    }
//
//    required init?(coder decoder: NSCoder) {
//        super.init(coder: decoder)
//        self.adjustEdgeInsets()
//    }
//
//    func adjustEdgeInsets() {
//        if (self.edgeInsets.top < self.lineWidth / 2) {
//            edgeInsets = UIEdgeInsets(top: self.lineWidth / 2, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.left < self.lineWidth / 2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.lineWidth / 2, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.bottom < self.lineWidth / 2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.lineWidth / 2, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.right < self.lineWidth / 2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.lineWidth / 2)
//            self.setNeedsDisplay()
//        }
//    }
//
//    // MARK: Drawing
//
//    func pathForStepWithIndex(step: Int) -> UIBezierPath {
//        let delta = Float(self.frame.size.width - self.edgeInsets.left - self.edgeInsets.right - self.indicatorSize)
//        let offset = Float(step) * (delta / Float(self.steps - 1))
//        let x = CGFloat(Double(self.edgeInsets.left) + Double(offset))
//
//        return UIBezierPath(ovalIn: CGRect(x: x, y: self.edgeInsets.top, width: self.indicatorSize, height: self.indicatorSize))
//    }
//
//    func linePathForStepWithIndex(step: Int) -> UIBezierPath {
//        let delta = (Double(self.frame.size.width) - Double(self.edgeInsets.left) - Double(self.edgeInsets.right) - Double(self.indicatorSize)) / Double(self.steps - 1)
//        let offset = Double(step) * delta
//        let path = UIBezierPath()
//
//        var x = Double(self.edgeInsets.left) + Double(self.indicatorSize) + offset
//        let y = Double(self.edgeInsets.top) + Double(self.indicatorSize / 2)
//
//        path.move(to: CGPoint(x: x, y: y))
//
//        x = Double(self.edgeInsets.left) + Double(offset) + Double(delta)
//
//        path.addLine(to: CGPoint(x: x, y: y))
//
//        return path
//    }
//
//    override func draw(_ rect: CGRect) {
//        for i in 0..<self.steps - 1 {
//            let linePath = self.linePathForStepWithIndex(step: i)
//            linePath.lineWidth = self.lineWidth
//            if i < self.selectedStep {
//                self.completedLineColor.setStroke()
//            } else {
//                self.notCompletedLineColor.setStroke()
//            }
//            linePath.stroke()
//        }
//
//        for i in 0..<self.steps {
//            let path = self.pathForStepWithIndex(step: i)
//
//            path.lineWidth = self.lineWidth
//            path.stroke()
//
//            let image: UIImage?
//            if i < self.selectedStep {
//                image = completedStepImage
//            } else if i == self.selectedStep {
//                image = indicatorImage
//            } else {
//                image = notCompletedStepImage
//            }
//
//            if let image = image {
//                let imageRect = CGRect(x: path.bounds.origin.x + (path.bounds.size.width - image.size.width) / 2,
//                                       y: path.bounds.origin.y + (path.bounds.size.height - image.size.height) / 2,
//                                       width: image.size.width,
//                                       height: image.size.height)
//                image.draw(in: imageRect)
//            }
//        }
//    }
//}
//

//with title
//
//import UIKit
//
//@IBDesignable
//class StepperViewController: UIControl {
//
//    // MARK: Properties
//
//    @IBInspectable
//    var steps: Int = 3 {
//        didSet {
//            self.setNeedsDisplay()
//            self.createTitleLabels()
//        }
//    }
//
//    @IBInspectable
//    var selectedStep: Int = -1 {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var indicatorSize: CGFloat = 14.0 {
//        didSet {
//            self.setNeedsDisplay()
//            self.updateTitleLabelFrames()
//        }
//    }
//
//    @IBInspectable
//    var lineWidth: CGFloat = 1.0 {
//        didSet {
//            self.adjustEdgeInsets()
//            self.setNeedsDisplay()
//            self.updateTitleLabelFrames()
//        }
//    }
//
//    @IBInspectable
//    var indicatorImage: UIImage? {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var completedStepImage: UIImage? {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var notCompletedStepImage: UIImage? {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var completedLineColor: UIColor = UIColor.green {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    @IBInspectable
//    var notCompletedLineColor: UIColor = UIColor.red {
//        didSet {
//            self.setNeedsDisplay()
//        }
//    }
//
//    var titles: [String] = ["Additional Details", "Address", "Bank details"] {
//        didSet {
//            self.createTitleLabels()
//            self.setNeedsDisplay()
//        }
//    }
//
//    private var titleLabels: [UILabel] = []
//
//    var edgeInsets: UIEdgeInsets = UIEdgeInsets.zero {
//        didSet {
//            self.adjustEdgeInsets()
//        }
//    }
//
//    // MARK: Init
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        self.adjustEdgeInsets()
//        self.createTitleLabels()
//    }
//
//    required init?(coder decoder: NSCoder) {
//        super.init(coder: decoder)
//        self.adjustEdgeInsets()
//        self.createTitleLabels()
//    }
//
//    func adjustEdgeInsets() {
//        if (self.edgeInsets.top < self.lineWidth / 2) {
//            edgeInsets = UIEdgeInsets(top: self.lineWidth / 2, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.left < self.lineWidth / 2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.lineWidth / 2, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.bottom < self.lineWidth / 2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.lineWidth / 2, right: self.edgeInsets.right)
//            self.setNeedsDisplay()
//        }
//        if (self.edgeInsets.right < self.lineWidth / 2) {
//            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.lineWidth / 2)
//            self.setNeedsDisplay()
//        }
//    }
//
//    // MARK: Drawing
//
//    func pathForStepWithIndex(step: Int) -> UIBezierPath {
//        let delta = Float(self.frame.size.width - self.edgeInsets.left - self.edgeInsets.right - self.indicatorSize)
//        let offset = Float(step) * (delta / Float(self.steps - 1))
//        let x = CGFloat(Double(self.edgeInsets.left) + Double(offset))
//
//        return UIBezierPath(ovalIn: CGRect(x: x, y: self.edgeInsets.top, width: self.indicatorSize, height: self.indicatorSize))
//    }
//
//    func linePathForStepWithIndex(step: Int) -> UIBezierPath {
//        let delta = (Double(self.frame.size.width) - Double(self.edgeInsets.left) - Double(self.edgeInsets.right) - Double(self.indicatorSize)) / Double(self.steps - 1)
//        let offset = Double(step) * delta
//        let path = UIBezierPath()
//
//        var x = Double(self.edgeInsets.left) + Double(self.indicatorSize) + offset
//        let y = Double(self.edgeInsets.top) + Double(self.indicatorSize / 2)
//
//        path.move(to: CGPoint(x: x, y: y))
//
//        x = Double(self.edgeInsets.left) + Double(offset) + Double(delta)
//
//        path.addLine(to: CGPoint(x: x, y: y))
//
//        return path
//    }
//
//    override func draw(_ rect: CGRect) {
//        for i in 0..<self.steps - 1 {
//            let linePath = self.linePathForStepWithIndex(step: i)
//            linePath.lineWidth = self.lineWidth
//            if i < self.selectedStep {
//                self.completedLineColor.setStroke()
//            } else {
//                self.notCompletedLineColor.setStroke()
//            }
//            linePath.stroke()
//        }
//
//        for i in 0..<self.steps {
//            let path = self.pathForStepWithIndex(step: i)
//
//            path.lineWidth = self.lineWidth
//            path.stroke()
//
//            let image: UIImage?
//            if i < self.selectedStep {
//                image = completedStepImage
//            } else if i == self.selectedStep {
//                image = indicatorImage
//            } else {
//                image = notCompletedStepImage
//            }
//
//            if let image = image {
//                let imageRect = CGRect(x: path.bounds.origin.x + (path.bounds.size.width - image.size.width) / 2,
//                                       y: path.bounds.origin.y + (path.bounds.size.height - image.size.height) / 2,
//                                       width: image.size.width,
//                                       height: image.size.height)
//                image.draw(in: imageRect)
//            }
//        }
//    }
//
//    // MARK: Title Labels
//
//    private func createTitleLabels() {
//        titleLabels.forEach { $0.removeFromSuperview() }
//        titleLabels = []
//
//        for i in 0..<steps {
//            let label = UILabel()
//            label.text = titles[safe: i] ?? "Step \(i + 1)"
//            label.textAlignment = .center
//            label.font = UIFont.systemFont(ofSize: 14)
//            label.textColor = UIColor.black
//            label.numberOfLines = 2
//            self.addSubview(label)
//            titleLabels.append(label)
//        }
//
//        self.updateTitleLabelFrames()
//    }
//
//    private func updateTitleLabelFrames() {
//        for i in 0..<steps {
//            let delta = Float(self.frame.size.width - self.edgeInsets.left - self.edgeInsets.right - self.indicatorSize)
//            let offset = Float(i) * (delta / Float(steps - 1))
//            let x = CGFloat(Double(self.edgeInsets.left) + Double(offset))
//
//            let label = titleLabels[i]
//            let labelWidth: CGFloat = 70
//            let labelHeight: CGFloat = 40
//            let y = self.edgeInsets.top + self.indicatorSize + 5
//            label.frame = CGRect(x: x - (labelWidth - self.indicatorSize) / 2, y: y, width: labelWidth, height: labelHeight)
//        }
//    }
//}
//
//// Array safe indexing
//extension Collection {
//    subscript (safe index: Index) -> Element? {
//        return indices.contains(index) ? self[index] : nil
//    }
//}






//with title color
import UIKit

@IBDesignable
class StepperViewController: UIControl {
    
    // MARK: Properties
    
    @IBInspectable
    var steps: Int = 3 {
        didSet {
            self.setNeedsDisplay()
            self.createTitleLabels()
        }
    }
    
    @IBInspectable
    var selectedStep: Int = -1 {
        didSet {
            self.setNeedsDisplay()
            self.updateTitleLabelFrames()
        }
    }
    
    @IBInspectable
    var indicatorSize: CGFloat = 14.0 {
        didSet {
            self.setNeedsDisplay()
            self.updateTitleLabelFrames()
        }
    }
    
    @IBInspectable
    var lineWidth: CGFloat = 1.0 {
        didSet {
            self.adjustEdgeInsets()
            self.setNeedsDisplay()
            self.updateTitleLabelFrames()
        }
    }
    
    @IBInspectable
    var indicatorImage: UIImage? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable
    var completedStepImage: UIImage? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable
    var notCompletedStepImage: UIImage? {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable
    var completedLineColor: UIColor = UIColor.green {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable
    var notCompletedLineColor: UIColor = UIColor.red {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    @IBInspectable
    var currentStepLabelColor: UIColor = UIColor.blue {
        didSet {
            self.updateTitleLabelFrames()
        }
    }
    
    @IBInspectable
    var completedStepLabelColor: UIColor = UIColor.green {
        didSet {
            self.updateTitleLabelFrames()
        }
    }
    
    @IBInspectable
    var notCompletedStepLabelColor: UIColor = UIColor.gray {
        didSet {
            self.updateTitleLabelFrames()
        }
    }
    
    var titles: [String] = ["Additional Details", "Address", "Bank details"] {
        didSet {
            self.createTitleLabels()
            self.setNeedsDisplay()
        }
    }
    
    private var titleLabels: [UILabel] = []
    
    var edgeInsets: UIEdgeInsets = UIEdgeInsets.zero {
        didSet {
            self.adjustEdgeInsets()
        }
    }
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.adjustEdgeInsets()
        self.createTitleLabels()
    }
    
    required init?(coder decoder: NSCoder) {
        super.init(coder: decoder)
        self.adjustEdgeInsets()
        self.createTitleLabels()
    }
    
    func adjustEdgeInsets() {
        if (self.edgeInsets.top < self.lineWidth / 2) {
            edgeInsets = UIEdgeInsets(top: self.lineWidth / 2, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
            self.setNeedsDisplay()
        }
        if (self.edgeInsets.left < self.lineWidth / 2) {
            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.lineWidth / 2, bottom: self.edgeInsets.bottom, right: self.edgeInsets.right)
            self.setNeedsDisplay()
        }
        if (self.edgeInsets.bottom < self.lineWidth / 2) {
            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.lineWidth / 2, right: self.edgeInsets.right)
            self.setNeedsDisplay()
        }
        if (self.edgeInsets.right < self.lineWidth / 2) {
            edgeInsets = UIEdgeInsets(top: self.edgeInsets.top, left: self.edgeInsets.left, bottom: self.edgeInsets.bottom, right: self.lineWidth / 2)
            self.setNeedsDisplay()
        }
    }
    
    // MARK: Drawing
    
    func pathForStepWithIndex(step: Int) -> UIBezierPath {
        let delta = Float(self.frame.size.width - self.edgeInsets.left - self.edgeInsets.right - self.indicatorSize)
        let offset = Float(step) * (delta / Float(self.steps - 1))
        let x = CGFloat(Double(self.edgeInsets.left) + Double(offset))
        
        return UIBezierPath(ovalIn: CGRect(x: x, y: self.edgeInsets.top, width: self.indicatorSize, height: self.indicatorSize))
    }
    
    func linePathForStepWithIndex(step: Int) -> UIBezierPath {
        let delta = (Double(self.frame.size.width) - Double(self.edgeInsets.left) - Double(self.edgeInsets.right) - Double(self.indicatorSize)) / Double(self.steps - 1)
        let offset = Double(step) * delta
        let path = UIBezierPath()
        
        var x = Double(self.edgeInsets.left) + Double(self.indicatorSize) + offset
        let y = Double(self.edgeInsets.top) + Double(self.indicatorSize / 2)
        
        path.move(to: CGPoint(x: x, y: y))
        
        x = Double(self.edgeInsets.left) + Double(offset) + Double(delta)
        
        path.addLine(to: CGPoint(x: x, y: y))
        
        return path
    }
    
    override func draw(_ rect: CGRect) {
        for i in 0..<self.steps - 1 {
            let linePath = self.linePathForStepWithIndex(step: i)
            linePath.lineWidth = self.lineWidth
            if i < self.selectedStep {
                self.completedLineColor.setStroke()
            } else {
                self.notCompletedLineColor.setStroke()
            }
            linePath.stroke()
        }
        
        for i in 0..<self.steps {
            let path = self.pathForStepWithIndex(step: i)
            
            path.lineWidth = self.lineWidth
            path.stroke()
            
            let image: UIImage?
            if i < self.selectedStep {
                image = completedStepImage
            } else if i == self.selectedStep {
                image = indicatorImage
            } else {
                image = notCompletedStepImage
            }
            
            if let image = image {
                let imageRect = CGRect(x: path.bounds.origin.x + (path.bounds.size.width - image.size.width) / 2,
                                       y: path.bounds.origin.y + (path.bounds.size.height - image.size.height) / 2,
                                       width: image.size.width,
                                       height: image.size.height)
                image.draw(in: imageRect)
            }
        }
        
        self.updateTitleLabelFrames()
    }
    
    // MARK: Title Labels
    
    private func createTitleLabels() {
        titleLabels.forEach { $0.removeFromSuperview() }
        titleLabels = []
        
        for i in 0..<steps {
            let label = UILabel()
            label.text = titles[safe: i] ?? "Step \(i + 1)"
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 14)
            label.textColor = UIColor.black
            label.numberOfLines = 2
            self.addSubview(label)
            titleLabels.append(label)
        }
        
        self.updateTitleLabelFrames()
    }
    
    private func updateTitleLabelFrames() {
        for i in 0..<steps {
            let delta = Float(self.frame.size.width - self.edgeInsets.left - self.edgeInsets.right - self.indicatorSize)
            let offset = Float(i) * (delta / Float(steps - 1))
            let x = CGFloat(Double(self.edgeInsets.left) + Double(offset))
            
            let label = titleLabels[i]
            let labelWidth: CGFloat = 70
            let labelHeight: CGFloat = 40
            let y = self.edgeInsets.top + self.indicatorSize + 5
            label.frame = CGRect(x: x - (labelWidth - self.indicatorSize) / 2, y: y, width: labelWidth, height: labelHeight)
            
            if i < self.selectedStep {
                label.textColor = completedStepLabelColor
            } else if i == self.selectedStep {
                label.textColor = currentStepLabelColor
            } else {
                label.textColor = notCompletedStepLabelColor
            }
        }
    }
}

// Array safe indexing
extension Collection {
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

