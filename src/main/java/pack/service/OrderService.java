package pack.service;

import pack.entity.Order;
import pack.entity.OrderDetail;
import pack.model.CartInfo;
import pack.model.OrderDetailInfo;
import pack.model.OrderInfo;

import java.util.List;

public interface OrderService {

    Order saveOrder(CartInfo cartInfo);
    OrderInfo getOrderInfo(int orderId);
    List<OrderDetailInfo> listOrderDetailInfos(int orderId);
    List<Order> findAllByCustomerEmail(String email);
    List<OrderDetail> orderDetailsByOrderIdWithFetch(int orderId);

}
