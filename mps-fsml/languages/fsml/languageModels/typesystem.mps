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
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
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
</model>

