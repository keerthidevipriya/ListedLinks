//
//  ViewController.swift
//  ListedLinks
//
//  Created by Keerthi Devipriya(kdp) on 28/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    struct Constants {
        static let dashboard = "Dashboard"
        static let goodMrng = "Good morning"
        static let name = "Ajay Manva"
        static let viewAnalytics = "➰ View Analytics"
        static let viewAllLinks = "🔗 View all Links"
        static let settingsIcon = "settingsIcon"
        static let graphImage = "graphImage"
        
        
        static let lightHexColor = #colorLiteral(red: 0.055, green: 0.435, blue: 1, alpha: 1)
        static let lightGreyColor = #colorLiteral(red: 0.6, green: 0.612, blue: 0.627, alpha: 1)
        static let borderColor = #colorLiteral(red: 0.847, green: 0.847, blue: 0.847, alpha: 1)
    }
    
    private lazy var dashboardLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.dashboard
        label.textColor = .white
        label.font = UIFont(name: "Figtree-SemiBold", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var settingsImage: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: Constants.settingsIcon)
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFit
        return imageview
    }()
    
    private lazy var goodMrngLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.goodMrng
        label.textColor = Constants.lightGreyColor
        label.font = UIFont(name: "Figtree-Regular", size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.name + " 👋"
        label.textColor = .black
        label.font = UIFont(name: "Figtree-SemiBold", size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var graphImage: UIImageView = {
        let imageview = UIImageView()
        imageview.image = UIImage(named: Constants.graphImage)
        imageview.translatesAutoresizingMaskIntoConstraints = false
        imageview.contentMode = .scaleAspectFill
        return imageview
    }()
    
    private lazy var viewAnalyticsBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle(Constants.viewAnalytics, for: .normal)
        btn.layer.cornerRadius = 8
        btn.layer.borderWidth = 1
        btn.layer.borderColor = Constants.borderColor.cgColor
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "Figtree-SemiBold", size: 16)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private lazy var viewAllLinksBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle(Constants.viewAllLinks, for: .normal)
        btn.layer.cornerRadius = 8
        btn.layer.borderWidth = 1
        btn.layer.borderColor = Constants.borderColor.cgColor
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "Figtree-SemiBold", size: 16)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = Constants.lightHexColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var contentView: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isScrollEnabled = true
        view.showsVerticalScrollIndicator = false
        view.layer.cornerRadius = 16
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        containerView.addSubview(settingsImage)
        containerView.addSubview(dashboardLabel)
        
        
        contentView.addSubview(goodMrngLabel)
        contentView.addSubview(nameLabel)
        contentView.addSubview(graphImage)
        contentView.addSubview(viewAnalyticsBtn)
        contentView.addSubview(viewAllLinksBtn)
        containerView.addSubview(contentView)
        view.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: view.topAnchor),
            containerView.leftAnchor.constraint(equalTo: view.leftAnchor),
            containerView.rightAnchor.constraint(equalTo: view.rightAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            dashboardLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            dashboardLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 48),
            dashboardLabel.bottomAnchor.constraint(equalTo: contentView.topAnchor, constant: -28),
            
            settingsImage.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16),
            settingsImage.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40),
            settingsImage.bottomAnchor.constraint(equalTo: contentView.topAnchor, constant: -20),
            
            contentView.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            contentView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 100),
            contentView.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            contentView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            
            
            goodMrngLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            goodMrngLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 32),
            
            nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            nameLabel.topAnchor.constraint(equalTo: goodMrngLabel.bottomAnchor, constant: 4),
            
            graphImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            graphImage.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16),
            graphImage.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 24),
            
            
            viewAnalyticsBtn.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            viewAnalyticsBtn.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 16),
            viewAnalyticsBtn.topAnchor.constraint(equalTo: graphImage.bottomAnchor, constant: 20),
            viewAnalyticsBtn.heightAnchor.constraint(equalToConstant: 48),
            
            viewAllLinksBtn.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            viewAllLinksBtn.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 16),
            viewAllLinksBtn.topAnchor.constraint(equalTo: viewAnalyticsBtn.bottomAnchor, constant: 20),
            viewAllLinksBtn.heightAnchor.constraint(equalToConstant: 48)
        ])
    }


}

