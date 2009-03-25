//Progression////////////////////////////////////////////////////////////////
package ${TM_CLASS_PATH}
{
import jp.progression.casts.*;
import jp.progression.commands.*;
import jp.progression.core.commands.Command;
import jp.progression.events.*;
import jp.progression.loader.*;
import jp.progression.*;
import jp.progression.scenes.*;

/*----------------------------------------------------------------------*//**
 * ${TM_NEW_FILE_BASENAME} クラス
 */
public class ${TM_NEW_FILE_BASENAME} extends Command
{
	
	/*----------------------------------------------------------------------*//**
	 * コンストラクタ
	 */
	public function ${TM_NEW_FILE_BASENAME}(initObject:Object = null) 
	{
		super(_execute, _interrupt, initObject);
	}
	
	
	
	
	
	/*----------------------------------------------------------------------*//**
	 * 実行されるコマンドの実装です。
	 */
	private function _execute():void
	{
		// 通常処理を終了します。
		executeComplete();
	}
	
	/*----------------------------------------------------------------------*//**
	 * 中断実行されるコマンドの実装です。
	 */
	private function _interrupt():void
	{
		// 中断処理を終了します。
		interruptComplete();
	}
	
	/*----------------------------------------------------------------------*//**
	 * ${TM_NEW_FILE_BASENAME}。
	 */
	public override function clone():Command
	{
		return new ${TM_NEW_FILE_BASENAME}();
	}
	
}
}