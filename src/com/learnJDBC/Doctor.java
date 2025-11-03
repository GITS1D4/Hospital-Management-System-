package com.learnJDBC;

import java.sql.*;

public class Doctor {
	
	private Connection connection;
	
	public Doctor(Connection connection)
	{
		this.connection = connection;
	}

	public void viewDoctors()
	{
		String query = "select * from doctors";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			ResultSet resultSet = preparedStatement.executeQuery();
			
			System.out.println("Doctors: ");
			System.out.println("+---------------+---------------------+---------------------------+");
			System.out.println("| Doctor ID     | Name                |  Specialization           |");
			System.out.println("+---------------+---------------------+---------------------------+");
			
			while(resultSet.next())
			{
				int id = resultSet.getInt("id");
				String name = resultSet.getString("name");
				String Specialization = resultSet.getString("Specialization");
				
				System.out.printf("|%-15s|%-21s|%-27s|\n",id,name,Specialization);
				System.out.println("+---------------+---------------------+---------------------------+");
			}
			
		}
		catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	public boolean getDoctorByID(int id)
	{
		String query ="select *from doctors where id = ?";
		
		try
		{
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1,id);
			ResultSet resultSet = preparedStatement.executeQuery();
			if(resultSet.next())
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		return false;
	}
	
}