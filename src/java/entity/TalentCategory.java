/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author tuna
 */
public class TalentCategory {
    private int talentId;
    private int categoryId;

    public TalentCategory() {
    }

    public TalentCategory(int talentId, int categoryId) {
        this.talentId = talentId;
        this.categoryId = categoryId;
    }

    public int getTalentId() {
        return talentId;
    }

    public void setTalentId(int talentId) {
        this.talentId = talentId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    @Override
    public String toString() {
        return "TalentCategory{" + "talentId=" + talentId + ", categoryId=" + categoryId + '}';
    }
    
    
}
