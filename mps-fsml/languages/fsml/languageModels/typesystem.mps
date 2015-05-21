<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:68eb7307-b36f-48f8-8d39-eaf75b805291(fsml.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="-1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="-1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="nh3v" ref="r:e51f5db8-42a6-4d8a-b7f0-f72a6137a443(fsml.structure)" />
    <import index="l3u7" ref="r:20780eff-1266-433d-8cad-f755f70e5c38(fsml.runtime)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="km3c" ref="r:306d37a3-a651-42a6-a9a6-5e08981493d5(fsml.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1207055528241" name="jetbrains.mps.lang.typesystem.structure.WarningStatement" flags="nn" index="a7r0C">
        <child id="1207055552304" name="warningText" index="a7wSD" />
      </concept>
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1175517767210" name="jetbrains.mps.lang.typesystem.structure.ReportErrorStatement" flags="nn" index="2MkqsV">
        <child id="1175517851849" name="errorString" index="2MkJ7o" />
      </concept>
      <concept id="1227096774658" name="jetbrains.mps.lang.typesystem.structure.MessageStatement" flags="ng" index="2OEH$v">
        <child id="1227096802790" name="nodeToReport" index="2OEOjV" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1195214364922" name="jetbrains.mps.lang.typesystem.structure.NonTypesystemRule" flags="ig" index="18kY7G" />
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="1YbPZF" id="3azPfsWMO5R">
    <property role="TrG5h" value="typeof_Fsm" />
    <node concept="3clFbS" id="3azPfsWMO5S" role="18ibNy">
      <node concept="1Z5TYs" id="3azPfsWMO7t" role="3cqZAp">
        <node concept="mw_s8" id="3azPfsWMO7T" role="1ZfhKB">
          <node concept="2c44tf" id="4BZl$1MIL37" role="mwGJk">
            <node concept="3uibUv" id="4BZl$1MIL38" role="2c44tc">
              <ref role="3uigEE" to="l3u7:6P_J0iDggtA" resolve="Fsm" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3azPfsWMO7w" role="1ZfhK$">
          <node concept="1Z2H0r" id="3azPfsWMO5Y" role="mwGJk">
            <node concept="1YBJjd" id="3azPfsWMO6h" role="1Z2MuG">
              <ref role="1YBMHb" node="3azPfsWMO5U" resolve="fsm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3azPfsWMO5U" role="1YuTPh">
      <property role="TrG5h" value="fsm" />
      <ref role="1YaFvo" to="nh3v:5C6J16bWoJC" resolve="Fsm" />
    </node>
  </node>
  <node concept="1YbPZF" id="3azPfsWMY$P">
    <property role="TrG5h" value="typeof_Action" />
    <node concept="3clFbS" id="3azPfsWMY$Q" role="18ibNy">
      <node concept="1Z5TYs" id="3azPfsWMYAg" role="3cqZAp">
        <node concept="mw_s8" id="3azPfsWMYAG" role="1ZfhKB">
          <node concept="2c44tf" id="4BZl$1MHRBM" role="mwGJk">
            <node concept="17QB3L" id="4BZl$1MIMHe" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="3azPfsWMYAj" role="1ZfhK$">
          <node concept="1Z2H0r" id="3azPfsWMY$W" role="mwGJk">
            <node concept="1YBJjd" id="3azPfsWMY_f" role="1Z2MuG">
              <ref role="1YBMHb" node="3azPfsWMY$S" resolve="action" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3azPfsWMY$S" role="1YuTPh">
      <property role="TrG5h" value="action" />
      <ref role="1YaFvo" to="nh3v:5C6J16bXvOV" resolve="Action" />
    </node>
  </node>
  <node concept="1YbPZF" id="3azPfsWMYCh">
    <property role="TrG5h" value="typeof_Input" />
    <node concept="3clFbS" id="3azPfsWMYCi" role="18ibNy">
      <node concept="1Z5TYs" id="3azPfsWMYDS" role="3cqZAp">
        <node concept="mw_s8" id="4BZl$1MJ4iR" role="1ZfhKB">
          <node concept="2c44tf" id="4BZl$1MJ4iN" role="mwGJk">
            <node concept="17QB3L" id="4BZl$1MJ4jI" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="3azPfsWMYDV" role="1ZfhK$">
          <node concept="1Z2H0r" id="3azPfsWMYCo" role="mwGJk">
            <node concept="1YBJjd" id="3azPfsWMYCR" role="1Z2MuG">
              <ref role="1YBMHb" node="3azPfsWMYCk" resolve="input" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3azPfsWMYCk" role="1YuTPh">
      <property role="TrG5h" value="input" />
      <ref role="1YaFvo" to="nh3v:5C6J16bXvOC" resolve="Input" />
    </node>
  </node>
  <node concept="1YbPZF" id="3azPfsWMYET">
    <property role="TrG5h" value="typeof_State" />
    <node concept="3clFbS" id="3azPfsWMYEU" role="18ibNy">
      <node concept="1Z5TYs" id="3azPfsWMYGw" role="3cqZAp">
        <node concept="mw_s8" id="3azPfsWMYGW" role="1ZfhKB">
          <node concept="2c44tf" id="4BZl$1MIZFL" role="mwGJk">
            <node concept="3uibUv" id="4BZl$1MIZGm" role="2c44tc">
              <ref role="3uigEE" to="l3u7:6P_J0iDge4$" resolve="State" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="3azPfsWMYGz" role="1ZfhK$">
          <node concept="1Z2H0r" id="3azPfsWMYF0" role="mwGJk">
            <node concept="1YBJjd" id="3azPfsWMYFv" role="1Z2MuG">
              <ref role="1YBMHb" node="3azPfsWMYEW" resolve="state" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3azPfsWMYEW" role="1YuTPh">
      <property role="TrG5h" value="state" />
      <ref role="1YaFvo" to="nh3v:5C6J16bWu_e" resolve="State" />
    </node>
  </node>
  <node concept="1YbPZF" id="3azPfsWMYHx">
    <property role="TrG5h" value="typeof_Transition" />
    <node concept="3clFbS" id="3azPfsWMYHy" role="18ibNy">
      <node concept="1Z5TYs" id="4BZl$1MJ00u" role="3cqZAp">
        <node concept="mw_s8" id="4BZl$1MJ02q" role="1ZfhKB">
          <node concept="2c44tf" id="4BZl$1MJ02m" role="mwGJk">
            <node concept="3uibUv" id="4BZl$1MJ4aO" role="2c44tc">
              <ref role="3uigEE" to="l3u7:6P_J0iDgaJv" resolve="Transition" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="4BZl$1MJ00x" role="1ZfhK$">
          <node concept="1Z2H0r" id="4BZl$1MIZVH" role="mwGJk">
            <node concept="1YBJjd" id="4BZl$1MIZWy" role="1Z2MuG">
              <ref role="1YBMHb" node="3azPfsWMYH$" resolve="transition" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3azPfsWMYH$" role="1YuTPh">
      <property role="TrG5h" value="transition" />
      <ref role="1YaFvo" to="nh3v:5C6J16bWu_f" resolve="Transition" />
    </node>
  </node>
  <node concept="18kY7G" id="lDEcpPHzLu">
    <property role="TrG5h" value="check_Fsm" />
    <node concept="3clFbS" id="lDEcpPHzLv" role="18ibNy">
      <node concept="3clFbF" id="lDEcpPMl4f" role="3cqZAp">
        <node concept="2OqwBi" id="lDEcpPMlSK" role="3clFbG">
          <node concept="2OqwBi" id="lDEcpPMl5Z" role="2Oq$k0">
            <node concept="1YBJjd" id="lDEcpPMl4d" role="2Oq$k0">
              <ref role="1YBMHb" node="lDEcpPHzW0" resolve="fsm" />
            </node>
            <node concept="2qgKlT" id="lDEcpPMliO" role="2OqNvi">
              <ref role="37wK5l" to="km3c:lDEcpPHU09" resolve="getUnreachableStates" />
            </node>
          </node>
          <node concept="2es0OD" id="lDEcpPMpFv" role="2OqNvi">
            <node concept="1bVj0M" id="lDEcpPMpFx" role="23t8la">
              <node concept="3clFbS" id="lDEcpPMpFy" role="1bW5cS">
                <node concept="a7r0C" id="lDEcpPI$_k" role="3cqZAp">
                  <node concept="3cpWs3" id="lDEcpPI$S7" role="a7wSD">
                    <node concept="Xl_RD" id="lDEcpPI$Pn" role="3uHU7w">
                      <property role="Xl_RC" value=" is unreachable." />
                    </node>
                    <node concept="3cpWs3" id="lDEcpPI$OV" role="3uHU7B">
                      <node concept="Xl_RD" id="lDEcpPI$AB" role="3uHU7B">
                        <property role="Xl_RC" value="State " />
                      </node>
                      <node concept="2OqwBi" id="lDEcpPI$ZG" role="3uHU7w">
                        <node concept="3TrcHB" id="lDEcpPI_cj" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                        <node concept="37vLTw" id="lDEcpPMwDp" role="2Oq$k0">
                          <ref role="3cqZAo" node="lDEcpPMpFz" resolve="it" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="lDEcpPNyhg" role="2OEOjV">
                    <ref role="3cqZAo" node="lDEcpPMpFz" resolve="it" />
                  </node>
                </node>
              </node>
              <node concept="Rh6nW" id="lDEcpPMpFz" role="1bW2Oz">
                <property role="TrG5h" value="it" />
                <node concept="2jxLKc" id="lDEcpPMpF$" role="1tU5fm" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="lDEcpPHzW0" role="1YuTPh">
      <property role="TrG5h" value="fsm" />
      <ref role="1YaFvo" to="nh3v:5C6J16bWoJC" resolve="Fsm" />
    </node>
  </node>
  <node concept="18kY7G" id="3rAnA9iKw9$">
    <property role="TrG5h" value="check_Input" />
    <node concept="3clFbS" id="3rAnA9iKw9_" role="18ibNy">
      <node concept="3clFbJ" id="3rAnA9iKwie" role="3cqZAp">
        <node concept="3clFbS" id="3rAnA9iKwif" role="3clFbx">
          <node concept="2MkqsV" id="3rAnA9iKCFO" role="3cqZAp">
            <node concept="1YBJjd" id="3rAnA9iKDla" role="2OEOjV">
              <ref role="1YBMHb" node="3rAnA9iKwaJ" resolve="input" />
            </node>
            <node concept="3cpWs3" id="3rAnA9iKCMp" role="2MkJ7o">
              <node concept="2OqwBi" id="3rAnA9iKCR1" role="3uHU7w">
                <node concept="1YBJjd" id="3rAnA9iKCMF" role="2Oq$k0">
                  <ref role="1YBMHb" node="3rAnA9iKwaJ" resolve="input" />
                </node>
                <node concept="3TrcHB" id="3rAnA9iKDfx" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="Xl_RD" id="3rAnA9iKCG0" role="3uHU7B">
                <property role="Xl_RC" value="Duplicate input " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3y3z36" id="3rAnA9iKCzx" role="3clFbw">
          <node concept="2OqwBi" id="3rAnA9iKBm9" role="3uHU7B">
            <node concept="2OqwBi" id="3rAnA9iKysW" role="2Oq$k0">
              <node concept="2OqwBi" id="3rAnA9iKwHh" role="2Oq$k0">
                <node concept="2OqwBi" id="3rAnA9iKwkD" role="2Oq$k0">
                  <node concept="1YBJjd" id="3rAnA9iKwiq" role="2Oq$k0">
                    <ref role="1YBMHb" node="3rAnA9iKwaJ" resolve="input" />
                  </node>
                  <node concept="2Xjw5R" id="3rAnA9iKwEq" role="2OqNvi">
                    <node concept="1xMEDy" id="3rAnA9iKwEs" role="1xVPHs">
                      <node concept="chp4Y" id="3rAnA9iKxcO" role="ri$Ld">
                        <ref role="cht4Q" to="nh3v:5C6J16bWu_e" resolve="State" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Rf3mk" id="3rAnA9iKxyZ" role="2OqNvi">
                  <node concept="1xMEDy" id="3rAnA9iKxz1" role="1xVPHs">
                    <node concept="chp4Y" id="3rAnA9iKxE_" role="ri$Ld">
                      <ref role="cht4Q" to="nh3v:5C6J16bXvOC" resolve="Input" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3zZkjj" id="3rAnA9iK$wL" role="2OqNvi">
                <node concept="1bVj0M" id="3rAnA9iK$wN" role="23t8la">
                  <node concept="3clFbS" id="3rAnA9iK$wO" role="1bW5cS">
                    <node concept="3clFbF" id="3rAnA9iK$_y" role="3cqZAp">
                      <node concept="3clFbC" id="3rAnA9iKAHq" role="3clFbG">
                        <node concept="2OqwBi" id="3rAnA9iKAUW" role="3uHU7w">
                          <node concept="1YBJjd" id="3rAnA9iKAMz" role="2Oq$k0">
                            <ref role="1YBMHb" node="3rAnA9iKwaJ" resolve="input" />
                          </node>
                          <node concept="3TrcHB" id="3rAnA9iKB9I" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3rAnA9iKA4x" role="3uHU7B">
                          <node concept="37vLTw" id="3rAnA9iK$_x" role="2Oq$k0">
                            <ref role="3cqZAo" node="3rAnA9iK$wP" resolve="it" />
                          </node>
                          <node concept="3TrcHB" id="3rAnA9iKAk$" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3rAnA9iK$wP" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3rAnA9iK$wQ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="34oBXx" id="3rAnA9iKBJL" role="2OqNvi" />
          </node>
          <node concept="3cmrfG" id="3rAnA9iKCwc" role="3uHU7w">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3rAnA9iKwaJ" role="1YuTPh">
      <property role="TrG5h" value="input" />
      <ref role="1YaFvo" to="nh3v:5C6J16bXvOC" resolve="Input" />
    </node>
  </node>
  <node concept="18kY7G" id="3rAnA9iLhTy">
    <property role="TrG5h" value="check_State" />
    <node concept="3clFbS" id="3rAnA9iLhTz" role="18ibNy">
      <node concept="3cpWs8" id="3rAnA9iLUCC" role="3cqZAp">
        <node concept="3cpWsn" id="3rAnA9iLUCF" role="3cpWs9">
          <property role="TrG5h" value="states" />
          <node concept="A3Dl8" id="3rAnA9iLUC_" role="1tU5fm">
            <node concept="3Tqbb2" id="3rAnA9iLUFL" role="A3Ik2">
              <ref role="ehGHo" to="nh3v:5C6J16bWu_e" resolve="State" />
            </node>
          </node>
          <node concept="2OqwBi" id="3rAnA9iLLjM" role="33vP2m">
            <node concept="2OqwBi" id="3rAnA9iLKUc" role="2Oq$k0">
              <node concept="1YBJjd" id="3rAnA9iLKR_" role="2Oq$k0">
                <ref role="1YBMHb" node="3rAnA9iLhT_" resolve="state" />
              </node>
              <node concept="2Xjw5R" id="3rAnA9iLLh4" role="2OqNvi">
                <node concept="1xMEDy" id="3rAnA9iLLh6" role="1xVPHs">
                  <node concept="chp4Y" id="3rAnA9iLLhu" role="ri$Ld">
                    <ref role="cht4Q" to="nh3v:5C6J16bWoJC" resolve="Fsm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Rf3mk" id="3rAnA9iLLBN" role="2OqNvi">
              <node concept="1xMEDy" id="3rAnA9iLLBP" role="1xVPHs">
                <node concept="chp4Y" id="3rAnA9iLLCo" role="ri$Ld">
                  <ref role="cht4Q" to="nh3v:5C6J16bWu_e" resolve="State" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cpWs8" id="3rAnA9iLs80" role="3cqZAp">
        <node concept="3cpWsn" id="3rAnA9iLs83" role="3cpWs9">
          <property role="TrG5h" value="initials" />
          <node concept="A3Dl8" id="3rAnA9iLs7X" role="1tU5fm">
            <node concept="3Tqbb2" id="3rAnA9iLsdM" role="A3Ik2">
              <ref role="ehGHo" to="nh3v:5C6J16bXz1x" resolve="Initial" />
            </node>
          </node>
          <node concept="2OqwBi" id="3rAnA9iLsIA" role="33vP2m">
            <node concept="2OqwBi" id="3rAnA9iLsgT" role="2Oq$k0">
              <node concept="1YBJjd" id="3rAnA9iLseS" role="2Oq$k0">
                <ref role="1YBMHb" node="3rAnA9iLhT_" resolve="state" />
              </node>
              <node concept="2Xjw5R" id="3rAnA9iLsCP" role="2OqNvi">
                <node concept="1xMEDy" id="3rAnA9iLsCR" role="1xVPHs">
                  <node concept="chp4Y" id="3rAnA9iLsDG" role="ri$Ld">
                    <ref role="cht4Q" to="nh3v:5C6J16bWoJC" resolve="Fsm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Rf3mk" id="3rAnA9iLt7v" role="2OqNvi">
              <node concept="1xMEDy" id="3rAnA9iLt7x" role="1xVPHs">
                <node concept="chp4Y" id="3rAnA9iLt8j" role="ri$Ld">
                  <ref role="cht4Q" to="nh3v:5C6J16bXz1x" resolve="Initial" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFbJ" id="3rAnA9iM4Fv" role="3cqZAp">
        <node concept="3clFbS" id="3rAnA9iM4Fx" role="3clFbx">
          <node concept="2Gpval" id="3rAnA9iLunh" role="3cqZAp">
            <node concept="2GrKxI" id="3rAnA9iLuni" role="2Gsz3X">
              <property role="TrG5h" value="s" />
            </node>
            <node concept="3clFbS" id="3rAnA9iLunj" role="2LFqv$">
              <node concept="2MkqsV" id="3rAnA9iLuok" role="3cqZAp">
                <node concept="Xl_RD" id="3rAnA9iLuow" role="2MkJ7o">
                  <property role="Xl_RC" value="No initial state defined" />
                </node>
                <node concept="2GrUjf" id="3rAnA9iLLKV" role="2OEOjV">
                  <ref role="2Gs0qQ" node="3rAnA9iLuni" resolve="s" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3rAnA9iLUKZ" role="2GsD0m">
              <ref role="3cqZAo" node="3rAnA9iLUCF" resolve="states" />
            </node>
          </node>
        </node>
        <node concept="3clFbC" id="3rAnA9iM65J" role="3clFbw">
          <node concept="3cmrfG" id="3rAnA9iM696" role="3uHU7w">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="2OqwBi" id="3rAnA9iM4Tr" role="3uHU7B">
            <node concept="37vLTw" id="3rAnA9iM4Jc" role="2Oq$k0">
              <ref role="3cqZAo" node="3rAnA9iLs83" resolve="initials" />
            </node>
            <node concept="34oBXx" id="3rAnA9iM5uS" role="2OqNvi" />
          </node>
        </node>
        <node concept="3eNFk2" id="3rAnA9iM6dH" role="3eNLev">
          <node concept="3eOSWO" id="3rAnA9iM8bU" role="3eO9$A">
            <node concept="3cmrfG" id="3rAnA9iM8c$" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="2OqwBi" id="3rAnA9iM6oE" role="3uHU7B">
              <node concept="37vLTw" id="3rAnA9iM6er" role="2Oq$k0">
                <ref role="3cqZAo" node="3rAnA9iLs83" resolve="initials" />
              </node>
              <node concept="34oBXx" id="3rAnA9iM73s" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbS" id="3rAnA9iM6dJ" role="3eOfB_">
            <node concept="2Gpval" id="3rAnA9iLUtS" role="3cqZAp">
              <node concept="2GrKxI" id="3rAnA9iLUtT" role="2Gsz3X">
                <property role="TrG5h" value="s" />
              </node>
              <node concept="3clFbS" id="3rAnA9iLUtU" role="2LFqv$">
                <node concept="2MkqsV" id="3rAnA9iLU$B" role="3cqZAp">
                  <node concept="2GrUjf" id="3rAnA9iLUZ0" role="2OEOjV">
                    <ref role="2Gs0qQ" node="3rAnA9iLUtT" resolve="s" />
                  </node>
                  <node concept="Xl_RD" id="3rAnA9iLU$N" role="2MkJ7o">
                    <property role="Xl_RC" value="Multiple initial states" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="3rAnA9iLUTR" role="2GsD0m">
                <ref role="3cqZAo" node="3rAnA9iLUCF" resolve="states" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="3rAnA9iLhT_" role="1YuTPh">
      <property role="TrG5h" value="state" />
      <ref role="1YaFvo" to="nh3v:5C6J16bWu_e" resolve="State" />
    </node>
  </node>
</model>

