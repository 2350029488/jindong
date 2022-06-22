package com.utils;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.ui.ConcurrentModel;
import org.springframework.ui.Model;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Message {
    private String message;
    private Integer code;
    private Model model=new ConcurrentModel();

    public static Message fail(){
        Message message=new Message();
        message.setMessage("处理失败");
        message.setCode(200);
        return message;
    }

    public static Message success(){
        Message message=new Message();
        message.setMessage("处理成功");
        message.setCode(100);

        return message;
    }
    public Message model(String key,Object value){
        this.getModel().addAttribute(key,value);
         return  this;
    }
    @Override
    public String toString() {
        return "Message{" +
                "code=" + code +
                ", message='" + message + '\'' +
                ", medel=" + model +
                '}';
    }
}
