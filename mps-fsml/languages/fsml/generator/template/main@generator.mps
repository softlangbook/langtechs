<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:67e71f78-a2c8-4f69-a92e-32885b893be7(fsml.generator.template.main@generator)">
  <persistence version="9" />
  <languages>
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="-1" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="-1" />
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="-1" />
    <use id="c07fade6-62c9-4222-a52b-3d2f0dcdd056" name="fsml" version="-1" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="l3u7" ref="r:20780eff-1266-433d-8cad-f755f70e5c38(fsml.runtime)" />
    <import index="nh3v" ref="r:e51f5db8-42a6-4d8a-b7f0-f72a6137a443(fsml.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1221737317277" name="jetbrains.mps.baseLanguage.structure.StaticInitializer" flags="lg" index="1Pe0a1">
        <child id="1221737317278" name="statementList" index="1Pe0a2" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168559333462" name="jetbrains.mps.lang.generator.structure.TemplateDeclarationReference" flags="ln" index="j$656" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj" />
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="propertyName" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="bUwia" id="5C6J16bXtUb">
    <property role="TrG5h" value="main" />
    <node concept="3aamgX" id="1NW7PbAVBTN" role="3acgRq">
      <ref role="30HIoZ" to="nh3v:5C6J16bXvOV" resolve="Action" />
      <node concept="j$656" id="1NW7PbAVCJv" role="1lVwrX">
        <ref role="v9R2y" node="1NW7PbAVCJt" resolve="reduce_Action" />
      </node>
    </node>
    <node concept="3aamgX" id="1NW7PbAW7RB" role="3acgRq">
      <ref role="30HIoZ" to="nh3v:5C6J16bXvOC" resolve="Input" />
      <node concept="j$656" id="1NW7PbAW7RN" role="1lVwrX">
        <ref role="v9R2y" node="1NW7PbAW7RL" resolve="reduce_Input" />
      </node>
    </node>
    <node concept="3aamgX" id="1NW7PbAW81b" role="3acgRq">
      <ref role="30HIoZ" to="nh3v:5C6J16bWu_f" resolve="Transition" />
      <node concept="j$656" id="1NW7PbAWaJv" role="1lVwrX">
        <ref role="v9R2y" node="1NW7PbAWaJt" resolve="reduce_Transition" />
      </node>
    </node>
    <node concept="3aamgX" id="1NW7PbAW_jh" role="3acgRq">
      <ref role="30HIoZ" to="nh3v:5C6J16bWu_e" resolve="State" />
      <node concept="j$656" id="1NW7PbAW_j_" role="1lVwrX">
        <ref role="v9R2y" node="1NW7PbAW_jz" resolve="reduce_State" />
      </node>
    </node>
    <node concept="3lhOvk" id="1NW7PbAWMIN" role="3lj3bC">
      <ref role="30HIoZ" to="nh3v:5C6J16bWoJC" resolve="Fsm" />
      <ref role="3lhOvi" node="1NW7PbAWMIU" resolve="FunctionalSample" />
    </node>
  </node>
  <node concept="13MO4I" id="1NW7PbAVCJt">
    <property role="TrG5h" value="reduce_Action" />
    <ref role="3gUMe" to="nh3v:5C6J16bXvOV" resolve="Action" />
    <node concept="Xl_RD" id="1NW7PbAVCK_" role="13RCb5">
      <node concept="raruj" id="1NW7PbAVCKG" role="lGtFl" />
      <node concept="17Uvod" id="1NW7PbAVCKH" role="lGtFl">
        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
        <property role="2qtEX9" value="value" />
        <node concept="3zFVjK" id="1NW7PbAVCKK" role="3zH0cK">
          <node concept="3clFbS" id="1NW7PbAVCKL" role="2VODD2">
            <node concept="3clFbF" id="1NW7PbAVCKR" role="3cqZAp">
              <node concept="2OqwBi" id="1NW7PbAVCKM" role="3clFbG">
                <node concept="3TrcHB" id="1NW7PbAVCKP" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="30H73N" id="1NW7PbAVCKQ" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1NW7PbAW7RL">
    <property role="TrG5h" value="reduce_Input" />
    <ref role="3gUMe" to="nh3v:5C6J16bXvOC" resolve="Input" />
    <node concept="Xl_RD" id="1NW7PbAW7U7" role="13RCb5">
      <node concept="raruj" id="1NW7PbAW7Ue" role="lGtFl" />
      <node concept="17Uvod" id="1NW7PbAW7Uf" role="lGtFl">
        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
        <property role="2qtEX9" value="value" />
        <node concept="3zFVjK" id="1NW7PbAW7Ui" role="3zH0cK">
          <node concept="3clFbS" id="1NW7PbAW7Uj" role="2VODD2">
            <node concept="3clFbF" id="1NW7PbAW7Up" role="3cqZAp">
              <node concept="2OqwBi" id="1NW7PbAW7Uk" role="3clFbG">
                <node concept="3TrcHB" id="1NW7PbAW7Un" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="30H73N" id="1NW7PbAW7Uo" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1NW7PbAWaJt">
    <property role="TrG5h" value="reduce_Transition" />
    <ref role="3gUMe" to="nh3v:5C6J16bWu_f" resolve="Transition" />
    <node concept="2ShNRf" id="1NW7PbAWgK1" role="13RCb5">
      <node concept="1pGfFk" id="1NW7PbAWn_o" role="2ShVmc">
        <ref role="37wK5l" to="l3u7:6P_J0iDgdcG" resolve="Transition" />
        <node concept="Xl_RD" id="1NW7PbAWnPR" role="37wK5m">
          <property role="Xl_RC" value="" />
          <node concept="raruj" id="1NW7PbAWKSM" role="lGtFl" />
          <node concept="17Uvod" id="1NW7PbAWKSN" role="lGtFl">
            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
            <property role="2qtEX9" value="value" />
            <node concept="3zFVjK" id="1NW7PbAWKSO" role="3zH0cK">
              <node concept="3clFbS" id="1NW7PbAWKSP" role="2VODD2">
                <node concept="3clFbF" id="1NW7PbAWL16" role="3cqZAp">
                  <node concept="2OqwBi" id="1NW7PbAWLE7" role="3clFbG">
                    <node concept="2OqwBi" id="1NW7PbAWL54" role="2Oq$k0">
                      <node concept="30H73N" id="1NW7PbAWL15" role="2Oq$k0" />
                      <node concept="2Xjw5R" id="1NW7PbAWLvP" role="2OqNvi">
                        <node concept="1xMEDy" id="1NW7PbAWLvR" role="1xVPHs">
                          <node concept="chp4Y" id="1NW7PbAWLyL" role="ri$Ld">
                            <ref role="cht4Q" to="nh3v:5C6J16bWu_e" resolve="State" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3TrcHB" id="1NW7PbAWLQK" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="1NW7PbAWnQ9" role="37wK5m">
          <node concept="raruj" id="1NW7PbAWnRY" role="lGtFl" />
          <node concept="29HgVG" id="1NW7PbAWnS0" role="lGtFl">
            <node concept="3NFfHV" id="1NW7PbAWnS1" role="3NFExx">
              <node concept="3clFbS" id="1NW7PbAWnS2" role="2VODD2">
                <node concept="3clFbF" id="1NW7PbAWnS8" role="3cqZAp">
                  <node concept="2OqwBi" id="1NW7PbAWnS3" role="3clFbG">
                    <node concept="3TrEf2" id="1NW7PbAWnS6" role="2OqNvi">
                      <ref role="3Tt5mk" to="nh3v:5C6J16bXvPK" />
                    </node>
                    <node concept="30H73N" id="1NW7PbAWnS7" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="1NW7PbAWnQx" role="37wK5m">
          <property role="Xl_RC" value="" />
          <node concept="raruj" id="1NW7PbAWo0A" role="lGtFl" />
          <node concept="29HgVG" id="1NW7PbAWo0C" role="lGtFl">
            <node concept="3NFfHV" id="1NW7PbAWo0D" role="3NFExx">
              <node concept="3clFbS" id="1NW7PbAWo0E" role="2VODD2">
                <node concept="3clFbF" id="1NW7PbAWo0K" role="3cqZAp">
                  <node concept="2OqwBi" id="1NW7PbAWo0F" role="3clFbG">
                    <node concept="3TrEf2" id="1NW7PbAWo0I" role="2OqNvi">
                      <ref role="3Tt5mk" to="nh3v:5C6J16bXvPv" />
                    </node>
                    <node concept="30H73N" id="1NW7PbAWo0J" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="Xl_RD" id="1NW7PbAWnRn" role="37wK5m">
          <property role="Xl_RC" value="" />
          <node concept="raruj" id="1NW7PbAWo3Z" role="lGtFl" />
          <node concept="29HgVG" id="1NW7PbAWo41" role="lGtFl">
            <node concept="3NFfHV" id="1NW7PbAWo42" role="3NFExx">
              <node concept="3clFbS" id="1NW7PbAWo43" role="2VODD2">
                <node concept="3clFbF" id="1NW7PbAWo49" role="3cqZAp">
                  <node concept="2OqwBi" id="1NW7PbAWo44" role="3clFbG">
                    <node concept="3TrEf2" id="1NW7PbAWo47" role="2OqNvi">
                      <ref role="3Tt5mk" to="nh3v:5C6J16bW$1I" />
                    </node>
                    <node concept="30H73N" id="1NW7PbAWo48" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="1NW7PbAW_jz">
    <property role="TrG5h" value="reduce_State" />
    <ref role="3gUMe" to="nh3v:5C6J16bWu_e" resolve="State" />
    <node concept="2ShNRf" id="1NW7PbAWLYh" role="13RCb5">
      <node concept="1pGfFk" id="1NW7PbAWM5t" role="2ShVmc">
        <ref role="37wK5l" to="l3u7:6P_J0iDgeOR" resolve="State" />
        <node concept="Xl_RD" id="1NW7PbAWM6S" role="37wK5m">
          <property role="Xl_RC" value="" />
          <node concept="raruj" id="1NW7PbAWMaf" role="lGtFl" />
          <node concept="17Uvod" id="1NW7PbAWMag" role="lGtFl">
            <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
            <property role="2qtEX9" value="value" />
            <node concept="3zFVjK" id="1NW7PbAWMaj" role="3zH0cK">
              <node concept="3clFbS" id="1NW7PbAWMak" role="2VODD2">
                <node concept="3clFbF" id="1NW7PbAWMaq" role="3cqZAp">
                  <node concept="2OqwBi" id="1NW7PbAWMal" role="3clFbG">
                    <node concept="3TrcHB" id="1NW7PbAWMao" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                    <node concept="30H73N" id="1NW7PbAWMap" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1NW7PbAWMIU">
    <property role="TrG5h" value="FunctionalSample" />
    <node concept="Wx3nA" id="1NW7PbAWMNH" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="sample" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm1VV" id="1NW7PbAWMLZ" role="1B3o_S" />
      <node concept="3uibUv" id="1NW7PbAWMNA" role="1tU5fm">
        <ref role="3uigEE" to="l3u7:6P_J0iDggtA" resolve="Fsm" />
      </node>
    </node>
    <node concept="1Pe0a1" id="1NW7PbAWMPM" role="jymVt">
      <node concept="3clFbS" id="1NW7PbAWMPN" role="1Pe0a2">
        <node concept="3clFbF" id="1NW7PbAWMSk" role="3cqZAp">
          <node concept="37vLTI" id="1NW7PbAWN1V" role="3clFbG">
            <node concept="2ShNRf" id="1NW7PbAWN2u" role="37vLTx">
              <node concept="HV5vD" id="1NW7PbAWNak" role="2ShVmc">
                <ref role="HV5vE" to="l3u7:6P_J0iDggtA" resolve="Fsm" />
              </node>
            </node>
            <node concept="37vLTw" id="1NW7PbAWMSj" role="37vLTJ">
              <ref role="3cqZAo" node="1NW7PbAWMNH" resolve="sample" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NW7PbAX4vz" role="3cqZAp">
          <node concept="2OqwBi" id="1NW7PbAX5F3" role="3clFbG">
            <node concept="2OqwBi" id="1NW7PbAX4vA" role="2Oq$k0">
              <node concept="37vLTw" id="1NW7PbAX4vS" role="2Oq$k0">
                <ref role="3cqZAo" node="1NW7PbAWMNH" resolve="sample" />
              </node>
              <node concept="liA8E" id="1NW7PbAX4vB" role="2OqNvi">
                <ref role="37wK5l" to="l3u7:1NW7PbAVz95" resolve="getStates" />
              </node>
            </node>
            <node concept="TSZUe" id="1NW7PbAX7et" role="2OqNvi">
              <node concept="10Nm6u" id="1NW7PbAX7Hq" role="25WWJ7">
                <node concept="29HgVG" id="1NW7PbAX7M6" role="lGtFl">
                  <node concept="3NFfHV" id="1NW7PbAX7M7" role="3NFExx">
                    <node concept="3clFbS" id="1NW7PbAX7M8" role="2VODD2">
                      <node concept="3clFbF" id="1NW7PbAX7Me" role="3cqZAp">
                        <node concept="30H73N" id="1NW7PbAX7Md" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="1NW7PbAX7gE" role="lGtFl">
            <node concept="3JmXsc" id="1NW7PbAX7gH" role="3Jn$fo">
              <node concept="3clFbS" id="1NW7PbAX7gI" role="2VODD2">
                <node concept="3clFbF" id="1NW7PbAX7gO" role="3cqZAp">
                  <node concept="2OqwBi" id="1NW7PbAX7gJ" role="3clFbG">
                    <node concept="3Tsc0h" id="1NW7PbAX7gM" role="2OqNvi">
                      <ref role="3TtcxE" to="nh3v:5C6J16bW$15" />
                    </node>
                    <node concept="30H73N" id="1NW7PbAX7gN" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NW7PbAXiS7" role="3cqZAp">
          <node concept="2OqwBi" id="1NW7PbAXjFV" role="3clFbG">
            <node concept="2OqwBi" id="1NW7PbAXiYR" role="2Oq$k0">
              <node concept="37vLTw" id="1NW7PbAXiS5" role="2Oq$k0">
                <ref role="3cqZAo" node="1NW7PbAWMNH" resolve="sample" />
              </node>
              <node concept="liA8E" id="1NW7PbAXjtb" role="2OqNvi">
                <ref role="37wK5l" to="l3u7:1NW7PbAV$eg" resolve="getTransitions" />
              </node>
            </node>
            <node concept="TSZUe" id="1NW7PbAXlgd" role="2OqNvi">
              <node concept="10Nm6u" id="1NW7PbAXlhV" role="25WWJ7">
                <node concept="29HgVG" id="1NW7PbAXlK6" role="lGtFl">
                  <node concept="3NFfHV" id="1NW7PbAXlK7" role="3NFExx">
                    <node concept="3clFbS" id="1NW7PbAXlK8" role="2VODD2">
                      <node concept="3clFbF" id="1NW7PbAXlKe" role="3cqZAp">
                        <node concept="30H73N" id="1NW7PbAXlKd" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="1NW7PbAXljJ" role="lGtFl">
            <node concept="3JmXsc" id="1NW7PbAXljM" role="3Jn$fo">
              <node concept="3clFbS" id="1NW7PbAXljN" role="2VODD2">
                <node concept="3clFbF" id="1NW7PbAXljT" role="3cqZAp">
                  <node concept="2OqwBi" id="1NW7PbAXljO" role="3clFbG">
                    <node concept="3Tsc0h" id="1NW7PbAXljR" role="2OqNvi">
                      <ref role="3TtcxE" to="nh3v:5C6J16bW$15" />
                    </node>
                    <node concept="30H73N" id="1NW7PbAXljS" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="1NW7PbAXlvC" role="lGtFl">
            <node concept="3JmXsc" id="1NW7PbAXlvF" role="3Jn$fo">
              <node concept="3clFbS" id="1NW7PbAXlvG" role="2VODD2">
                <node concept="3clFbF" id="1NW7PbAXlvM" role="3cqZAp">
                  <node concept="2OqwBi" id="1NW7PbAXlvH" role="3clFbG">
                    <node concept="3Tsc0h" id="1NW7PbAXlvK" role="2OqNvi">
                      <ref role="3TtcxE" to="nh3v:5C6J16bW$1b" />
                    </node>
                    <node concept="30H73N" id="1NW7PbAXlvL" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="1NW7PbAXCWK" role="jymVt">
      <property role="TrG5h" value="main" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1NW7PbAXCWN" role="3clF47">
        <node concept="3cpWs8" id="1NW7PbAXEJL" role="3cqZAp">
          <node concept="3cpWsn" id="1NW7PbAXEJO" role="3cpWs9">
            <property role="TrG5h" value="input" />
            <node concept="10Q1$e" id="1NW7PbAXELQ" role="1tU5fm">
              <node concept="17QB3L" id="1NW7PbAXEJJ" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="1NW7PbAXEOO" role="33vP2m">
              <node concept="Xl_RD" id="1NW7PbAXEPv" role="2BsfMF">
                <property role="Xl_RC" value="ticket" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1NW7PbAXDjc" role="3cqZAp">
          <node concept="2OqwBi" id="1NW7PbAXDwt" role="3clFbG">
            <node concept="2ShNRf" id="1NW7PbAXDja" role="2Oq$k0">
              <node concept="1pGfFk" id="1NW7PbAXDqw" role="2ShVmc">
                <ref role="37wK5l" to="l3u7:1NW7PbAXoO4" resolve="FsmlSimulator" />
                <node concept="37vLTw" id="1NW7PbAXDth" role="37wK5m">
                  <ref role="3cqZAo" node="1NW7PbAWMNH" resolve="sample" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1NW7PbAXDGv" role="2OqNvi">
              <ref role="37wK5l" to="l3u7:1NW7PbAXpp2" resolve="run" />
              <node concept="37vLTw" id="1NW7PbAXETG" role="37wK5m">
                <ref role="3cqZAo" node="1NW7PbAXEJO" resolve="input" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1NW7PbAXCH1" role="1B3o_S" />
      <node concept="3cqZAl" id="1NW7PbAXCWF" role="3clF45" />
      <node concept="37vLTG" id="1NW7PbAXDc$" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="1NW7PbAXDd7" role="1tU5fm">
          <node concept="17QB3L" id="1NW7PbAXDcz" role="10Q1$1" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1NW7PbAWMIV" role="1B3o_S" />
    <node concept="n94m4" id="1NW7PbAWMIW" role="lGtFl">
      <ref role="n9lRv" to="nh3v:5C6J16bWoJC" resolve="Fsm" />
    </node>
  </node>
</model>

