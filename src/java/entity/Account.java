/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.sql.Date;

//CREATE TABLE Account (
//    AccountID INT identity(1,1) PRIMARY KEY,
//    [Password] VARCHAR(255) NOT NULL,
//    Email VARCHAR(255) NOT NULL,
//    [Name] VARCHAR(255),
//    Dob DATE,
//    Gender NVARCHAR(255),
//    RoleID INT,
//    Status VARCHAR(255),
//	Verifycode VARCHAR(255),
//    FOREIGN KEY (RoleID) REFERENCES Role(RoleID)
//);

public class Account {
    private int accountID;
    private String password;
    private String email;
    private String name;
    private String dob;
    private String gender;
    private int roleID;
    private String status;
    private String verifyCode;

    public Account() {
    }

    public Account(int accountID, String password, String email, String name, String dob, String gender, int roleID, String status, String verifyCode) {
        this.accountID = accountID;
        this.password = password;
        this.email = email;
        this.name = name;
        this.dob = dob;
        this.gender = gender;
        this.roleID = roleID;
        this.status = status;
        this.verifyCode = verifyCode;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public String getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(String verifyCode) {
        this.verifyCode = verifyCode;
    }

    public String getStatus() {
         if (status == "1") {
            return "Active";
        } else if (status == "2") {
            return "Locked";
        } else if (status == "3") {
            return "Gmail Login";
        } else {
            return "Unverified";
        }
    }

    public void setStatus(String Status) {
        this.status = Status;
    }

    @Override
    public String toString() {
        return "Account{" + "accountID=" + accountID + ", password=" + password + ", email=" + email + ", name=" + name + ", dob=" + dob + ", gender=" + gender + ", roleID=" + roleID + ", status=" + status + ", verifyCode=" + verifyCode + '}';
    }
    
}
