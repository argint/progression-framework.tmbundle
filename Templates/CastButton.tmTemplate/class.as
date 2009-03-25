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
public class ${TM_NEW_FILE_BASENAME} extends CastButton 
{
	
	/*----------------------------------------------------------------------*//**
	 * コンストラクタ
	 */
	public function ${TM_NEW_FILE_BASENAME}(initObject:Object = null) 
	{
		super(initObject);
	}
	
	
	
	
	
	/*----------------------------------------------------------------------*//**
	 * Flash Player ウィンドウの CastButton インスタンスの上でユーザーがポインティングデバイスのボタンを押すと送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onCastMouseDown():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			// 任意のコマンドを記述してください。
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * ユーザーが CastButton インスタンスからポインティングデバイスを離したときに送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onCastMouseUp():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			// 任意のコマンドを記述してください。
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * ユーザーが CastButton インスタンスにポインティングデバイスを合わせたときに送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onCastRollOver():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			// 任意のコマンドを記述してください。
		);
	}
	
	/*----------------------------------------------------------------------*//**
	 * ユーザーが CastButton インスタンスからポインティングデバイスを離したときに送出されます。
	 * このイベント処理の実行中には、addCommand() メソッド、及び insertCommand() メソッドによるコマンドの同期処理が行えます。
	 */
	protected override function _onCastRollOut():void
	{
		// 実行したいコマンドを登録します。
		addCommand(
			// 任意のコマンドを記述してください。
		);
	}
	
}
}