
import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let quantidadeQuadros = 9.00
        let tamanhoQuadrado = 35.00
        let espacamento = tamanhoQuadrado + 2
        
        let larguraTela = self.view.frame.size.width
        let alturaTela = self.view.frame.size.height
        
        let pontoXInicial = (larguraTela - CGFloat((espacamento * quantidadeQuadros))) / 2
        let pontoYInicial = (alturaTela - CGFloat((espacamento * quantidadeQuadros))) / 2

        
        var pontoX = pontoXInicial
        var pontoY = pontoYInicial
        
        for _ in 1 ... 9 {
            for _ in 1 ... 9 {
                criarQuadrado(pontoX: CGFloat(pontoX), pontoY: CGFloat(pontoY), tamanhoQuadrado: CGFloat(tamanhoQuadrado))
                pontoX = CGFloat(pontoX) + CGFloat(espacamento)
            }
            
            pontoY = CGFloat(pontoY) + CGFloat(espacamento)
            pontoX = pontoXInicial
        }
        
    }

    func criarQuadrado(pontoX : CGFloat, pontoY : CGFloat, tamanhoQuadrado : CGFloat) {
        let quadrado = UIView(frame: CGRect(x: pontoX, y: pontoY, width: tamanhoQuadrado, height: tamanhoQuadrado))
        
        quadrado.layer.cornerRadius = 10.00
        quadrado.layer.opacity = 0.5
        quadrado.backgroundColor = UIColor.black
        quadrado.clipsToBounds = true
        
        let darkBlur = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurView = UIVisualEffectView(effect: darkBlur)
        
        blurView.frame = quadrado.bounds
        
        quadrado.addSubview(blurView)
        self.view.addSubview(quadrado)
    }
 
}

