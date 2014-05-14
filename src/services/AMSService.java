/**
 * AMSService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package services;

public interface AMSService extends javax.xml.rpc.Service {
    public java.lang.String getAMSAddress();

    public services.AMS getAMS() throws javax.xml.rpc.ServiceException;

    public services.AMS getAMS(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
