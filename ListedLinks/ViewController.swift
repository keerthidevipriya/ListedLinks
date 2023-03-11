//
//  ViewController.swift
//  ListedLinks
//
//  Created by Keerthi Devipriya(kdp) on 28/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var model: DashboardModel?
    
    struct Constants {
        static let dashboard = "Dashboard"
        static let goodMrng = "Good morning"
        static let name = "Ajay Manva"
        static let viewAnalytics = "➰ View Analytics"
        static let viewAllLinks = "🔗 View all Links"
        static let talkWithUs = "Talk with us"
        static let freqAskedQues = "Frequently Asked Questions"
        static let settingsIcon = "settingsIcon"
        static let graphImage = "graphImage"
        
        
        static let lightHexColor = #colorLiteral(red: 0.055, green: 0.435, blue: 1, alpha: 1)
        static let lightGreyColor = #colorLiteral(red: 0.6, green: 0.612, blue: 0.627, alpha: 1)
        static let borderColor = #colorLiteral(red: 0.847, green: 0.847, blue: 0.847, alpha: 1)
        static let lightGreen = #colorLiteral(red: 0.29, green: 0.82, blue: 0.373, alpha: 0.12)
        static let lightBlue = #colorLiteral(red: 0.908, green: 0.944, blue: 1, alpha: 1)
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
    
    private lazy var clLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        //layout.sectionInset = UIEdgeInsets(top: 5, left: 8, bottom: 5, right: 5)
        //layout.itemSize = CGSize(width: 120, height: 120)
        layout.scrollDirection = .horizontal
        return layout
    }()
    
    private lazy var collectionView: UICollectionView = {
        let frame = CGRect(x: 8, y: 420, width: self.view.frame.width, height: 120)
        let myCollectionView:UICollectionView = UICollectionView(frame: frame, collectionViewLayout: clLayout)
        myCollectionView.showsHorizontalScrollIndicator = false
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        //myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        return myCollectionView
    }()
    
    private lazy var linksTableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    var linksSegment: UISegmentedControl = {
        var mySegmentedControl = UISegmentedControl (items: ["Top Links","Recent Links"])
        mySegmentedControl.frame = CGRect(x: 16, y: 528, width: 300, height: 30)
        mySegmentedControl.selectedSegmentIndex = 0
        mySegmentedControl.tintColor = .systemRed
        mySegmentedControl.backgroundColor = .white
        mySegmentedControl.addTarget(nil, action: #selector(segmentedValueChanged), for: .valueChanged)
        //mySegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return mySegmentedControl
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
    
    private lazy var chatWithUsBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle(Constants.talkWithUs, for: .normal)
        btn.layer.cornerRadius = 8
        btn.layer.borderWidth = 1
        btn.backgroundColor = Constants.lightGreen
        btn.layer.borderColor = Constants.lightGreen.cgColor
        btn.setTitleColor(.black, for: .normal)
        btn.titleLabel?.font = UIFont(name: "Figtree-SemiBold", size: 16)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    private lazy var frequentlAskedQuesBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle(Constants.freqAskedQues, for: .normal)
        btn.layer.cornerRadius = 8
        btn.layer.borderWidth = 1
        btn.backgroundColor = Constants.lightBlue
        btn.layer.borderColor = Constants.lightBlue.cgColor
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
        linksTableView.reloadData()
        callApi()
        setUpData()
        setUpTableView()
        setUpUI()
        setUpAutoLayout()
    }
    
    override func viewDidLayoutSubviews() {
        contentView.isScrollEnabled = true
        contentView.contentSize = CGSizeMake(UIScreen.main.bounds.width, UIScreen.main.bounds.height)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        view.addSubview(collectionView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        linksTableView.reloadData()
    }
    
    func setUpTableView() {
        linksTableView.delegate = self
        linksTableView.dataSource = self
        linksTableView.estimatedRowHeight = 20
        linksTableView.rowHeight = UITableView.automaticDimension
    }
    
    func setUpUI() {
        containerView.addSubview(settingsImage)
        containerView.addSubview(dashboardLabel)
        
        
        contentView.addSubview(goodMrngLabel)
        contentView.addSubview(nameLabel)
        contentView.addSubview(graphImage)
        contentView.addSubview(viewAnalyticsBtn)
        contentView.addSubview(collectionView)
        contentView.addSubview(linksSegment)
        contentView.addSubview(linksTableView)
        contentView.addSubview(viewAllLinksBtn)
        contentView.addSubview(chatWithUsBtn)
        contentView.addSubview(frequentlAskedQuesBtn)
        containerView.addSubview(contentView)
        view.addSubview(containerView)
    }
    
    func setUpAutoLayout() {
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
            viewAnalyticsBtn.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 464),
            viewAnalyticsBtn.heightAnchor.constraint(equalToConstant: 48),
            
            linksTableView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            linksTableView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 16),
            linksTableView.topAnchor.constraint(equalTo: linksSegment.bottomAnchor, constant: 20),
            linksTableView.heightAnchor.constraint(equalToConstant: .greatestFiniteMagnitude),
            
            viewAllLinksBtn.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            viewAllLinksBtn.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 16),
            viewAllLinksBtn.topAnchor.constraint(equalTo: linksTableView.bottomAnchor, constant: 20),
            viewAllLinksBtn.heightAnchor.constraint(equalToConstant: 48),
            
            chatWithUsBtn.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            chatWithUsBtn.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 16),
            chatWithUsBtn.topAnchor.constraint(equalTo: viewAllLinksBtn.bottomAnchor, constant: 20),
            chatWithUsBtn.heightAnchor.constraint(equalToConstant: 48),
            
            frequentlAskedQuesBtn.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16),
            frequentlAskedQuesBtn.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 16),
            frequentlAskedQuesBtn.topAnchor.constraint(equalTo: chatWithUsBtn.bottomAnchor, constant: 20),
            frequentlAskedQuesBtn.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as UITableViewCell
        cell.backgroundColor = .red
        cell.textLabel?.text = "sai"
        return cell
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}


extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 120)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 8, bottom: 5, right: 5)
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        myCell.backgroundColor = .red
        return myCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Item tapped---")
    }
}

extension ViewController {
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!) {
        print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
    }
}

extension ViewController {
    func callApi() {
        model = DashboardApi.loadDashboardJson()
    }
    
    func setUpData() {
        nameLabel.text = model?.name
    }
}

