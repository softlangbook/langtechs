<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2fb733e9-faad-46d2-b089-aa8af0db4b29(fsml.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="1e0d5fd6-c07a-4df5-9c9b-c73735ba6c37" name="fsml" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="1" />
  </languages>
  <imports>
    <import index="4dy3" ref="r:d52f619a-92bb-4609-884f-25be2b756cb6(fsml.runtime)" />
    <import index="fxg7" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" implicit="true" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="1e0d5fd6-c07a-4df5-9c9b-c73735ba6c37" name="fsml">
      <concept id="7780255817417852287" name="fsml.structure.Fsm" flags="ng" index="2D8C0e">
        <child id="4524322011154245748" name="states" index="3aBvqh" />
      </concept>
      <concept id="4524322011154212290" name="fsml.structure.State" flags="ng" index="3aABGB">
        <child id="4524322011154245760" name="initial" index="3aBvp_" />
        <child id="4524322011154245762" name="transitions" index="3aBvpB" />
      </concept>
      <concept id="4524322011154244496" name="fsml.structure.Initial" flags="ng" index="3aBvPP" />
      <concept id="4524322011154244455" name="fsml.structure.Transition" flags="ng" index="3aBvQ2">
        <reference id="4524322011154245782" name="target" index="3aBvpN" />
        <child id="4524322011154245777" name="input" index="3aBvpO" />
        <child id="4524322011154245779" name="action" index="3aBvpQ" />
      </concept>
      <concept id="4524322011154244431" name="fsml.structure.Action" flags="ng" index="3aBvQE" />
      <concept id="4524322011154244439" name="fsml.structure.Input" flags="ng" index="3aBvQM" />
    </language>
  </registry>
  <node concept="312cEu" id="3V9BInOl6SK">
    <property role="TrG5h" value="Sample" />
    <node concept="2tJIrI" id="3V9BInOl6SU" role="jymVt" />
    <node concept="Wx3nA" id="3V9BInOuKUv" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="SAMPLE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3V9BInOuKLg" role="1B3o_S" />
      <node concept="3uibUv" id="5WiIO$HDBCN" role="1tU5fm">
        <ref role="3uigEE" to="4dy3:5WiIO$HCxdj" resolve="Fsm" />
      </node>
      <node concept="2D8C0e" id="5WiIO$HDBE4" role="33vP2m">
        <node concept="3aABGB" id="5WiIO$HEcxS" role="3aBvqh">
          <property role="TrG5h" value="locked" />
          <node concept="3aBvQ2" id="5WiIO$HEcy3" role="3aBvpB">
            <ref role="3aBvpN" node="5WiIO$HEcy7" resolve="unlocked" />
            <node concept="3aBvQM" id="5WiIO$HEcyl" role="3aBvpO">
              <property role="TrG5h" value="ticket" />
            </node>
            <node concept="3aBvQE" id="5WiIO$HEcyo" role="3aBvpQ">
              <property role="TrG5h" value="collect" />
            </node>
          </node>
          <node concept="3aBvQ2" id="5WiIO$HEczM" role="3aBvpB">
            <ref role="3aBvpN" node="5WiIO$HEczx" resolve="exception" />
            <node concept="3aBvQM" id="5WiIO$HEczN" role="3aBvpO">
              <property role="TrG5h" value="pass" />
            </node>
            <node concept="3aBvQE" id="5WiIO$HEc$V" role="3aBvpQ">
              <property role="TrG5h" value="alarm" />
            </node>
          </node>
          <node concept="3aBvPP" id="5WiIO$HEMaM" role="3aBvp_" />
        </node>
        <node concept="3aABGB" id="5WiIO$HEcy7" role="3aBvqh">
          <property role="TrG5h" value="unlocked" />
          <node concept="3aBvQ2" id="5WiIO$HEc$a" role="3aBvpB">
            <node concept="3aBvQM" id="5WiIO$HEc$b" role="3aBvpO">
              <property role="TrG5h" value="ticket" />
            </node>
            <node concept="3aBvQE" id="5WiIO$HEc$e" role="3aBvpQ">
              <property role="TrG5h" value="eject" />
            </node>
          </node>
          <node concept="3aBvQ2" id="5WiIO$HEc$g" role="3aBvpB">
            <ref role="3aBvpN" node="5WiIO$HEcxS" resolve="locked" />
            <node concept="3aBvQM" id="5WiIO$HEc$h" role="3aBvpO">
              <property role="TrG5h" value="pass" />
            </node>
          </node>
        </node>
        <node concept="3aABGB" id="5WiIO$HEczx" role="3aBvqh">
          <property role="TrG5h" value="exception" />
          <node concept="3aBvQ2" id="5WiIO$HEc$n" role="3aBvpB">
            <node concept="3aBvQM" id="5WiIO$HEc$o" role="3aBvpO">
              <property role="TrG5h" value="ticket" />
            </node>
            <node concept="3aBvQE" id="5WiIO$HEc$r" role="3aBvpQ">
              <property role="TrG5h" value="eject" />
            </node>
          </node>
          <node concept="3aBvQ2" id="5WiIO$HEc$t" role="3aBvpB">
            <node concept="3aBvQM" id="5WiIO$HEc$u" role="3aBvpO">
              <property role="TrG5h" value="pass" />
            </node>
          </node>
          <node concept="3aBvQ2" id="5WiIO$HEc$$" role="3aBvpB">
            <node concept="3aBvQM" id="5WiIO$HEc$_" role="3aBvpO">
              <property role="TrG5h" value="mute" />
            </node>
          </node>
          <node concept="3aBvQ2" id="5WiIO$HEc$H" role="3aBvpB">
            <ref role="3aBvpN" node="5WiIO$HEcxS" resolve="locked" />
            <node concept="3aBvQM" id="5WiIO$HEc$S" role="3aBvpO">
              <property role="TrG5h" value="release" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="3Gk1ZKpF5gy" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="3Gk1ZKpF5gz" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="3Gk1ZKpF5g$" role="1tU5fm">
          <node concept="17QB3L" id="3Gk1ZKpF5g_" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="3Gk1ZKpF5gA" role="3clF45" />
      <node concept="3Tm1VV" id="3Gk1ZKpF5gB" role="1B3o_S" />
      <node concept="3clFbS" id="3Gk1ZKpF5gC" role="3clF47">
        <node concept="3cpWs8" id="3Gk1ZKpF7lh" role="3cqZAp">
          <node concept="3cpWsn" id="3Gk1ZKpF7lk" role="3cpWs9">
            <property role="TrG5h" value="input" />
            <node concept="10Q1$e" id="3Gk1ZKpF7mu" role="1tU5fm">
              <node concept="17QB3L" id="3Gk1ZKpF7lf" role="10Q1$1" />
            </node>
            <node concept="2BsdOp" id="3Gk1ZKpF7p1" role="33vP2m">
              <node concept="Xl_RD" id="3Gk1ZKpF7qS" role="2BsfMF">
                <property role="Xl_RC" value="ticket" />
              </node>
              <node concept="Xl_RD" id="3Gk1ZKpLeTu" role="2BsfMF">
                <property role="Xl_RC" value="ticket" />
              </node>
              <node concept="Xl_RD" id="3Gk1ZKpLi3B" role="2BsfMF">
                <property role="Xl_RC" value="pass" />
              </node>
              <node concept="Xl_RD" id="3Gk1ZKpMLKQ" role="2BsfMF">
                <property role="Xl_RC" value="pass" />
              </node>
              <node concept="Xl_RD" id="3Gk1ZKpMLXZ" role="2BsfMF">
                <property role="Xl_RC" value="ticket" />
              </node>
              <node concept="Xl_RD" id="3Gk1ZKpMMrf" role="2BsfMF">
                <property role="Xl_RC" value="mute" />
              </node>
              <node concept="Xl_RD" id="3Gk1ZKpMMF_" role="2BsfMF">
                <property role="Xl_RC" value="release" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Gk1ZKpF8xX" role="3cqZAp">
          <node concept="3cpWsn" id="3Gk1ZKpF8y0" role="3cpWs9">
            <property role="TrG5h" value="output" />
            <node concept="10Q1$e" id="3Gk1ZKpF8ze" role="1tU5fm">
              <node concept="17QB3L" id="3Gk1ZKpF8xV" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="3Gk1ZKpF5pF" role="33vP2m">
              <node concept="2ShNRf" id="3Gk1ZKpF5iq" role="2Oq$k0">
                <node concept="1pGfFk" id="3Gk1ZKpF5nm" role="2ShVmc">
                  <ref role="37wK5l" to="4dy3:3Gk1ZKpEY_5" resolve="FsmlSimulator" />
                  <node concept="37vLTw" id="3Gk1ZKpF8_D" role="37wK5m">
                    <ref role="3cqZAo" node="3V9BInOuKUv" resolve="SAMPLE" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3Gk1ZKpF5sD" role="2OqNvi">
                <ref role="37wK5l" to="4dy3:3Gk1ZKpEZiE" resolve="run" />
                <node concept="37vLTw" id="3Gk1ZKpF81S" role="37wK5m">
                  <ref role="3cqZAo" node="3Gk1ZKpF7lk" resolve="input" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Gk1ZKpLdJS" role="3cqZAp">
          <node concept="2OqwBi" id="3Gk1ZKpLdMt" role="3clFbG">
            <node concept="10M0yZ" id="3Gk1ZKpLdK9" role="2Oq$k0">
              <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
              <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3Gk1ZKpLgNB" role="2OqNvi">
              <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="2YIFZM" id="3Gk1ZKpLgSq" role="37wK5m">
                <ref role="37wK5l" to="e2lb:~String.join(java.lang.CharSequence,java.lang.CharSequence...):java.lang.String" resolve="join" />
                <ref role="1Pybhc" to="e2lb:~String" resolve="String" />
                <node concept="Xl_RD" id="3Gk1ZKpLgWI" role="37wK5m">
                  <property role="Xl_RC" value="," />
                </node>
                <node concept="37vLTw" id="3Gk1ZKpLh2g" role="37wK5m">
                  <ref role="3cqZAo" node="3Gk1ZKpF8y0" resolve="output" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5WiIO$HEczc" role="jymVt" />
    <node concept="3Tm1VV" id="3V9BInOl6SL" role="1B3o_S" />
  </node>
</model>
