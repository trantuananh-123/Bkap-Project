package Exceptions;

public class _StringTooShortException extends Exception {

	public _StringTooShortException() {
		
	}
	
	@Override
	public String toString() {
		return "Tên sản phẩm phải có ít nhất 6 ký tự";
	}
}
