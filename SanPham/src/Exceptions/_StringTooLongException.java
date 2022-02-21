package Exceptions;

public class _StringTooLongException extends Exception {

	public _StringTooLongException() {
		
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Tên danh mục không được dài quá 50 ký tự";
	}
}
