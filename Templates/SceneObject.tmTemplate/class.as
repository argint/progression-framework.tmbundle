//Progression////////////////////////////////////////////////////////////////
package ${TM_CLASS_PATH} 
{
import jp.progression.casts.*;
import jp.progression.commands.*;
import jp.progression.events.*;
import jp.progression.loader.*;
import jp.progression.*;
import jp.progression.scenes.*;

/*----------------------------------------------------------------------*//**
 * ${TM_NEW_FILE_BASENAME} クラス
 */
public class ${TM_NEW_FILE_BASENAME} extends SceneObject
{
	
	/*----------------------------------------------------------------------*//**
	 * コンストラクタ
	 */
	public function ${TM_NEW_FILE_BASENAME}(name:String = null, initObject:Object = null) 
	{
		super(name, initObject);
		
		// ブラウザ同期時に出力したいタイトルを設定します。
		title = "";
	}
	
	
	
	
	
	/*----------------------------------------------------------------------*//**
	 * シーン移動時に目的地がシーンオブジェクト自身もしくは子階層だった場合に、階層が変更された瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onLoad():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * シーンオブジェクトが目的地だった場合に、到達した瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onInit():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * シーンオブジェクトが出発地だった場合に、移動を開始した瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onGoto():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * シーン移動時に目的地がシーンオブジェクト自身もしくは親階層だった場合に、階層が変更された瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onUnload():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			
		);
	}
	
}
}