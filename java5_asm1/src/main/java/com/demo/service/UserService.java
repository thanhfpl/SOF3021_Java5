package com.demo.service;

import com.demo.entity.User;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class UserService {
    List<User> list=new ArrayList<>();
    public UserService(){
        list.add(new User(1,"thanhpc","1312", "Nguyen Ngoc Thanh","thanhpc@gmail.com",true,true));
        list.add(new User(2,"phuongdv","1312", "Do Thi Phuong","phuongdv@gmail.com",true,false));
        list.add(new User(3,"tuananh","1312", "Do Tuan Anh","tuanan@gmail.com",true,false));
    }

    public List<User> findAll(){
        return list;
    }
    public void add(User us){
        int lastId=0;
        if(list.size()>0){
            lastId=list.get(list.size()-1).getId();
        }
        us.setId(lastId+1);
        list.add(us);
    }
    public User findById(Integer id){
        for (User us:list){
            if(us.getId()==id) return us;
        }
        return null;
    }
    public void deleteById(Integer id){
        User us=findById(id);
        if(us!=null)list.remove(us);
    }
    public void update(User us){
        for(int i=0;i<list.size(); i++){
            if(list.get(i).getId()==us.getId()){
                list.set(i,us);
            }
        }
    }
}
