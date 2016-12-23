package com.javacodegeeks.ejb;

import javax.ejb.Local;

//@Local
public interface OperationSessionBeanLocal extends javax.ejb.EJBLocalObject{
	public float add(float x, float y );
	public float subtract(float x, float y );
	public float multiply(float x, float y );
	public float divide(float x, float y );

}
