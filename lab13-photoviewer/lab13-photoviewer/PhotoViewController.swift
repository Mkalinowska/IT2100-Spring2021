//
//  ViewController.swift
//  lab13-photoviewer
//
//  Created by Marta Kalinowska on 4/19/21.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet private var imageView: UIImageView!
    var store: PhotoStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        store.fetchInterestingPhotos {
            (photosResult) in
            
            switch photosResult {
            case let .success(photos):
                print("Sucessfully found \(photos.count) photos.")
               // if let firstPhoto = photos.first {
                 //   self.updateImageView(for: firstPhoto)
    
            case let .failure(error):
                print("Error fetching interesting photos: \(error)")
            }
            func updateImageView(for photo: Photo) {
                self.store.fetchImage(for: photo) {
                    (imageResult) in
                    
                    switch imageResult {
                    case let .success(image):
                        self.imageView.image = image
                    case let .failure(error):
                        print("Error downloading image: \(error)")
                    }
                }
            }
        }
    }
}
