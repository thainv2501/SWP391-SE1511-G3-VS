/*
 * Copyright(C) 2021, group 3 SE1511JS
 * T.NET:
 *  Vehicle Store
 *
 * Record of change:
 * DATE            Version             AUTHOR           DESCRIPTION
 * 2021-02-13      1.0                 TungNQ           Add Field
 */
package entity;

/**
 * tạo các trường cho lớp ReportType
 * thêm contrustor và getter,setter
 * <p>Bugs:
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
