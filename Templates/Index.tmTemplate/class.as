//Progression////////////////////////////////////////////////////////////////
package ${TM_CLASS_PATH} 
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

/*----------------------------------------------------------------------*//**
 * ${TM_NEW_FILE_BASENAME} クラス
 */
public class ${TM_NEW_FILE_BASENAME} extends CastDocument
{
	
	/*----------------------------------------------------------------------*//**
	 * Progression インスタンスを取得します。
	 */
	public var prog:Progression;
	
	
	
	
	
	/*----------------------------------------------------------------------*//**
	 * コンストラクタ
	 */
	public function ${TM_NEW_FILE_BASENAME}() 
	{
	}
	
	
	
	
	
	/*----------------------------------------------------------------------*//**
	 * SWF ファイルの読み込みが完了し、stage 及び loaderInfo にアクセス可能になった場合に送出されます。
	 */
	protected override function _onInit():void
	{
		// stage の初期設定を行います。
		align = StageAlign.TOP_LEFT;
		quality = StageQuality.HIGH;
		scaleMode = StageScaleMode.NO_SCALE;
		
		// 開発者用の出力を有効化します。
		//Verbose.enabled = true;
		//Verbose.filteringCommand();
		
		// Progression インスタンスを作成します。
		prog = new Progression("index", stage);
		
		// ブラウザ再生時に URL 同期を有効化します。
		prog.sync = false;
		
		// 最初のシーンに移動します。
		prog.goto( prog.firstSceneId );
	}
	
}
}