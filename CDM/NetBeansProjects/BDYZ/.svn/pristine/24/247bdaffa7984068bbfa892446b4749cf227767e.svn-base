/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import javax.el.ExpressionFactory;
import javax.el.MethodExpression;
import javax.faces.context.FacesContext;
import javax.faces.event.MethodExpressionActionListener;
/**
 *
 * @author hqst100207
 */
public class FacesUtil {

	public static MethodExpression createMethodExpression(String valueExpression, Class<?> expectedReturnType,
	                                                      Class<?>[] expectedParamTypes) {
		FacesContext fc = FacesContext.getCurrentInstance();
		ExpressionFactory factory = fc.getApplication().getExpressionFactory();

		return factory.createMethodExpression(fc.getELContext(), valueExpression, expectedReturnType, expectedParamTypes);
	}

	public static MethodExpressionActionListener createMethodActionListener(String valueExpression, Class<?> expectedReturnType,
	                                                                        Class<?>[] expectedParamTypes) {
		return new MethodExpressionActionListener(createMethodExpression(valueExpression, expectedReturnType,
		                                                                 expectedParamTypes));
	}
}
