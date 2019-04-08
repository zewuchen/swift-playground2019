//#-hidden-code


import PlaygroundSupport
import SpriteKit

let frame = CGRect(x: 0, y: 0, width: 480, height: 640)
let sceneView = SKView(frame:frame)
sceneView.backgroundColor = .cyan
let scene = MyScene(size: frame.size)
scene.backgroundColor = .cyan
scene.scaleMode = .resizeFill
sceneView.presentScene(scene)

PlaygroundSupport.PlaygroundPage.current.liveView = sceneView

//#-end-hidden-code

/*:
 ## Xenophobia
 
 Xenophobia is the aversion to foreign people. Not all that suffer from xenophobia come from different countries. Sometimes it happens with people who are different parts of a country or ethnical backgrounds. Xenophobia is usually portrayed as acts of violence or hatred, but it can also happen during everyday speech and interactions. This happens because people assumes that banter and jokes cause no harm but they may be a vehicle of enforcing harmful stereotypes. Such actions can have lasting psychological impact on a persons life causing feelings of inadequacy and feeling excluded.
 
 In this playground, a Chinese boy named little Zewu will walk the stage with people from his daily life, click on the balloon to change the phrases of the characters that will appear and see how you can help fight this prejudice. Keep your finger pressed on the screen to move the character forward.
 
 _These speech bubbles are based on my experience dealing with xenophobia as a Chinese descendant living in São Paulo, Brazil._
 
 
 - - -
 
 _You can go back if press your finger in little Zewu!_
 */
