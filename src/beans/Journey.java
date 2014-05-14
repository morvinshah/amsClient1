/**
 * Journey.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package beans;

public class Journey  implements java.io.Serializable {
    private java.lang.String airlinename;

    private java.lang.String boardingpoint;

    private java.lang.String destination;

    private java.lang.String duration;

    private java.lang.String emailid;

    private java.lang.String flightnumber;

    private java.lang.String msg;

    private java.lang.String traveldate;

    public Journey() {
    }

    public Journey(
           java.lang.String airlinename,
           java.lang.String boardingpoint,
           java.lang.String destination,
           java.lang.String duration,
           java.lang.String emailid,
           java.lang.String flightnumber,
           java.lang.String msg,
           java.lang.String traveldate) {
           this.airlinename = airlinename;
           this.boardingpoint = boardingpoint;
           this.destination = destination;
           this.duration = duration;
           this.emailid = emailid;
           this.flightnumber = flightnumber;
           this.msg = msg;
           this.traveldate = traveldate;
    }


    /**
     * Gets the airlinename value for this Journey.
     * 
     * @return airlinename
     */
    public java.lang.String getAirlinename() {
        return airlinename;
    }


    /**
     * Sets the airlinename value for this Journey.
     * 
     * @param airlinename
     */
    public void setAirlinename(java.lang.String airlinename) {
        this.airlinename = airlinename;
    }


    /**
     * Gets the boardingpoint value for this Journey.
     * 
     * @return boardingpoint
     */
    public java.lang.String getBoardingpoint() {
        return boardingpoint;
    }


    /**
     * Sets the boardingpoint value for this Journey.
     * 
     * @param boardingpoint
     */
    public void setBoardingpoint(java.lang.String boardingpoint) {
        this.boardingpoint = boardingpoint;
    }


    /**
     * Gets the destination value for this Journey.
     * 
     * @return destination
     */
    public java.lang.String getDestination() {
        return destination;
    }


    /**
     * Sets the destination value for this Journey.
     * 
     * @param destination
     */
    public void setDestination(java.lang.String destination) {
        this.destination = destination;
    }


    /**
     * Gets the duration value for this Journey.
     * 
     * @return duration
     */
    public java.lang.String getDuration() {
        return duration;
    }


    /**
     * Sets the duration value for this Journey.
     * 
     * @param duration
     */
    public void setDuration(java.lang.String duration) {
        this.duration = duration;
    }


    /**
     * Gets the emailid value for this Journey.
     * 
     * @return emailid
     */
    public java.lang.String getEmailid() {
        return emailid;
    }


    /**
     * Sets the emailid value for this Journey.
     * 
     * @param emailid
     */
    public void setEmailid(java.lang.String emailid) {
        this.emailid = emailid;
    }


    /**
     * Gets the flightnumber value for this Journey.
     * 
     * @return flightnumber
     */
    public java.lang.String getFlightnumber() {
        return flightnumber;
    }


    /**
     * Sets the flightnumber value for this Journey.
     * 
     * @param flightnumber
     */
    public void setFlightnumber(java.lang.String flightnumber) {
        this.flightnumber = flightnumber;
    }


    /**
     * Gets the msg value for this Journey.
     * 
     * @return msg
     */
    public java.lang.String getMsg() {
        return msg;
    }


    /**
     * Sets the msg value for this Journey.
     * 
     * @param msg
     */
    public void setMsg(java.lang.String msg) {
        this.msg = msg;
    }


    /**
     * Gets the traveldate value for this Journey.
     * 
     * @return traveldate
     */
    public java.lang.String getTraveldate() {
        return traveldate;
    }


    /**
     * Sets the traveldate value for this Journey.
     * 
     * @param traveldate
     */
    public void setTraveldate(java.lang.String traveldate) {
        this.traveldate = traveldate;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Journey)) return false;
        Journey other = (Journey) obj;
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
            ((this.boardingpoint==null && other.getBoardingpoint()==null) || 
             (this.boardingpoint!=null &&
              this.boardingpoint.equals(other.getBoardingpoint()))) &&
            ((this.destination==null && other.getDestination()==null) || 
             (this.destination!=null &&
              this.destination.equals(other.getDestination()))) &&
            ((this.duration==null && other.getDuration()==null) || 
             (this.duration!=null &&
              this.duration.equals(other.getDuration()))) &&
            ((this.emailid==null && other.getEmailid()==null) || 
             (this.emailid!=null &&
              this.emailid.equals(other.getEmailid()))) &&
            ((this.flightnumber==null && other.getFlightnumber()==null) || 
             (this.flightnumber!=null &&
              this.flightnumber.equals(other.getFlightnumber()))) &&
            ((this.msg==null && other.getMsg()==null) || 
             (this.msg!=null &&
              this.msg.equals(other.getMsg()))) &&
            ((this.traveldate==null && other.getTraveldate()==null) || 
             (this.traveldate!=null &&
              this.traveldate.equals(other.getTraveldate())));
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
        if (getBoardingpoint() != null) {
            _hashCode += getBoardingpoint().hashCode();
        }
        if (getDestination() != null) {
            _hashCode += getDestination().hashCode();
        }
        if (getDuration() != null) {
            _hashCode += getDuration().hashCode();
        }
        if (getEmailid() != null) {
            _hashCode += getEmailid().hashCode();
        }
        if (getFlightnumber() != null) {
            _hashCode += getFlightnumber().hashCode();
        }
        if (getMsg() != null) {
            _hashCode += getMsg().hashCode();
        }
        if (getTraveldate() != null) {
            _hashCode += getTraveldate().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Journey.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://beans", "Journey"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("airlinename");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "airlinename"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("boardingpoint");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "boardingpoint"));
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
        elemField.setFieldName("emailid");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "emailid"));
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
        elemField.setFieldName("traveldate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://beans", "traveldate"));
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
