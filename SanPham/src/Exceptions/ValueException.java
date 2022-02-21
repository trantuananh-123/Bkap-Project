package Exceptions;

public class ValueException extends Exception {

	public ValueException() {
		
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Giá bán sản phẩm phải lớn hơn giá nhập ít nhất 1,2 lần";
	}
	
	
}
