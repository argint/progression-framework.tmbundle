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
public class ${TM_NEW_FILE_BASENAME} extends CastPreloader 
{
	
	/*----------------------------------------------------------------------*//**
	 * コンストラクタ
	 */
	public function ${TM_NEW_FILE_BASENAME}() 
	{
		// 読み込みたい SWF ファイルの URL を設定します。
		url = "index.swf";
		
		// SWF ファイルの URL の起点を、自身の SWF ファイルが存在するフォルダにするかどうかを指定します。
		useSWFBasePath = false;
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
	}
	
	/*----------------------------------------------------------------------*//**
	 * オブジェクトが読み込みを開始した瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onCastLoadStart():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * ダウンロード処理を実行中にデータを受信したときに送出されます。
	 */
	protected override function _onProgress():void
	{
	}
	
	/*----------------------------------------------------------------------*//**
	 * オブジェクトが読み込みを完了した瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onCastLoadComplete():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			
		);
	}
	
}
}