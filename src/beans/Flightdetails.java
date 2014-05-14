/**
 * Flightdetails.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package beans;

public class Flightdetails  implements java.io.Serializable {
    private java.lang.String airlinename;

    private java.lang.String crewdetails;

    private java.lang.String destination;

    private java.lang.String duration;

    private java.lang.String flightnumber;

    private java.lang.String msg;

    private int numberofseats;

    private java.lang.String source;

    public Flightdetails() {
    }

    public Flightdetails(
           java.lang.String airlinename,
           java.lang.String crewdetails,
           java.lang.String destination,
           java.lang.String duration,
           java.lang.String flightnumber,
           java.lang.String msg,
           int numberofseats,
           java.lang.String source) {
           this.airlinename = airlinename;
           this.crewdetails = crewdetails;
           this.destination = destination;
           this.duration = duration;
           this.flightnumber = flightnumber;
           this.msg = msg;
           this.numberofseats = numberofseats;
           this.source = source;
    }


    /**
     * Gets the airlinename value for this Flightdetails.
     * 
     * @return airlinename
     */
    public java.lang.String getAirlinename() {
        return airlinename;
    }


    /**
     * Sets the airlinename value for this Flightdetails.
     * 
     * @param airlinename
     */
    public void setAirlinename(java.lang.String airlinename) {
        this.airlinename = airlinename;
    }


    /**
     * Gets the crewdetails value for this Flightdetails.
     * 
     * @return crewdetails
     */
    public java.lang.String getCrewdetails() {
        return crewdetails;
    }


    /**
     * Sets the crewdetails value for this Flightdetails.
     * 
     * @param crewdetails
     */
    public void setCrewdetails(java.lang.String crewdetails) {
        this.crewdetails = crewdetails;
    }


    /**
     * Gets the destination value for this Flightdetails.
     * 
     * @return destination
     */
    public java.lang.String getDestination() {
        return destination;
    }


    /**
     * Sets the destination value for this Flightdetails.
     * 
     * @param destination
     */
    public void setDestination(java.lang.String destination) {
        this.destination = destination;
    }


    /**
     * Gets the duration value for this Flightdetails.
     * 
     * @return duration
     */
    public java.lang.String getDuration() {
        return duration;
    }


    /**
     * Sets the duration value for this Flightdetails.
     * 
     * @param duration
     */
    public void setDuration(java.lang.String duration) {
        this.duration = duration;
    }


    /**
     * Gets the flightnumber value for this Flightdetails.
     * 
     * @return flightnumber
     */
    public java.lang.String getFlightnumber() {
        return flightnumber;
    }


    /**
     * Sets the flightnumber value for this Flightdetails.
     * 
     * @param flightnumber
     */
    public void setFlightnumber(java.lang.String flightnumber) {
        this.flightnumber = flightnumber;
    }


    /**
     * Gets the msg value for this Flightdetails.
     * 
     * @return msg
     */
    public java.lang.String getMsg() {
        return msg;
    }


    /**
     * Sets the msg value for this Flightdetails.
     * 
     * @param msg
     */
    public void setMsg(java.lang.String msg) {
        this.msg = msg;
    }


    /**
     * Gets the numberofseats value for this Flightdetails.
     * 
     * @return numberofseats
     */
    public int getNumberofseats() {
        return numberofseats;
    }


    /**
     * Sets the numberofseats value for this Flightdetails.
     * 
     * @param numberofseats
     */
    public void setNumberofseats(int numberofseats) {
        this.numberofseats = numberofseats;
    }


    /**
     * Gets the source value for this Flightdetails.
     * 
     * @return source
     */
    public java.lang.String getSource() {
        return source;
    }


    /**
     * Sets the source value for this Flightdetails.
     * 
     * @param source
     */
    public void setSource(java.lang.String source) {
        this.source = source;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Flightdetails)) return false;
        Flightdetails other = (Flightdetails) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.airlinename==null && other.getAirlinename()==null) || 
             (this.airlinename!=null &&
              this.airlinename.equals(other.getAirlinename()))) &&
            ((this.crewdetails==null && other.getCrewdetails()==null) || 
             (this.crewdetails!=null &&
              this.crewdetails.equals(other.getCrewdetails()))) &&
            ((this.destination==null && other.getDestination()==null) || 
             (this.destination!=null &&
              this.destination.equals(other.getDestination()))) &&
            ((this.duration==null && other.getDuration()==null) || 
             (this.duration!=null &&
              this.duration.equals(other.getDuration()))) &&
            ((this.flightnumber==null && other.getFlightnumber()==null) || 
             (this.flightnumber!=null &&
              this.flightnumber.equals(other.getFlightnumber()))) &&
            ((this.msg==null && other.getMsg()==null) || 
             (this.msg!=null &&
              this.msg.equals(other.getMsg()))) &&
            this.numberofseats == other.getNumberofseats() &&
            ((this.source==null && other.getSource()==null) || 
             (this.source!=null &&
              this.source.equals(other.getSource())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getAirlinename() != null) {
            _hashCode += getAirlinename().hashCode();
        }
        if (getCrewdetails() != null) {
            _hashCode += getCrewdetails().hashCode();
        }
        if (getDestination() != null) {
            _hashCode += getDestination().hashCode();
        }
        if (getDuration() != null) {
            _hashCode += getDuration().hashCode();
        }
        if (getFlightnumber() != null) {
            _hashCode += getFlightnumber().hashCode();
        }
        if (getMsg() != null) {
            _hashCode += getMsg().hashCode();
        }
        _hashCode += getNumberofseats();
        if (getSource() != null) {
            _hashCode += getSource().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Flightdetails.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://beans", "Flightdetails"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("airlinename");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "airlinename"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("crewdetails");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "crewdetails"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("destination");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "destination"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("duration");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "duration"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("flightnumber");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "flightnumber"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("msg");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "msg"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("numberofseats");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "numberofseats"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("source");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "source"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
