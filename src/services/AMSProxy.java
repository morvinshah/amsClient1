package services;

public class AMSProxy implements services.AMS {
  private String _endpoint = null;
  private services.AMS aMS = null;
  
  public AMSProxy() {
    _initAMSProxy();
  }
  
  public AMSProxy(String endpoint) {
    _endpoint = endpoint;
    _initAMSProxy();
  }
  
  private void _initAMSProxy() {
    try {
      aMS = (new services.AMSServiceLocator()).getAMS();
      if (aMS != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)aMS)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)aMS)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (aMS != null)
      ((javax.xml.rpc.Stub)aMS)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public services.AMS getAMS() {
    if (aMS == null)
      _initAMSProxy();
    return aMS;
  }
  
  public void updateTime(java.lang.String u, java.lang.String s) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    aMS.updateTime(u, s);
  }
  
  public beans.Journey[] listreservations() throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.listreservations();
  }
  
  public beans.SearchTraveller[] searchtraveller(java.lang.String fname, java.lang.String lname, java.lang.String fno, java.lang.String dest, java.lang.String traveldate) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.searchtraveller(fname, lname, fno, dest, traveldate);
  }
  
  public java.lang.String deleteOneFlight(java.lang.String flightnumber) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.deleteOneFlight(flightnumber);
  }
  
  public beans.Flightdetails[] listFlightsToUpdate(java.lang.String flightnumber, java.lang.String source, java.lang.String destination) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.listFlightsToUpdate(flightnumber, source, destination);
  }
  
  public java.lang.String updateFlight(java.lang.String duration, int numberofseats, java.lang.String crewdetails, java.lang.String flightnumber) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.updateFlight(duration, numberofseats, crewdetails, flightnumber);
  }
  
  public java.lang.String retrieveDate(java.lang.String u) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.retrieveDate(u);
  }
  
  public java.lang.String addFlight(java.lang.String fno, java.lang.String fname, java.lang.String src, java.lang.String dest, java.lang.String crew, int seats, java.lang.String duration) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.addFlight(fno, fname, src, dest, crew, seats, duration);
  }
  
  public java.lang.String deleteFlight(java.lang.String fno, java.lang.String fname, java.lang.String src, java.lang.String dest, java.lang.String duration) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.deleteFlight(fno, fname, src, dest, duration);
  }
  
  public java.lang.String signup(java.lang.String fname, java.lang.String lname, java.lang.String usn, java.lang.String pwd, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipcode, java.lang.String dob, java.lang.String ssn, java.lang.String ppn, java.lang.String nationality) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.signup(fname, lname, usn, pwd, address, city, state, zipcode, dob, ssn, ppn, nationality);
  }
  
  public java.lang.String addemployees(java.lang.String firstname, java.lang.String lastname, java.lang.String usn, java.lang.String ssn, java.lang.String type, java.lang.String addr, java.lang.String city, java.lang.String zip, java.lang.String state, java.lang.String dob, java.lang.String password, java.lang.String workd, java.lang.String pos, java.lang.String hire) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.addemployees(firstname, lastname, usn, ssn, type, addr, city, zip, state, dob, password, workd, pos, hire);
  }
  
  public beans.Flightdetails listOneFlight(java.lang.String flightnumber) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.listOneFlight(flightnumber);
  }
  
  public beans.Person signIn(java.lang.String username, java.lang.String password) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.signIn(username, password);
  }
  
  public java.lang.String updatePinfo(java.lang.String emailid, java.lang.String address, java.lang.String city, java.lang.String state, java.lang.String zipcode) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.updatePinfo(emailid, address, city, state, zipcode);
  }
  
  public beans.Traveller[] listtravellers() throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.listtravellers();
  }
  
  public beans.SearchEmployee[] searchEmployee(java.lang.String firstname, java.lang.String lastname, java.lang.String city, java.lang.String state, java.lang.String position, java.lang.String hiredate) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.searchEmployee(firstname, lastname, city, state, position, hiredate);
  }
  
  public java.lang.String deleteEmployee(java.lang.String email) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.deleteEmployee(email);
  }
  
  public beans.Flightdetails[] listflights() throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.listflights();
  }
  
  public beans.Employee[] listemployees() throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.listemployees();
  }
  
  public beans.Flightdetails[] listflightsCustomer(java.lang.String sr, java.lang.String d) throws java.rmi.RemoteException{
    if (aMS == null)
      _initAMSProxy();
    return aMS.listflightsCustomer(sr, d);
  }
  
  
}