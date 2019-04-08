import Foundation
import SpriteKit
import PlaygroundSupport

public class MyScene: SKScene {
    
    public var pressed:Bool = false
    public var criadoFala:Int = 0
    public var criadoFala2:Int = 0
    public var criadoFala3:Int = 0
    public var backgroundPrev : SKSpriteNode = SKSpriteNode(texture: SKTexture(imageNamed: "background.png"))
    public var background : SKSpriteNode = SKSpriteNode(texture: SKTexture(imageNamed: "background.png"))
    public var background2 : SKSpriteNode = SKSpriteNode(texture: SKTexture(imageNamed: "background.png"))
    public var background3 : SKSpriteNode = SKSpriteNode(texture: SKTexture(imageNamed: "background.png"))
    public var background4 : SKSpriteNode = SKSpriteNode(texture: SKTexture(imageNamed: "background.png"))
    public var background5 : SKSpriteNode = SKSpriteNode(texture: SKTexture(imageNamed: "background.png"))
    public var fala : SKSpriteNode = SKSpriteNode(imageNamed: "fala1A.png")
    public var fala2 : SKSpriteNode = SKSpriteNode(imageNamed: "fala2A.png")
    public var fala3 : SKSpriteNode = SKSpriteNode(imageNamed: "fala3A.png")
    public var personagem : SKSpriteNode = SKSpriteNode(imageNamed: "personagem.png")
    public var personagem2 : SKSpriteNode = SKSpriteNode(imageNamed: "personagem2.png")
    public var personagem3 : SKSpriteNode = SKSpriteNode(imageNamed: "personagem3.png")
    public var personagem4 : SKSpriteNode = SKSpriteNode(imageNamed: "personagem4.png")
    public var alert : SKSpriteNode = SKSpriteNode(imageNamed: "alert.png")
    var cam: SKCameraNode!
    public var point:CGPoint = CGPoint(x: 0, y: 0)
    public var node:String! = ""
    
    //Backgrounds
    private func initBackgrounds(){
        backgroundPrev.position.x = (background.position.x - backgroundPrev.size.width + 100)
        backgroundPrev.position.y = frame.size.height/2
        backgroundPrev.zPosition = -3
        backgroundPrev.name = "backgroundPrev"
        
        background.position.x = background.size.width/2
        background.position.y = frame.size.height/2
        background.zPosition = -3
        background.name = "background"
        
        background2.position.x = (background.position.x + background2.size.width) - 100
        background2.position.y = frame.size.height/2
        background2.zPosition = -3
        background2.name = "background2"
        
        background3.position.x = (background2.position.x + background3.size.width) - 100
        background3.position.y = frame.size.height/2
        background3.zPosition = -3
        background3.name = "background3"
        
        background4.position.x = (background3.position.x + background4.size.width) - 100
        background4.position.y = frame.size.height/2
        background4.zPosition = -3
        background4.name = "background4"
        
        background5.position.x = (background4.position.x + background5.size.width) - 100
        background5.position.y = frame.size.height/2
        background5.zPosition = -3
        background5.name = "background5"
        
        alert.position.x = (background.size.width*4 - self.size.width/2) + frame.width/3
        alert.position.y = 1.8*(frame.size.height/3)
        alert.zPosition = -3
        alert.name = "alert"
        alert.scale(to: CGSize(width: size.width/1.2, height: size.height/1.2))
        
    }
    
