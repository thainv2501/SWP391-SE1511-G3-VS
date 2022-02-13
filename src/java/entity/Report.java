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
public class Report {
    private int reportId;
    private Buyer buyerId;
    private Product productId;
    private ReportType reportTypeId;
    private String Content;

    public Report() {
    }

    public Report(int reportId, Buyer buyerId, Product productId, ReportType reportTypeId, String Content) {
        this.reportId = reportId;
        this.buyerId = buyerId;
        this.productId = productId;
        this.reportTypeId = reportTypeId;
        this.Content = Content;
    }

    public int getReportId() {
        return reportId;
    }

    public void setReportId(int reportId) {
        this.reportId = reportId;
    }

    public Buyer getBuyerId() {
        return buyerId;
    }

    public void setBuyerId(Buyer buyerId) {
        this.buyerId = buyerId;
    }

    public Product getProductId() {
        return productId;
    }

    public void setProductId(Product productId) {
        this.productId = productId;
    }

    public ReportType getReportTypeId() {
        return reportTypeId;
    }

    public void setReportTypeId(ReportType reportTypeId) {
        this.reportTypeId = reportTypeId;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }
    
}
