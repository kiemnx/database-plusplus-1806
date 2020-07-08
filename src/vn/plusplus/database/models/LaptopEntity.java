package vn.plusplus.database.models;

import java.sql.Timestamp;

public class LaptopEntity {
    private int id,sold;
    private Float price;
    private String name,url,maker,type,ram,cpu,ssd,hdd,card,screen_resolution,screen_size;
    private Timestamp created_timestamp,last_updated_timestamp;

    public LaptopEntity() {
    }

    public LaptopEntity(int id,  String name, String url, String maker, String type, String ram, String cpu,
                        String ssd, String hdd,Float price, String card, String screen_resolution, String screen_size,int sold,
                        Timestamp created_timestamp, Timestamp last_updated_timestamp) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.maker = maker;
        this.type = type;
        this.ram = ram;
        this.cpu = cpu;
        this.ssd = ssd;
        this.hdd = hdd;
        this.price = price;
        this.card = card;
        this.screen_resolution = screen_resolution;
        this.screen_size = screen_size;
        this.sold = sold;
        this.created_timestamp = created_timestamp;
        this.last_updated_timestamp = last_updated_timestamp;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSold() {
        return sold;
    }

    public void setSold(int sold) {
        this.sold = sold;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getSsd() {
        return ssd;
    }

    public void setSsd(String ssd) {
        this.ssd = ssd;
    }

    public String getHdd() {
        return hdd;
    }

    public void setHdd(String hdd) {
        this.hdd = hdd;
    }

    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    public String getScreen_resolution() {
        return screen_resolution;
    }

    public void setScreen_resolution(String screen_resolution) {
        this.screen_resolution = screen_resolution;
    }

    public String getScreen_size() {
        return screen_size;
    }

    public void setScreen_size(String screen_size) {
        this.screen_size = screen_size;
    }

    public Timestamp getCreated_timestamp() {
        return created_timestamp;
    }

    public void setCreated_timestamp(Timestamp created_timestamp) {
        this.created_timestamp = created_timestamp;
    }

    public Timestamp getLast_updated_timestamp() {
        return last_updated_timestamp;
    }

    public void setLast_updated_timestamp(Timestamp last_updated_timestamp) {
        this.last_updated_timestamp = last_updated_timestamp;
    }

    @Override
    public String toString() {
        return "LaptopEntity{" +
                "sold=" + sold +
                ", price=" + price +
                ", name='" + name + '\'' +
                '}';
    }
}
