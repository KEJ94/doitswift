import UIKit
class ViewController: UIViewController {
    
    var maxImage = 3
    var minImage = 1
    var imgNumber: Int!
    @IBOutlet var imgName: UILabel!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgNumber = minImage
        setImage()
    }
    
    @IBAction func imagePrev(_ sender: UIButton) {
        imgNumber -= 1
        if(imgNumber < minImage){
            imgNumber = maxImage
        }
        setImage()
    }
    
    @IBAction func imageNext(_ sender: UIButton) {
        imgNumber += 1
        if(imgNumber > maxImage){
            imgNumber = minImage
        }
        setImage()
    }
    
    func setImage(){
        imgView.image = UIImage(named: String(imgNumber) + ".png")
        imgName.text = String(imgNumber) + ".png"
    }
    
}
