package com.shaunabram.springmvc;

import org.junit.Test;
import org.junit.experimental.categories.Category;

public class ExampleIT {

 @Test
 public void longRunningService() throws Exception {
     System.out.println("ExampleIT");
 int i = 1;
     i++;
 }
}
