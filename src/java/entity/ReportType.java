/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author nqt26
 */
public class ReportType {
    private int reportTypeId;
    private String reportTypeName;

    public ReportType(int reportTypeId, String reportTypeName) {
        this.reportTypeId = reportTypeId;
        this.reportTypeName = reportTypeName;
    }

    public ReportType() {
    }

    public int getReportTypeId() {
        return reportTypeId;
    }

    public void setReportTypeId(int reportTypeId) {
        this.reportTypeId = reportTypeId;
    }

    public String getReportTypeName() {
        return reportTypeName;
    }

    public void setReportTypeName(String reportTypeName) {
        this.reportTypeName = reportTypeName;
    }
    
}
