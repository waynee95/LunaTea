package rm.core;

import rm.core.Tilemap;
import pixi.core.renderers.webgl.Renderer;
import pixi.core.renderers.canvas.CanvasRenderer;
import pixi.core.renderers.AbstractRenderer;

@:expose("ShaderTilemap")
@:native("ShaderTilemap")
extern class ShaderTilemap extends Tilemap {
 /**
  * Uploads animation state in renderer
  *
  * @method _hackRenderer
  * @param {PIXI.SystemRenderer} pixi renderer
  * @private
  */
 private dynamic function _hackRenderer(renderer: AbstractRenderer): AbstractRenderer;

 /**
  * PIXI render method
  *
  * @method renderWebGL
  * @param {PIXI.WebGLRenderer} pixi renderer
  */
 public dynamic function renderWebGL(renderer: Renderer): Void;

 /**
  * PIXI render method
  *
  * @method renderCanvas
  * @param {PIXI.CanvasRenderer} pixi renderer
  */
 public dynamic function renderCanvas(renderer: CanvasRenderer): Void;

 /**
  * Forces to repaint the entire tilemap AND update bitmaps list if needed
  *
  * @method refresh
  */
 public dynamic function refresh(): Void;

 /**
  * Call after you update tileset
  *
  * @method refreshTileset
  */
 public dynamic function refreshTileset(): Void;
}
