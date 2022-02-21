package Exceptions;

public class PositiveNumException extends Exception {

	public PositiveNumException() {

	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Mã sản phẩm phải là một số nguyên lớn hơn 0";
	}
	
	
}
