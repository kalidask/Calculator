package com.javacodegeeks.ejb;

import javax.ejb.CreateException;
import javax.ejb.EJBLocalHome;
import java.rmi.RemoteException;

import javax.ejb.EJBException;


public interface OperationSessionHome extends EJBLocalHome
{
	public OperationSessionBeanLocal create() throws CreateException;

}
