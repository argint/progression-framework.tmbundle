//Progression////////////////////////////////////////////////////////////////
package
{
import flash.display.StageAlign;
import flash.display.StageQuality;
import flash.display.StageScaleMode;
import jp.progression.casts.*;
import jp.progression.commands.*;
import jp.progression.core.debug.Verbose;
import jp.progression.events.*;
import jp.progression.loader.*;
import jp.progression.*;
import jp.progression.scenes.*;
import org.libspark.ui.SWFWheel;
import ${TM_PACKAGE_PATH}.scenes.IndexScene;

/*----------------------------------------------------------------------*//**
 * Index クラス
 */
[SWF(width="640", height="480", frameRate="30", backgroundColor="#FFFFFF")]
public class Index extends CastDocument
{
	
	/*----------------------------------------------------------------------*//**
	 * Progression インスタンスを取得します。
	 */
	public var prog:Progression;
	
	
	
	
	/*----------------------------------------------------------------------*//**
	 * コンストラクタ
	 */
	public function Index() 
	{
		
	}
	
	
	
	
	
	/*----------------------------------------------------------------------*//**
	 * SWF ファイルの読み込みが完了し、stage 及び loaderInfo にアクセス可能になった場合に送出されます。
	 */
	protected override function _onInit():void 
	{
		// stage の初期設定を行います。
		align     = StageAlign.TOP_LEFT;
		quality   = StageQuality.HIGH;
		scaleMode = StageScaleMode.NO_SCALE;
		
		// SWFWheel を有効化する
		SWFWheel.initialize( stage );
		
		// 開発者用の出力を有効化します。
		//Verbose.enabled = true;
		//Verbose.filteringCommand();
		
		// Progression インスタンスを作成します。
		prog = new Progression("index", stage, IndexScene);
		
		// オンラインでの URL 同期を有効化します。
		prog.sync = true;
		
		// 最初のシーンに移動します。
		prog.goto(prog.firstSceneId);
	}
	
} // end class
}








