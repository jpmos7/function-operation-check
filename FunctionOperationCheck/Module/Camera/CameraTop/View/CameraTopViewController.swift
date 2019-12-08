//
//  CameraTopViewController.swift
//  FunctionOperationCheck
//

import UIKit

/// CameraTop の VIew
class CameraTopViewController: UIViewController {

    var presenter: CameraTopPresentation?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /// UIImagePickerController カメラを起動する
    /// - Parameter sender: "UIImagePickerController"ボタン
    @IBAction func startUiImagePickerController(_ sender: Any) {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
}

extension CameraTopViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as! UIImage
        //self.imageView.image = image
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        self.dismiss(animated: true, completion: nil)
    }
}
