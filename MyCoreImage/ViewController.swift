//
//  ViewController.swift
//  MyCoreImage
//
//  Created by Habeebur Rahman on 13/04/22.
//

import UIKit
import CoreImage

class ViewController: UIViewController {

    @IBOutlet weak var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func DiscBlur(_ sender: Any) {
       
        let inputImage = UIImage(named: "image")!
        
       if let currentFilter = CIFilter(name: "CIDiscBlur")
        {
            let currentImage = CIImage(image: inputImage)
           currentFilter.setValue(currentImage, forKey: kCIInputImageKey)
           
           let contex = CIContext()
           
           if let output  = currentFilter.value(forKey: kCIOutputImageKey) as?  CIImage , let CiFilteredImage = contex.createCGImage(output, from: output.extent)
           {
               let filteredImage = UIImage(cgImage: CiFilteredImage)
               
               imageview.image = filteredImage
           }
        }
    }
    

    @IBAction func sepia(_ sender: Any) {
       
        let inputImage = UIImage(named: "image")!
        
       if let currentFilter = CIFilter(name: "CISepiaTone")
        {
            let currentImage = CIImage(image: inputImage)
           currentFilter.setValue(currentImage, forKey: kCIInputImageKey)
           
           let contex = CIContext()
           
           if let output  = currentFilter.value(forKey: kCIOutputImageKey) as?  CIImage , let CiFilteredImage = contex.createCGImage(output, from: output.extent)
           {
               let filteredImage = UIImage(cgImage: CiFilteredImage)
               
               imageview.image = filteredImage
           }
        }
    }
    
    
    @IBAction func noir(_ sender: Any) {
      
        let inputImage = UIImage(named: "image")!
        
       if let currentFilter = CIFilter(name: "CIFalseColor")
        {
            let currentImage = CIImage(image: inputImage)
           currentFilter.setValue(currentImage, forKey: kCIInputImageKey)
           
           let contex = CIContext()
           
           if let output  = currentFilter.value(forKey: kCIOutputImageKey) as?  CIImage , let CiFilteredImage = contex.createCGImage(output, from: output.extent)
           {
               let filteredImage = UIImage(cgImage: CiFilteredImage)
               
               imageview.image = filteredImage
           }
        }
    }
    
    
    @IBAction func photoeffect(_ sender: Any) {
        
        let inputImage = UIImage(named: "image")!
        
       if let currentFilter = CIFilter(name: "CIPhotoEffectProcess")
        {
            let currentImage = CIImage(image: inputImage)
           currentFilter.setValue(currentImage, forKey: kCIInputImageKey)
           
           let contex = CIContext()
           
           if let output  = currentFilter.value(forKey: kCIOutputImageKey) as?  CIImage , let CiFilteredImage = contex.createCGImage(output, from: output.extent)
           {
               let filteredImage = UIImage(cgImage: CiFilteredImage)
               
               imageview.image = filteredImage
           }
        }
    }
    
    
    @IBAction func Clear(_ sender: Any) {
        
        let inputImage = UIImage(named: "image")!
        
        imageview.image = inputImage
        
    }
}


//CIPhotoEffectProcess, CIFalseColor, CISepiaTone, CIDiscBlur
