/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter(urlPatterns = "*.admin")
public class RouteFilter implements Filter {

    public void destroy() {
    	
    }

    public void doFilter(ServletRequest servletRequest,
            ServletResponse servletResponse, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;

        if (request.getSession().getAttribute("name") != null) {
            System.out.println("-"+servletRequest.toString()+" -"+servletResponse.toString());
            chain.doFilter(servletRequest, servletResponse);
        } else {
            request.getRequestDispatcher("/Login.admin").forward(servletRequest,servletResponse);
        }
    }

    public void init(FilterConfig arg0) throws ServletException {
    }

}
