package pack1;

import jakarta.servlet.annotation.WebListener;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;

@WebListener
public class SessionListener implements HttpSessionListener, HttpSessionAttributeListener 
{
	@Override
	public void sessionCreated(HttpSessionEvent sre)
	{
		System.out.println("Http Sesssion Created!!");
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent sre)
	{
		System.out.println("Http Session Destroyed!");
	}
	
	@Override
	public void attributeAdded(HttpSessionBindingEvent hsbe)
	{
		System.out.println("Attribute added to the Session!");
	}
	
	@Override
	public void attributeRemoved(HttpSessionBindingEvent hsbe)
	{
		System.out.println("Attribute removed from hte Session!");
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}
