package ru.javastudy.mvcHtml5Angular.mvc.excelfile;

public class Cat {

    private String name;
    private String color;
    private int weight;

    public Cat(String name, String color, int weight) {
        this.name = name;
        this.color = color;
        this.weight = weight;
    }
    public void setColor(String color) {
        this.color = color;
    }
    public void setWeight(int weight) {
        this.weight = weight;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getName()
    {
        return this.name;
    }
    public int getWeight()
    {
        return this.weight;
    }
    public String getColor()
    {
        return this.color;
    }
}
