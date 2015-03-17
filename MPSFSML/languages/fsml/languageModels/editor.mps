<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b96c9613-73f2-4fd9-bcd2-87fbb2243777(fsml.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="apm0" ref="r:cc3acd45-7791-412e-afd4-82c5b345c786(fsml.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1198489924438" name="jetbrains.mps.lang.editor.structure.CellModel_Block" flags="sg" stub="8104358048506730066" index="b$f91">
        <child id="1198489985045" name="header" index="b$u42" />
        <child id="1198489993734" name="body" index="b$wch" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="5oSJhHHGqha">
    <ref role="1XX52x" to="apm0:5oSJhHHGcFX" resolve="Fsm" />
    <node concept="3EZMnI" id="5oSJhHHGsHK" role="2wV5jI">
      <node concept="3F2HdR" id="5oSJhHHGsHR" role="3EZMnx">
        <ref role="1NtTu8" to="apm0:5oSJhHHGqgt" />
        <node concept="2iRkQZ" id="5oSJhHHGsHT" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="5oSJhHHGsHN" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5oSJhHHGsI6">
    <ref role="1XX52x" to="apm0:5oSJhHHGqg2" resolve="State" />
    <node concept="3EZMnI" id="5oSJhHHGsKy" role="2wV5jI">
      <node concept="3F1sOY" id="5oSJhHHGsKD" role="3EZMnx">
        <ref role="1NtTu8" to="apm0:5oSJhHHGsJb" />
      </node>
      <node concept="3F0ifn" id="5oSJhHHI9a5" role="3EZMnx">
        <property role="3F0ifm" value="state" />
        <node concept="VechU" id="7l4IkdCwkzI" role="3F10Kt">
          <node concept="1iSF2X" id="7l4IkdCwk$$" role="VblUZ">
            <property role="1iTho6" value="800080" />
          </node>
        </node>
        <node concept="Vb9p2" id="7l4IkdCwtwy" role="3F10Kt">
          <property role="Vbekb" value="PLAIN" />
        </node>
      </node>
      <node concept="b$f91" id="5oSJhHHGsKV" role="3EZMnx">
        <node concept="3EZMnI" id="5oSJhHHGsL8" role="b$wch">
          <node concept="3F2HdR" id="5oSJhHHGsLh" role="3EZMnx">
            <ref role="1NtTu8" to="apm0:5oSJhHHGqgI" />
            <node concept="2iRkQZ" id="5oSJhHHGsLj" role="2czzBx" />
          </node>
          <node concept="2iRkQZ" id="5oSJhHHGsLb" role="2iSdaV" />
          <node concept="VPM3Z" id="5oSJhHHGsLc" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
        </node>
        <node concept="3F0A7n" id="5oSJhHHI9ah" role="b$u42">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="l2Vlx" id="5oSJhHHGsK_" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5oSJhHHGsJY">
    <ref role="1XX52x" to="apm0:5oSJhHHGsJA" resolve="Initial" />
    <node concept="3F0ifn" id="5oSJhHHGsK0" role="2wV5jI">
      <property role="3F0ifm" value="initial" />
      <node concept="VechU" id="7l4IkdCwtt_" role="3F10Kt">
        <node concept="1iSF2X" id="7l4IkdCwttC" role="VblUZ">
          <property role="1iTho6" value="800080" />
        </node>
      </node>
      <node concept="Vb9p2" id="7l4IkdCwtuA" role="3F10Kt">
        <property role="Vbekb" value="PLAIN" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="5oSJhHHGsLH">
    <ref role="1XX52x" to="apm0:5oSJhHHGqg5" resolve="Transition" />
    <node concept="3EZMnI" id="5oSJhHHGsLQ" role="2wV5jI">
      <node concept="3F1sOY" id="5oSJhHHGsLX" role="3EZMnx">
        <ref role="1NtTu8" to="apm0:5oSJhHHGqgb" />
      </node>
      <node concept="3F0ifn" id="5oSJhHHGsM7" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <node concept="Vb9p2" id="7l4IkdCwwr6" role="3F10Kt" />
        <node concept="pkWqt" id="5oSJhHHGsMU" role="pqm2j">
          <node concept="3clFbS" id="5oSJhHHGsMV" role="2VODD2">
            <node concept="3clFbF" id="5oSJhHHGTnr" role="3cqZAp">
              <node concept="2OqwBi" id="5oSJhHHH9yI" role="3clFbG">
                <node concept="2OqwBi" id="5oSJhHHGTDB" role="2Oq$k0">
                  <node concept="pncrf" id="5oSJhHHGTnq" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5oSJhHHH9iP" role="2OqNvi">
                    <ref role="3Tt5mk" to="apm0:5oSJhHHGqg8" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5oSJhHHHa1n" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="5oSJhHHGsMk" role="3EZMnx">
        <ref role="1NtTu8" to="apm0:5oSJhHHGqg8" />
      </node>
      <node concept="3F0ifn" id="5oSJhHHGsMu" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
        <node concept="Vb9p2" id="7l4IkdCwx9Z" role="3F10Kt" />
        <node concept="pkWqt" id="5oSJhHHHaeN" role="pqm2j">
          <node concept="3clFbS" id="5oSJhHHHaeO" role="2VODD2">
            <node concept="3clFbF" id="5oSJhHHHaoY" role="3cqZAp">
              <node concept="2OqwBi" id="5oSJhHHHb5z" role="3clFbG">
                <node concept="2OqwBi" id="5oSJhHHHat6" role="2Oq$k0">
                  <node concept="pncrf" id="5oSJhHHHaoX" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5oSJhHHHaJI" role="2OqNvi">
                    <ref role="3Tt5mk" to="apm0:5oSJhHHGqg6" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5oSJhHHHb$b" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="5oSJhHHGsME" role="3EZMnx">
        <ref role="1NtTu8" to="apm0:5oSJhHHGqg6" />
        <node concept="1sVBvm" id="5oSJhHHGsMG" role="1sWHZn">
          <node concept="3F0A7n" id="5oSJhHHGsMR" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5oSJhHHGsLT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5oSJhHHHbLO">
    <ref role="1XX52x" to="apm0:5oSJhHHGqfR" resolve="Id" />
    <node concept="3F0A7n" id="5oSJhHHHbLQ" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="5oSJhHHHbMG">
    <ref role="1XX52x" to="apm0:5oSJhHHGqfz" resolve="Input" />
    <node concept="3F0A7n" id="5oSJhHHHbMI" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="5oSJhHHHbNC">
    <ref role="1XX52x" to="apm0:5oSJhHHGqfy" resolve="Action" />
    <node concept="3F0A7n" id="5oSJhHHHbNE" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
</model>

