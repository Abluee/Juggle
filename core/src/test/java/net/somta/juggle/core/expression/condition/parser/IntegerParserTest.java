package net.somta.juggle.core.expression.condition.parser;

import net.somta.juggle.core.enums.DataTypeEnum;
import net.somta.juggle.core.expression.condition.enums.OperatorEnum;
import net.somta.juggle.core.model.node.ConditionNode;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class IntegerParserTest {

    @Test
    void genExpression() {
        integerEqualParserTest();
        integerNotEqualParserTest();
        integerGtParserTest();
        integerNotLtParserTest();
        integerLtParserTest();
        integerNotGtParserTest();
        integerUnknownParserTest();
    }

    private void integerEqualParserTest() {
        IExpressionParser doubleParser = new DoubleParser();
        ConditionNode.ConditionExpression notEqualConditionExpression = new ConditionNode.ConditionExpression();
        notEqualConditionExpression.setEnvKey("env_age");
        notEqualConditionExpression.setDataType(DataTypeEnum.Integer);
        notEqualConditionExpression.setOperator(OperatorEnum.EQUAL.getCode());
        notEqualConditionExpression.setAssignType("constant");
        notEqualConditionExpression.setValue("18");
        String str =  doubleParser.genExpression(notEqualConditionExpression);
        Assertions.assertEquals("env_age==18",str);
    }

    private void integerNotEqualParserTest() {
        IExpressionParser doubleParser = new DoubleParser();
        ConditionNode.ConditionExpression equalConditionExpression = new ConditionNode.ConditionExpression();
        equalConditionExpression.setEnvKey("env_age");
        equalConditionExpression.setDataType(DataTypeEnum.Integer);
        equalConditionExpression.setOperator(OperatorEnum.NOT_EQUAL.getCode());
        equalConditionExpression.setAssignType("constant");
        equalConditionExpression.setValue("18");
        String str =  doubleParser.genExpression(equalConditionExpression);
        Assertions.assertEquals("env_age!=18",str);

    }

    private void integerGtParserTest() {
        IExpressionParser doubleParser = new DoubleParser();
        ConditionNode.ConditionExpression gtConditionExpression = new ConditionNode.ConditionExpression();
        gtConditionExpression.setEnvKey("env_age");
        gtConditionExpression.setDataType(DataTypeEnum.Integer);
        gtConditionExpression.setOperator(OperatorEnum.GREATER_THAN.getCode());
        gtConditionExpression.setAssignType("constant");
        gtConditionExpression.setValue("18");
        String gtString =  doubleParser.genExpression(gtConditionExpression);
        Assertions.assertEquals("env_age>18",gtString);
    }

    private void integerNotLtParserTest() {
        IExpressionParser doubleParser = new DoubleParser();
        ConditionNode.ConditionExpression conditionExpression = new ConditionNode.ConditionExpression();
        conditionExpression.setEnvKey("env_age");
        conditionExpression.setDataType(DataTypeEnum.Integer);
        conditionExpression.setOperator(OperatorEnum.NOT_LESS_THAN.getCode());
        conditionExpression.setAssignType("constant");
        conditionExpression.setValue("18");
        String str =  doubleParser.genExpression(conditionExpression);
        Assertions.assertEquals("env_age>=18",str);
    }

    private void integerLtParserTest() {
        IExpressionParser doubleParser = new DoubleParser();
        ConditionNode.ConditionExpression conditionExpression = new ConditionNode.ConditionExpression();
        conditionExpression.setEnvKey("env_age");
        conditionExpression.setDataType(DataTypeEnum.Integer);
        conditionExpression.setOperator(OperatorEnum.LESS_THAN.getCode());
        conditionExpression.setAssignType("constant");
        conditionExpression.setValue("18");
        String str =  doubleParser.genExpression(conditionExpression);
        Assertions.assertEquals("env_age<18",str);
    }

    private void integerNotGtParserTest() {
        IExpressionParser doubleParser = new DoubleParser();
        ConditionNode.ConditionExpression conditionExpression = new ConditionNode.ConditionExpression();
        conditionExpression.setEnvKey("env_age");
        conditionExpression.setDataType(DataTypeEnum.Integer);
        conditionExpression.setOperator(OperatorEnum.NOT_GREATER_THAN.getCode());
        conditionExpression.setAssignType("constant");
        conditionExpression.setValue("18");
        String str =  doubleParser.genExpression(conditionExpression);
        Assertions.assertEquals("env_age<=18",str);
    }

    private void integerUnknownParserTest() {
        IExpressionParser doubleParser = new DoubleParser();
        ConditionNode.ConditionExpression conditionExpression = new ConditionNode.ConditionExpression();
        conditionExpression.setEnvKey("env_age");
        conditionExpression.setDataType(DataTypeEnum.Integer);
        conditionExpression.setOperator(OperatorEnum.CONTAINS.getCode());
        conditionExpression.setAssignType("constant");
        conditionExpression.setValue("100.23");
        try {
            doubleParser.genExpression(conditionExpression);
        }catch (Exception e){
            Assertions.assertTrue(e instanceof IllegalArgumentException);
        }
    }
}