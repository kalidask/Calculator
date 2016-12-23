package com.javacodegeeks.ejb;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.EJBException;
import javax.ejb.SessionContext;

/**
 * Session Bean implementation class OperationSessionBean
 */
//@Stateless
public class OperationSessionBean implements javax.ejb.SessionBean  {
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    public float add(float x, float y) {
        return x + y;
    }
    
    public float subtract(float x, float y) {
        return x - y;
    }

   public float multiply(float x, float y) {
        return x * y;
    }

    public float divide(float x, float y) {
        return x / y;
    }

	public void ejbActivate() throws EJBException, RemoteException {
		// TODO Auto-generated method stub
		
	}

	public void ejbPassivate() throws EJBException, RemoteException {
		// TODO Auto-generated method stub
		
	}

	public void ejbRemove() throws EJBException, RemoteException {
		// TODO Auto-generated method stub
		
	}

	public void setSessionContext(SessionContext arg0) throws EJBException, RemoteException {
		// TODO Auto-generated method stub
		
	}   
	
	public void ejbCreate() throws CreateException {
		// TODO Auto-generated method stub
		
	}





    /**
     * Default constructor. 
     */
   // public OperationSessionBean() {
        // TODO Auto-generated constructor stub
    }


