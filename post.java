/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.entities;

import java.sql.Timestamp;

/**
 *
 * @author Dell
 */
public class post {
    
    private int pid ;
    private int cid;
    private String ptitle;
    private String pcontent;
    private String ppic;
    private Timestamp pdate;
    private String pcode;
    private int userid;

    public post() {
    }

    public post(int pid, int cid, String ptitle, String pcontent, String ppic, Timestamp pdate, String pcode,int userid) {
        this.pid = pid;
        this.cid = cid;
        this.ptitle = ptitle;
        this.pcontent = pcontent;
        this.ppic = ppic;
        this.pdate = pdate;
        this.pcode = pcode;
        this.userid = userid;
    }

    public post(int cid, String ptitle, String pcontent, String ppic, Timestamp pdate, String pcode,int userid) {
        this.cid = cid;
        this.ptitle = ptitle;
        this.pcontent = pcontent;
        this.ppic = ppic;
        this.pdate = pdate;
        this.pcode = pcode;
         this.userid = userid;
    }

    public int getPid() {
        return pid;
    }

    public int getCid() {
        return cid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getUserid() {
        return userid;
    }

    public String getPtitle() {
        return ptitle;
    }
    public String getPcontent() {
        return pcontent;
    }

    public String getPpic() {
        return ppic;
    }

    public Timestamp getPdate() {
        return pdate;
    }

    public String getPcode() {
        return pcode;
    }
    
    
    
    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public void setPcontent(String pcontent) {
        this.pcontent = pcontent;
    }

    public void setPpic(String ppic) {
        this.ppic = ppic;
    }

    public void setPdate(Timestamp pdate) {
        this.pdate = pdate;
    }

    public void setPcode(String pcode) {
        this.pcode = pcode;
    }
    
    
    
    
}
