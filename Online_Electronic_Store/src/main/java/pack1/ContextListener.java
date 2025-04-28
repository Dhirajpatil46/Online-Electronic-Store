package pack1;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletContextAttributeEvent;
import jakarta.servlet.ServletContextAttributeListener;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

//@WebListener 
public class ContextListener implements ServletContextListener, ServletContextAttributeListener
{
	@Override
	public void contextInitialized(ServletContextEvent sce)
	{
		System.out.println("Context Obhject Initialized!");
		ServletContext context = sce.getServletContext();
		System.out.println("Application Deployed Into: "+context.getServerInfo());
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce)
	{
		System.out.println("Context Obhject Distroyed!");
	}
	
	@Override
	public void attributeAdded(ServletContextAttributeEvent scae)
	{
		System.out.println("Attribute added to context object!");
		String aName = scae.getName();
		System.out.println("Attribute Name: "+aName);
	}
	
	@Override
	public void attributeRemoved(ServletContextAttributeEvent scae)
	{
		System.out.println("Attribute removed from context object!");
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent arg0) {
		// TODO Auto-generated method stub
		
	}
}