    //FALAS
    private func initFalas(){
        //fala.position.x = personagem2.position.x + personagem2.size.width/2
        //fala.position.y = personagem2.position.y + personagem2.size.height/2
        fala.position.x = personagem2.position.x + 2*(personagem2.size.width/1.7)
        fala.position.y = personagem2.position.y + personagem2.size.height/1.2
        fala.size = CGSize(width: 100, height: 100)
        fala.name = "fala"
        fala.zPosition = -2
        fala.scale(to: CGSize(width: size.width/4, height: size.height/4))
        
        //        fala2.position.x = personagem3.position.x + personagem3.size.width/2
        //        fala2.position.y = personagem3.position.y + personagem3.size.height/2
        fala2.position.x = personagem3.position.x + 2*(personagem3.size.width/1.7)
        fala2.position.y = personagem3.position.y + personagem3.size.height/1.2
        fala2.size = CGSize(width: 100, height: 100)
        fala2.name = "fala2"
        fala2.zPosition = -2
        fala2.scale(to: CGSize(width: size.width/4, height: size.height/4))
        
        //        fala3.position.x = personagem4.position.x + personagem4.size.width/2
        //        fala3.position.y = personagem4.position.y + personagem4.size.height/2
        fala3.position.x = personagem4.position.x + 2*(personagem4.size.width/1.7)
        fala3.position.y = personagem4.position.y + personagem4.size.height/1.2
        fala3.size = CGSize(width: 100, height: 100)
        fala3.name = "fala3"
        fala3.zPosition = -2
        fala3.scale(to: CGSize(width: size.width/4, height: size.height/4))
    }
    
    //Characters
    private func initPersonagens(){
        personagem.setScale(0.25)
        personagem.name = "personagem"
        
        personagem2.setScale(0.20)
        personagem2.name = "personagem2"
        personagem2.zPosition = -1
        
        personagem3.setScale(0.20)
        personagem3.name = "personagem3"
        personagem3.zPosition = -1
        
        personagem4.setScale(0.20)
        personagem4.name = "personagem4"
        personagem4.zPosition = -1
    }
    
    private func initPositionsCharacter(){
        personagem.position.x = frame.size.width/4
        personagem.position.y = size.height/3
        
        personagem2.position.x = background2.position.x
        personagem2.position.y = size.height/2.5
        
        personagem3.position.x = background3.position.x
        personagem3.position.y = size.height/2.5
        
        personagem4.position.x = background4.position.x
        personagem4.position.y = size.height/2.5
    }
    
    //Balons
    private func initPositionsFala(){
        fala.position.x = personagem2.position.x + personagem2.size.width/2
        fala.position.y = personagem2.position.y + personagem2.size.height/2
        fala.name = "fala1"
        
        fala2.position.x = personagem3.position.x + personagem3.size.width/2
        fala2.position.y = personagem3.position.y + personagem3.size.height/2
        fala2.name = "fala2"
        
        fala3.position.x = personagem4.position.x + personagem4.size.width/2
        fala3.position.y = personagem4.position.y + personagem4.size.height/2
        fala3.name = "fala3"
    }
    
    //Camera
    private func initCam(){
        cam = SKCameraNode()
        cam.setScale(0.85)
        cam.position = personagem.position
    }
    
    //Load elements in the screen and set camera
    public override func sceneDidLoad() {
        initBackgrounds()
        initPersonagens()
        initCam()
        initFalas()
        initPositionsCharacter()
        
        addChild(backgroundPrev)
        addChild(background)
        addChild(background2)
        addChild(background3)
        addChild(background4)
        addChild(background5)
        addChild(alert)
        addChild(personagem)
        addChild(personagem2)
        addChild(personagem3)
        addChild(personagem4)
        addChild(cam)
        addChild(fala)
        addChild(fala2)
        addChild(fala3)
        self.camera = cam
    }
    
    func touchDown(atPoint pos : CGPoint) {
        point = pos
        pressed = true
    }
    
    func touchUp(atPoint pos : CGPoint) {
        pressed = false
    }
    
