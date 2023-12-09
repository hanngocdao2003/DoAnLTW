package bean;

public class ColorEntity {
  private Integer id;
  private String color;
  private String productId;
  
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }
  public String getColor() {
    return color;
  }
  public void setColor(String color) {
    this.color = color;
  }
  public String getProductId() {
    return productId;
  }
  public void setProductId(String productId) {
    this.productId = productId;
  }

  @Override
  public String toString() {
    return "ColorEntity{" +
            "id=" + id +
            ", color='" + color + '\'' +
            ", productId='" + productId + '\'' +
            '}';
  }
}
