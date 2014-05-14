/**
 * AMS.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package services;

public interface AMS extends java.rmi.Remote {
    public void updateTime(java.lang.String u, java.lang.String s) throws java.rmi.RemoteException;
    public beans.Flightdetails[] listflightsCustomer(java.lang.String sr, java.lang.String d) throws java.rmi.RemoteException;
    public java.lang.String deleteEmployee(java.lang.String email) throws java.rmi.RemoteException;
    public beans.SearchEmployee[] searchEmployee(java.lang.String firstname, java.lang.String lastname, java.lang.String city, java.lang.String state, java.lang.String position, java.lang.String hiredate) throws java.rmi.RemoteException;
    public beans.Journey[] listreservations() throws java.rmi.RemoteException;
    public beans.Traveller[] listtravellers() throws java.rmi.RemoteException;
    public beans.SearchTraveller[] searchtraveller(java.lang.String fname, java.lang.String lname, java.lang.String fno, java.lang.String dest, java.lang.String traveldate) throws java.rmi.RemoteException;
    public java.lang.String deleteOneFlight(java.lang.String flightnumber) throws java.rmi.RemoteException;
    public beans.Flightdetails[] listFlightsToUpdate(java.lang.String flightnumber, java.lang.String source, java.lang.String destination) throws java.rmi.RemoteException;
    public java.lang.String addemployees(java.lang.String firstname, java.lang.String lastname, java.lang.String usn, java.lang.String ssn, java.lang.String type, java.lang.String addr, java.lang.String city, java.lang.String zip, java.lang.String state, java.lang.String dob, java.lang.String password, java.lang.String workd, java.lang.String pos, java.lang.String hire) throws java.rmi.RemoteException;
    public beans.Employee[] listemployees() throws java.rmi.RemoteException;
    public beans.Flightdetails[] listflights() throws java.rmi.RemoteException;
    public java.lang.String signup(java.lang.String fname, java.lang.String lname, java.lang.String usn, java.lang.String pwd, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipcode, java.lang.String dob, java.lang.String ssn, java.lang.String ppn, java.lang.String nationality) throws java.rmi.RemoteException;
    public java.lang.String deleteFlight(java.lang.String fno, java.lang.String fname, java.lang.String src, java.lang.String dest, java.lang.String duration) throws java.rmi.RemoteException;
    public java.lang.String addFlight(java.lang.String fno, java.lang.String fname, java.lang.String src, java.lang.String dest, java.lang.String crew, int seats, java.lang.String duration) throws java.rmi.RemoteException;
    public java.lang.String updateFlight(java.lang.String duration, int numberofseats, java.lang.String crewdetails, java.lang.String flightnumber) throws java.rmi.RemoteException;
    public beans.Flightdetails listOneFlight(java.lang.String flightnumber) throws java.rmi.RemoteException;
    public beans.Person signIn(java.lang.String username, java.lang.String password) throws java.rmi.RemoteException;
    public java.lang.String updatePinfo(java.lang.String emailid, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipcode) throws java.rmi.RemoteException;
    public java.lang.String retrieveDate(java.lang.String u) throws java.rmi.RemoteException;
}
