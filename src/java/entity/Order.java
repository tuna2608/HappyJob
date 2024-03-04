/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Date;

/**
 *
 * @author tuna
 */

//CREATE TABLE Orders (
//    OrderID INT identity(1,1) PRIMARY KEY,
//    TalentID INT,
//    AccountID INT,
//	[Timestamp] DATETIME,
//    Status NVARCHAR(255),
//    FOREIGN KEY (TalentID) REFERENCES Talent(TalentID),
//	FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
//);
public class Order {
    private int orderId;
    private int talentId;
    private int accountId;
    private Date timestamp;
    private String status;

    public Order() {
    }

    public Order(int orderId, int talentId, int accountId, Date timestamp, String status) {
        this.orderId = orderId;
        this.talentId = talentId;
        this.accountId = accountId;
        this.timestamp = timestamp;
        this.status = status;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getTalentId() {
        return talentId;
    }

    public void setTalentId(int talentId) {
        this.talentId = talentId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", talentId=" + talentId + ", accountId=" + accountId + ", timestamp=" + timestamp + ", status=" + status + '}';
    }

    
}
