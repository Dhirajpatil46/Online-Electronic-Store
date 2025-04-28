package pack1;

import jakarta.servlet.ServletRequestAttributeEvent;
import jakarta.servlet.ServletRequestAttributeListener;
import jakarta.servlet.ServletRequestEvent;
import jakarta.servlet.ServletRequestListener;

//@WebListener
public class RequestListener implements ServletRequestListener, ServletRequestAttributeListener
{
	@Override
	public void requestInitialized(ServletRequestEvent sre)
	{
		System.out.println("Request Object Initialized!");
	}
	
	@Override
	public void requestDestroyed(ServletRequestEvent sre)
	{
		System.out.println("Request Object Distroyed!");
	}
	
	@Override
	public void attributeAdded(ServletRequestAttributeEvent srae)
	{
		System.out.println("Attribute added to Servlet Request!");
		System.out.println("Attribute Name: "+srae.getName());
	}
	
	@Override
	public void attributeRemoved(ServletRequestAttributeEvent srae)
	{
		System.out.println("Attribute removed from Srvlet Request!");
	}

	@Override
	public void attributeReplaced(ServletRequestAttributeEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}
