<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:h="http://www.jewelhealth.com/">
  <xsl:template match="/">
    <html>
      <style>
        th, td {
          padding: 0.4em;
        }
      </style>
      <body>
        <h1>Hospital Management System</h1>
        
        <h2>Patients</h2>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>DOB</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Contact Number</th>
            <th>Email</th>
            <th>Emergency Number</th>
          </tr>
          <xsl:for-each select="h:hospital/h:patients/h:patient">
            <tr>
              <td><xsl:value-of select="h:patientName"/></td>
              <td><xsl:value-of select="h:patientDOB"/></td>
              <td><xsl:value-of select="h:patientAge"/></td>
              <td><xsl:value-of select="h:patientGender"/></td>
              <td><xsl:value-of select="h:patientContactNumber"/></td>
              <td><xsl:value-of select="h:patientEmail"/></td>
              <td><xsl:value-of select="h:patientEmergencyNumber"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Doctors</h2>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>DOB</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Contact Number</th>
            <th>Email</th>
            <th>Medical License Number</th>
            <th>Years of Experience</th>
          </tr>
          <xsl:for-each select="h:hospital/h:doctors/h:doctor">
            <tr>
              <td><xsl:value-of select="h:doctorName"/></td>
              <td><xsl:value-of select="h:doctorDOB"/></td>
              <td><xsl:value-of select="h:doctorAge"/></td>
              <td><xsl:value-of select="h:doctorGender"/></td>
              <td><xsl:value-of select="h:doctorContactNumber"/></td>
              <td><xsl:value-of select="h:doctorEmail"/></td>
              <td><xsl:value-of select="h:doctorMedicalLicenseNumber"/></td>
              <td><xsl:value-of select="h:yearsOfExperience"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Addresses</h2>
        <table border="1">
          <tr>
            <th>Address Line 1</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th>Postal Code</th>
            <th>Contact Number</th>
          </tr>
          <xsl:for-each select="h:hospital/h:addresses/h:address">
            <tr>
              <td><xsl:value-of select="h:addressLine1"/></td>
              <td><xsl:value-of select="h:city"/></td>
              <td><xsl:value-of select="h:state"/></td>
              <td><xsl:value-of select="h:country"/></td>
              <td><xsl:value-of select="h:postalCode"/></td>
              <td><xsl:value-of select="h:contactNumber"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Appointments</h2>
        <table border="1">
          <tr>
            <th>Reason</th>
            <th>Booking Type</th>
            <th>Booking Date</th>
            <th>Appointment Date</th>
            <th>Confirmation</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="h:hospital/h:appointments/h:appointment">
            <tr>
              <td><xsl:value-of select="h:appointmentReason"/></td>
              <td><xsl:value-of select="h:bookingType"/></td>
              <td><xsl:value-of select="h:bookingDate"/></td>
              <td><xsl:value-of select="h:appointmentDate"/></td>
              <td><xsl:value-of select="h:appointmentConfirmation"/></td>
              <td><xsl:value-of select="h:appointmentStatus"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Rooms</h2>
        <table border="1">
          <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Location</th>
            <th>Capacity</th>
            <th>Availability</th>
            <th>Reserved Date</th>
            <th>Equipment</th>
          </tr>
          <xsl:for-each select="h:hospital/h:rooms/h:room">
            <tr>
              <td><xsl:value-of select="h:roomName"/></td>
              <td><xsl:value-of select="h:roomType"/></td>
              <td><xsl:value-of select="h:roomLocation"/></td>
              <td><xsl:value-of select="h:capacity"/></td>
              <td><xsl:value-of select="h:availability"/></td>
              <td><xsl:value-of select="h:reservedDate"/></td>
              <td><xsl:value-of select="h:roomEquipment"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Medical Records</h2>
        <table border="1">
          <tr>
            <th>Start Date</th>
            <th>Type</th>
            <th>Medical History</th>
            <th>Treatment History</th>
            <th>Important Notes</th>
          </tr>
          <xsl:for-each select="h:hospital/h:medicalRecords/h:medicalRecord">
            <tr>
              <td><xsl:value-of select="h:recordStartDate"/></td>
              <td><xsl:value-of select="h:recordType"/></td>
              <td><xsl:value-of select="h:medicalHistory"/></td>
              <td><xsl:value-of select="h:treatmentHistory"/></td>
              <td><xsl:value-of select="h:importantNotes"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Prescriptions</h2>
        <table border="1">
          <tr>
            <th>Date</th>
            <th>Medicine Name</th>
            <th>Medicine Type</th>
            <th>Dosage Instructions</th>
            <th>Duration</th>
            <th>Important Notes</th>
          </tr>
          <xsl:for-each select="h:hospital/h:prescriptions/h:prescription">
            <tr>
              <td><xsl:value-of select="h:prescriptionDate"/></td>
              <td><xsl:value-of select="h:medicineName"/></td>
              <td><xsl:value-of select="h:medicineType"/></td>
              <td><xsl:value-of select="h:dosageInstructions"/></td>
              <td><xsl:value-of select="h:duration"/></td>
              <td><xsl:value-of select="h:importantNotes"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Lab Tests</h2>
        <table border="1">
          <tr>
            <th>Type</th>
            <th>Date</th>
            <th>Results</th>
            <th>Status</th>
            <th>Important Notes</th>
          </tr>
          <xsl:for-each select="h:hospital/h:labTests/h:labTest">
            <tr>
              <td><xsl:value-of select="h:testType"/></td>
              <td><xsl:value-of select="h:testDate"/></td>
              <td><xsl:value-of select="h:testResults"/></td>
              <td><xsl:value-of select="h:testStatus"/></td>
              <td><xsl:value-of select="h:importantNotes"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Billing</h2>
        <table border="1">
          <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Amount</th>
            <th>Payment Type</th>
            <th>Due Date</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="h:hospital/h:billing/h:bill">
            <tr>
              <td><xsl:value-of select="h:billDate"/></td>
              <td><xsl:value-of select="h:billDescription"/></td>
              <td><xsl:value-of select="h:billAmount"/></td>
              <td><xsl:value-of select="h:paymentType"/></td>
              <td><xsl:value-of select="h:paymentDueDate"/></td>
              <td><xsl:value-of select="h:paymentStatus"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>