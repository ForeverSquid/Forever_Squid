package com.Forever.dao;

import com.Forever.model.Cart;
import com.Forever.model.CartExample;
import com.Forever.model.CartKey;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface CartMapper {
    int countByExample(CartExample example);

    int deleteByExample(CartExample example);

    int deleteByPrimaryKey(CartKey key);

    int insert(Cart record);

    int insertSelective(Cart record);

    List<Cart> selectByExample(CartExample example);

    Cart selectByPrimaryKey(CartKey key);

    int updateByExampleSelective(@Param("record") Cart record, @Param("example") CartExample example);

    int updateByExample(@Param("record") Cart record, @Param("example") CartExample example);

    int updateByPrimaryKeySelective(Cart record);

    int updateByPrimaryKey(Cart record);
    
    List<Cart> queryCart3();
    
    List<Cart> addCart3(Map map);
    
    List<Cart> delCart3(Map map);
    
    void updateCart3(Map map);
    
    void updateOrders(Map map);
    
}