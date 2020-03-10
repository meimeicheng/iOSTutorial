// 玩玩ＵＩ
import UIKit

let containerView = UIView(frame:  CGRect(x: 0, y: 0, width: 300, height: 200))
containerView.backgroundColor = UIColor.orange

let button = UIButton(type: .system)
button.setTitle("Click here", for: .normal)
button.tintColor = .black
button.backgroundColor = .red
button.frame = CGRect(x: 100, y: 100, width: 80, height: 50)
containerView.addSubview(button)
