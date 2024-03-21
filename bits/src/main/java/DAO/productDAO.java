package DAO;

import java.util.List;

import javax.servlet.http.Part;

import ENTITY.Product;

public interface productDAO {
boolean createProduct(Product p,Part part,Part part1, String uname);
List<Product> getProduct();
}
