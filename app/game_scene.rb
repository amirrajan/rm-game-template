class GameScene < SKScene
  include ScreenSizes

  def didMoveToView view
    self.scaleMode = SKSceneScaleModeAspectFit
    self.backgroundColor = UIColor.whiteColor
    show_sk_debugs
    @squares = []
    40.times do |x|
      40.times do |y|
        @squares << add_sprite(
          x * 15 + 32,
          y * 15 + 32,
          'square.png'
        )
      end
    end
  end

  def add_sprite x, y, path
    texture = SKTexture.textureWithImageNamed path
    sprite = SKSpriteNode.spriteNodeWithTexture texture
    sprite.position = CGPointMake x, y
    addChild sprite
    sprite
  end

  def show_sk_debugs
    view.showsPhysics = true
    view.showsQuadCount = true
    view.showsNodeCount = true
    view.showsFPS = true
    view.showsDrawCount = true
    view.showsFields = true
  end

  def update currentTime
    @squares.each { |s| s.zRotation += 0.1 }
  end
end
