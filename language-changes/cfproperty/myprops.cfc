/*
    Default value of cfproperty can be CFML expressions-  With this release ,
    default value of a cfproperty can be expressions ,
    earlier only string values were allowed.
    Example - -----myProps.cfc-------
*/
component accessors=true {
        property name="testProp" default="test";
        property name="propA" default="#[1,2,3]#";
        property name="proph" type="array" default="[1,2,3].avg()";
        property name="prope" type="array" default="#ArrayNew(1)#";   

        property name="propAA" type="any" default="#['key1':'val1']#"; 
        property name="propF" type="struct" default="#{"id": "0001",
            "type": "donut",
            "name": "Cake",
            "ppu": 0.55,}.append({ "id": "5001", "type": "None" })#" ;

        property name="propV" type="any" default="# tval? (tval ? 'trueValue' : 'falseVal') : 'falseValue'#";
        property name="propW" type="any" default="#UCase("This is a text: ") & ToString(123 + 456)#";

        property name="propX" default="#fval?: 'true'#";
        property name="propY" type="any" default="#originalStruct?.address?.street#";
        property name="propZ" type="any" default="#originalStruct ?? 'notnullvalue'#";

        property name="propAB" type="any" default=#IsStruct(originalStruct) === true#;
        property name="propS" type="any" default="#x LTE y#";

        property name="propK" type="string" default="#str contains substr#";
        property name="propT" type="any" default="#str does not contain substr#";


        x=25;
        y=5*5;
        originalStruct = {name = "Alice", address = {street = "123 Main St", city = "Wonderland"}, 
        mobile = 7777777777,};

        str ='Adobe'
        substr= 'Ad'
        tval=true
        fval=false

}