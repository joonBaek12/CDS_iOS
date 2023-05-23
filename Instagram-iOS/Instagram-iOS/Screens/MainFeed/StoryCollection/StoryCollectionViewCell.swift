//
//  StoryCollectionViewCell.swift
//  Instagram-iOS
//
//  Created by 김사랑 on 2023/05/23.
//

import UIKit
import SnapKit

class StoryCollectionViewCell: BaseCollectionViewCell {
    
    // MARK: - UI Property
    
    private let colorView: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        return view
    }()
    
    
//    private let profileButton: UIButton = {
//        let button = UIButton()
//        button.setImage(ImageLiteral.Common.defaultImage, for: .normal)
//        button.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
//        button.layer.cornerRadius = 0.5 * button.bounds.size.width
//        button.clipsToBounds = true
//        return button
//    }()
//
//    private let nameLabel: UILabel = {
//        let label = UILabel()
//        label.text = "UserName"
//        label.font = .detail2kor
//        return label
//    }()
    
    // MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setting
    
    override func setLayout() {
        addSubview(colorView)
        colorView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    // MARK: - Custom Method
    
    func configureCell(with color: UIColor) {
        colorView.backgroundColor = color
    }
    

}
