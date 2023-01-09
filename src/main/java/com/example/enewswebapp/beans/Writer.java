package com.example.enewswebapp.beans;

public class Writer {
    private String tieude,chude,noidung;

    public Writer(String tieude, String chude, String noidung) {
        this.tieude = tieude;
        this.chude = chude;
        this.noidung = noidung;
    }

    public Writer() {
    }

    public String getTieude() {
        return tieude;
    }

    public void setTieude(String tieude) {
        this.tieude = tieude;
    }

    public String getChude() {
        return chude;
    }

    public void setChude(String chude) {
        this.chude = chude;
    }

    public String getNoidung() {
        return noidung;
    }

    public void setNoidung(String noidung) {
        this.noidung = noidung;
    }
}
