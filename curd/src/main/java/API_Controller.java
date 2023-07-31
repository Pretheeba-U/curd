

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.userDAO;

import java.sql.*;


@WebServlet("/API_Controller")
public class API_Controller extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		HttpRequest api_request = HttpRequest.newBuilder()
				.uri(URI.create("https://text-translator2.p.rapidapi.com/getLanguages"))
				.header("X-RapidAPI-Key", "850203f7f5mshf213930f43d4224p1a4dbajsn072f2a097041")
				.header("X-RapidAPI-Host", "text-translator2.p.rapidapi.com")
				.method("GET", HttpRequest.BodyPublishers.noBody())
				.build();
		HttpResponse<String> api_response = null;
		try {
			api_response = HttpClient.newHttpClient().send(api_request, HttpResponse.BodyHandlers.ofString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println(api_response.body());
}
}
