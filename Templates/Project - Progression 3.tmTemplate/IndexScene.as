//Progression////////////////////////////////////////////////////////////////
package ${TM_PACKAGE_PATH}.scenes
{
import jp.progression.casts.*;
import jp.progression.commands.*;
import jp.progression.events.*;
import jp.progression.loader.*;
import jp.progression.*;
import jp.progression.scenes.*;

/*----------------------------------------------------------------------*//**
 * IndexScene クラス
 */
public class IndexScene extends SceneObject 
{
	
	/*----------------------------------------------------------------------*//**
	 * コンストラクタ
	 */
	public function IndexScene() 
	{
		// ブラウザ同期時に出力したいタイトルを設定します。
		title = "${TM_PROJECT_NAME}";
	}
	
	
	
	
	
	/*----------------------------------------------------------------------*//**
	 * シーン移動時に目的地がシーンオブジェクト自身もしくは子階層だった場合に、階層が変更された瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	override protected function _onLoad():void 
	{
		addCommand(
			// 任意のコマンドを記述してください
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * シーンオブジェクトが目的地だった場合に、到達した瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	override protected function _onInit():void 
	{
		addCommand(
			// 任意のコマンドを記述してください
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * シーンオブジェクトが出発地だった場合に、移動を開始した瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	override protected function _onGoto():void 
	{
		addCommand(
			// 任意のコマンドを記述してください
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * シーン移動時に目的地がシーンオブジェクト自身もしくは親階層だった場合に、階層が変更された瞬間に送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	override protected function _onUnload():void 
	{
		addCommand(
			// 任意のコマンドを記述してください
		);
	}
	
} // end class
}









