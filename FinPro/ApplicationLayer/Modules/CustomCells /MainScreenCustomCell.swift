//
//  MainScreenCustomCell.swift
//  FinPro
//
//  Created by дэвид Кихтенко on 27.09.2023.
//

import UIKit

final class MainScreenCustomCell: UICollectionViewCell {
    
    static let identifer = "CustomCell"
    
    private lazy var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "apple.terminal.fill")
        image.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(image)
        return image
    }()
    
    private lazy var text: UILabel = {
        let text = UILabel()
        text.textColor = .label
        contentView.addSubview(text)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setNeedsUpdateConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()

        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.topAnchor.constraint(equalTo: topAnchor),
            image.heightAnchor.constraint(equalToConstant: contentView.frame.height - 25),
            image.widthAnchor.constraint(equalToConstant: contentView.frame.width - 25),
            
            text.centerXAnchor.constraint(equalTo: centerXAnchor),
            text.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func setup() {
        text.text = "allah"
    }
}
