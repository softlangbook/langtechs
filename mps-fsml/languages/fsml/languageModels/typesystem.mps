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
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
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
</model>

