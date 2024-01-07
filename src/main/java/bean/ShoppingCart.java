package bean;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ShoppingCart {
    private Map<Integer, List<CartProduct>> mapCart = new HashMap<>();


    public boolean addProduct(String color, String size, int productId, int quantity) {
        CartProduct cartProduct = new CartProduct(quantity, size, color, productId);
        if (mapCart.containsKey(productId)) {
            List<CartProduct> listCartProduct = mapCart.get(productId);
            if (listCartProduct.contains(cartProduct)) {
                CartProduct product = listCartProduct.get(listCartProduct.indexOf(cartProduct));
                product.setQuantity(product.getQuantity() + quantity);
                System.out.println(product.getQuantity());
                return true;
            } else {
                listCartProduct.add(cartProduct);
                return true;
            }
        } else {
            List<CartProduct> listCartProduct2 = new ArrayList<>();
            listCartProduct2.add(cartProduct);
            mapCart.put(productId, listCartProduct2);
            return true;
        }
    }

    public boolean increasingQuantity(int productId, int cartProductIndex){
        CartProduct cartProduct = mapCart.get(productId).get(cartProductIndex);
        cartProduct.setQuantity(cartProduct.getQuantity() + 1);
        return true;
    }

    public boolean decreaseQuantity(int productId, int cartProductIndex) {
        CartProduct cartProduct = mapCart.get(productId).get(cartProductIndex);
        if (cartProduct.getQuantity() >= 1 ) {
            cartProduct.setQuantity(cartProduct.getQuantity() - 1);
            return true;
        } else {
            return false;
        }
    }
    public boolean removeProduct(int productId, int index) {
        mapCart.get(productId).remove(index);
        if(mapCart.get(productId).isEmpty()){
            mapCart.remove(productId);
        }
        return true;
    }



    public static void main(String[] args) {
        // Tạo đối tượng ShoppingCart
        ShoppingCart shoppingCart = new ShoppingCart();

        // Thêm sản phẩm vào giỏ hàng
        shoppingCart.addProduct("Red", "M", 1, 2);
        shoppingCart.addProduct("Blue", "L", 2, 1);
        shoppingCart.addProduct("Blue", "L", 2, 2);
        System.out.println(shoppingCart.mapCart);

        shoppingCart.increasingQuantity(1, 0);
        shoppingCart.increasingQuantity(1, 0);
        System.out.println(shoppingCart.mapCart);

        shoppingCart.decreaseQuantity(1, 0);
        shoppingCart.decreaseQuantity(1, 0);
        shoppingCart.decreaseQuantity(1, 0);
        System.out.println(shoppingCart.mapCart);

        shoppingCart.removeProduct(1, 0);
        System.out.println(shoppingCart.mapCart);
    }
}