    //Interaction falas
    public override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches{
            let location = t.location(in: self)
            let touchNode = atPoint(location)
            node = touchNode.name
            if (touchNode.name == "fala"){
                if(criadoFala<2){
                    criadoFala+=1
                    fala.texture = SKTexture(imageNamed: "fala1B.png")
                }
                else{
                    fala.alpha = 0
                }
            }
            else if (touchNode.name == "fala2"){
                if(criadoFala2<2){
                    criadoFala2+=1
                    fala2.texture = SKTexture(imageNamed: "fala2B.png")
                }
                else{
                    fala2.alpha = 0
                }
            }
            else if (touchNode.name == "fala3"){
                if(criadoFala3<2){
                    criadoFala3+=1
                    fala3.texture = SKTexture(imageNamed: "fala3B.png")
                }
                else{
                    fala3.alpha = 0
                }
            }
            else{
                touchDown(atPoint: t.location(in: self))}
        }
        
    }
    
    public override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { touchUp(atPoint: t.location(in: self)) }
    }
    
    //Moviment character and camera
    public override func update(_ currentTime: TimeInterval) {
        cam.position = personagem.position
        cam.position.x += self.size.width/4
        cam.position.y = personagem.position.y + self.size.height/6
        if( pressed == true){
            if ( node != "personagem" && personagem.position.x < (background.size.width*4 - self.size.width/2)){
                //Velocidade da movimentação do personagem indo para frente
                personagem.position.x = personagem.position.x + 10
            }
            else if (node == "personagem" && personagem.position.x > personagem.size.width/2){
                //Velocidade da movimentação do personagem indo para trás
                personagem.position.x = personagem.position.x - 10
            }
        }
        if( criadoFala != 0 && personagem.position.x-personagem2.position.x >= self.size.width/2){
            fala.texture = SKTexture(imageNamed: "fala1A.png")
            fala.alpha = 1
            criadoFala = 0
        }
        if( criadoFala2 != 0 && personagem.position.x-personagem3.position.x >= self.size.width/2){
            fala2.texture = SKTexture(imageNamed: "fala2A.png")
            fala2.alpha = 1
            criadoFala2 = 0
        }
        if( criadoFala3 != 0 && personagem.position.x-personagem4.position.x >= self.size.width/2){
            fala3.texture = SKTexture(imageNamed: "fala3A.png")
            fala3.alpha = 1
            criadoFala3 = 0
        }
    }
    
    //Resize objs
    private func resize(){
        resizeObjByHeight(obj:backgroundPrev, new_height:size.height)
        resizeObjByHeight(obj:background, new_height:size.height)
        resizeObjByHeight(obj:background2, new_height:size.height)
        resizeObjByHeight(obj:background3, new_height:size.height)
        resizeObjByHeight(obj:background4, new_height:size.height)
        resizeObjByHeight(obj:background5, new_height:size.height)
        resizeObjByWidth(obj: fala, new_width: size.width)
        resizeObjByWidth(obj: fala2, new_width: size.width)
        resizeObjByWidth(obj: fala3, new_width: size.width)
    }
    
    
    public override func didChangeSize(_ oldSize: CGSize) {
        resize()
        initBackgrounds()
        initPersonagens()
        initPositionsCharacter()
        initFalas()
        alert.scale(to: CGSize(width: size.width/2, height: size.height/2))
        personagem.scale(to: CGSize(width: size.width/5.5, height: size.height/3))
        personagem2.scale(to: CGSize(width: size.width/7.5, height: size.height/4))
        personagem3.scale(to: CGSize(width: size.width/7.5, height: size.height/4))
        personagem4.scale(to: CGSize(width: size.width/7.5, height: size.height/4))
    }
    
    //Functions to resizes in scale
    func resizeObjByWidth(obj:SKSpriteNode, new_width:CGFloat){
        let w_old = obj.size.width
        let h_old = obj.size.height
        let w_new = new_width
        let h_new = w_new * h_old/w_old
        obj.size = CGSize(width: w_new, height: h_new)
    }
    
    public func resizeObjByHeight(obj:SKSpriteNode, new_height:CGFloat){
        let w_old = obj.size.width
        let h_old = obj.size.height
        let h_new = new_height
        let w_new = h_new * w_old/h_old
        obj.size = CGSize(width: w_new, height: h_new)
    }
    
    
}
