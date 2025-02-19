//  PersonalScheduler - SchedulerHeaderView.swift
//  Created by zhilly on 2023/02/11

import UIKit

final class SchedulerHeaderView: UITableViewHeaderFooterView, ReusableView {
    
    // MARK: - Properties

    private var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = .preferredFont(forTextStyle: .title1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
        
    // MARK: - Initialize
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: Self.reuseIdentifier)
        setupViews()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Methods

    private func setupViews() {
        addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 30),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30)
        ])
    }
    
    func configure(userName: String) {
        titleLabel.text = userName + "'s Schedule 🗂️"
    }
}
