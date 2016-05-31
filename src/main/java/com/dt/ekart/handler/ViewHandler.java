package com.dt.ekart.handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import com.dt.ekart.model.*;

@Component
public class ViewHandler {
	
		public Customer initFlow(){
			return new Customer();
		}

		public String validateDetails(Customer customer,MessageContext messageContext){
			String status = "success";
			if(customer.getId().toString().length()<1){
				//messageContext.addMessage(new MessageBuilder().error().source("userId").defaultText("UserId cannot be Empty").build());
				status = "failure";
			}
			return status;
		}
}
