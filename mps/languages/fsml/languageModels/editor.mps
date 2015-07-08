<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5cdda5a6-7d32-4a15-9e61-0da5b9d80598(fsml.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="nh3v" ref="r:e51f5db8-42a6-4d8a-b7f0-f72a6137a443(fsml.structure)" implicit="true" />
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
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
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
  <node concept="24kQdi" id="5C6J16bXwFW">
    <ref role="1XX52x" to="nh3v:5C6J16bXvOV" resolve="Action" />
    <node concept="3F0A7n" id="5C6J16bXz0T" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="5C6J16bXz13">
    <ref role="1XX52x" to="nh3v:5C6J16bXvOC" resolve="Input" />
    <node concept="3F0A7n" id="5C6J16bXz1c" role="2wV5jI">
      <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
    </node>
  </node>
  <node concept="24kQdi" id="5C6J16bXz1o">
    <ref role="1XX52x" to="nh3v:5C6J16bWu_e" resolve="State" />
    <node concept="3EZMnI" id="5C6J16bXz1q" role="2wV5jI">
      <node concept="3F1sOY" id="5C6J16bXzwU" role="3EZMnx">
        <ref role="1NtTu8" to="nh3v:5C6J16bXz1T" />
      </node>
      <node concept="3F0ifn" id="5C6J16bXzx0" role="3EZMnx">
        <property role="3F0ifm" value="state" />
      </node>
      <node concept="b$f91" id="5C6J16bXzxi" role="3EZMnx">
        <node concept="3F0A7n" id="5C6J16bXzxv" role="b$u42">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3EZMnI" id="5C6J16bZdo6" role="b$wch">
          <node concept="2iRkQZ" id="5C6J16bZdo7" role="2iSdaV" />
          <node concept="VPM3Z" id="5C6J16bZdo8" role="3F10Kt">
            <property role="VOm3f" value="false" />
          </node>
          <node concept="3F2HdR" id="5C6J16bZdod" role="3EZMnx">
            <ref role="1NtTu8" to="nh3v:5C6J16bW$1b" />
            <node concept="2iRkQZ" id="5C6J16bZdoe" role="2czzBx" />
          </node>
        </node>
      </node>
      <node concept="l2Vlx" id="5C6J16bXz1t" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5C6J16bXz2g">
    <ref role="1XX52x" to="nh3v:5C6J16bXz1x" resolve="Initial" />
    <node concept="3F0ifn" id="5C6J16bXz2i" role="2wV5jI">
      <property role="3F0ifm" value="initial" />
    </node>
  </node>
  <node concept="24kQdi" id="5C6J16bXzy1">
    <ref role="1XX52x" to="nh3v:5C6J16bWu_f" resolve="Transition" />
    <node concept="3EZMnI" id="5C6J16bXzy7" role="2wV5jI">
      <node concept="3F1sOY" id="5C6J16bXzye" role="3EZMnx">
        <ref role="1NtTu8" to="nh3v:5C6J16bXvPK" />
      </node>
      <node concept="3F0ifn" id="5C6J16bXzyk" role="3EZMnx">
        <property role="3F0ifm" value="/" />
        <node concept="pkWqt" id="5C6J16bYwOn" role="pqm2j">
          <node concept="3clFbS" id="5C6J16bYwOo" role="2VODD2">
            <node concept="3clFbF" id="5C6J16bYXpX" role="3cqZAp">
              <node concept="2OqwBi" id="5C6J16bZ80p" role="3clFbG">
                <node concept="2OqwBi" id="5C6J16bYXOJ" role="2Oq$k0">
                  <node concept="pncrf" id="5C6J16bYXpW" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5C6J16bZ7KX" role="2OqNvi">
                    <ref role="3Tt5mk" to="nh3v:5C6J16bXvPv" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5C6J16bZ8gY" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="5C6J16bXzyx" role="3EZMnx">
        <ref role="1NtTu8" to="nh3v:5C6J16bXvPv" />
      </node>
      <node concept="3F0ifn" id="5C6J16bXzyF" role="3EZMnx">
        <property role="3F0ifm" value="-&gt;" />
        <node concept="pkWqt" id="5C6J16bZ8nH" role="pqm2j">
          <node concept="3clFbS" id="5C6J16bZ8nI" role="2VODD2">
            <node concept="3clFbF" id="5C6J16bZ8sC" role="3cqZAp">
              <node concept="2OqwBi" id="5C6J16bZ8X0" role="3clFbG">
                <node concept="2OqwBi" id="5C6J16bZ8w$" role="2Oq$k0">
                  <node concept="pncrf" id="5C6J16bZ8sB" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5C6J16bZ8HH" role="2OqNvi">
                    <ref role="3Tt5mk" to="nh3v:5C6J16bW$1I" />
                  </node>
                </node>
                <node concept="3x8VRR" id="5C6J16bZ9mc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1iCGBv" id="5C6J16bXzyY" role="3EZMnx">
        <ref role="1NtTu8" to="nh3v:5C6J16bW$1I" />
        <node concept="1sVBvm" id="5C6J16bXzz0" role="1sWHZn">
          <node concept="3F0A7n" id="5C6J16bXzze" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="5C6J16bZfkN" role="3EZMnx">
        <property role="3F0ifm" value=";" />
      </node>
      <node concept="l2Vlx" id="5C6J16bXzya" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="5C6J16bXEGP">
    <ref role="1XX52x" to="nh3v:5C6J16bWoJC" resolve="Fsm" />
    <node concept="b$f91" id="1NW7PbAYlEb" role="2wV5jI">
      <node concept="3EZMnI" id="1NW7PbAYlEy" role="b$wch">
        <node concept="3F2HdR" id="1NW7PbAYlEJ" role="3EZMnx">
          <ref role="1NtTu8" to="nh3v:5C6J16bW$15" />
          <node concept="2iRkQZ" id="1NW7PbAYlEL" role="2czzBx" />
        </node>
        <node concept="2iRkQZ" id="1NW7PbAYlE_" role="2iSdaV" />
        <node concept="VPM3Z" id="1NW7PbAYlEA" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
      </node>
      <node concept="3F0ifn" id="1NW7PbAYlEp" role="b$u42">
        <property role="3F0ifm" value="fsm" />
      </node>
    </node>
  </node>
</model>

