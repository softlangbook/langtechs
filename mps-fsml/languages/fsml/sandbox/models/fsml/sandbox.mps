<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f4c1927b-a790-4c5f-9736-09108b185090(fsml.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="-1" />
    <use id="c07fade6-62c9-4222-a52b-3d2f0dcdd056" name="fsml" version="0" />
  </languages>
  <imports>
    <import index="l3u7" ref="r:20780eff-1266-433d-8cad-f755f70e5c38(fsml.runtime)" />
    <import index="e2lb" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" implicit="true" />
    <import index="fxg7" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" implicit="true" />
  </imports>
  <registry>
    <language id="c07fade6-62c9-4222-a52b-3d2f0dcdd056" name="fsml">
      <concept id="6487079096822411361" name="fsml.structure.Initial" flags="ng" index="3hW8LK" />
      <concept id="6487079096822398267" name="fsml.structure.Action" flags="ng" index="3hWO4E" />
      <concept id="6487079096822398248" name="fsml.structure.Input" flags="ng" index="3hWO4T" />
      <concept id="6487079096822107112" name="fsml.structure.Fsm" flags="ng" index="3hXNvT">
        <child id="6487079096822153285" name="states" index="3hXfLk" />
      </concept>
      <concept id="6487079096822131023" name="fsml.structure.Transition" flags="ng" index="3hXPlu">
        <reference id="6487079096822153326" name="target" index="3hXfLZ" />
        <child id="6487079096822398303" name="action" index="3hWO5e" />
        <child id="6487079096822398320" name="input" index="3hWO5x" />
      </concept>
      <concept id="6487079096822131022" name="fsml.structure.State" flags="ng" index="3hXPlv">
        <child id="6487079096822411385" name="initial" index="3hW8LC" />
        <child id="6487079096822153291" name="transitions" index="3hXfLq" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188220165133" name="jetbrains.mps.baseLanguage.structure.ArrayLiteral" flags="nn" index="2BsdOp">
        <child id="1188220173759" name="item" index="2BsfMF" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3azPfsWKFvw">
    <property role="TrG5h" value="TurnstileFsm" />
    <node concept="2tJIrI" id="4BZl$1MJZmw" role="jymVt" />
    <node concept="Wx3nA" id="4BZl$1MJZzL" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="input" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4BZl$1MJZsz" role="1B3o_S" />
      <node concept="10Q1$e" id="4BZl$1MJZyf" role="1tU5fm">
        <node concept="17QB3L" id="4BZl$1MJZzh" role="10Q1$1" />
      </node>
      <node concept="2BsdOp" id="4BZl$1MJZCe" role="33vP2m">
        <node concept="Xl_RD" id="4BZl$1MJZEk" role="2BsfMF">
          <property role="Xl_RC" value="ticket" />
        </node>
        <node concept="Xl_RD" id="4BZl$1MK$ab" role="2BsfMF">
          <property role="Xl_RC" value="ticket" />
        </node>
        <node concept="Xl_RD" id="4BZl$1MK$iQ" role="2BsfMF">
          <property role="Xl_RC" value="pass" />
        </node>
        <node concept="Xl_RD" id="4BZl$1MK$qG" role="2BsfMF">
          <property role="Xl_RC" value="pass" />
        </node>
        <node concept="Xl_RD" id="4BZl$1MK$w3" role="2BsfMF">
          <property role="Xl_RC" value="ticket" />
        </node>
        <node concept="Xl_RD" id="4BZl$1MK$Ba" role="2BsfMF">
          <property role="Xl_RC" value="mute" />
        </node>
        <node concept="Xl_RD" id="4BZl$1MK$Jj" role="2BsfMF">
          <property role="Xl_RC" value="release" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4BZl$1MJZo8" role="jymVt" />
    <node concept="2YIFZL" id="4BZl$1MJj_1" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="4BZl$1MJj_2" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="4BZl$1MJj_3" role="1tU5fm">
          <node concept="17QB3L" id="4BZl$1MJj_4" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="4BZl$1MJj_5" role="3clF45" />
      <node concept="3Tm1VV" id="4BZl$1MJj_6" role="1B3o_S" />
      <node concept="3clFbS" id="4BZl$1MJj_7" role="3clF47">
        <node concept="3cpWs8" id="4BZl$1MJkl5" role="3cqZAp">
          <node concept="3cpWsn" id="4BZl$1MJkl6" role="3cpWs9">
            <property role="TrG5h" value="turnstileFsm" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4BZl$1MJkl7" role="1tU5fm">
              <ref role="3uigEE" to="l3u7:6P_J0iDggtA" resolve="Fsm" />
            </node>
            <node concept="3hXNvT" id="4BZl$1MJkoH" role="33vP2m">
              <node concept="3hXPlv" id="4BZl$1MJl15" role="3hXfLk">
                <property role="TrG5h" value="locked" />
                <node concept="3hW8LK" id="4BZl$1MJl24" role="3hW8LC" />
                <node concept="3hXPlu" id="4BZl$1MJVYR" role="3hXfLq">
                  <ref role="3hXfLZ" node="4BZl$1MJl32" resolve="unlocked" />
                  <node concept="3hWO4T" id="4BZl$1MJVYS" role="3hWO5x">
                    <property role="TrG5h" value="ticket" />
                  </node>
                  <node concept="3hWO4E" id="4BZl$1MJWOj" role="3hWO5e">
                    <property role="TrG5h" value="collect" />
                  </node>
                </node>
                <node concept="3hXPlu" id="4BZl$1MJWRX" role="3hXfLq">
                  <ref role="3hXfLZ" node="4BZl$1MJl55" resolve="exception" />
                  <node concept="3hWO4T" id="4BZl$1MJWRY" role="3hWO5x">
                    <property role="TrG5h" value="pass" />
                  </node>
                  <node concept="3hWO4E" id="4BZl$1MJWT6" role="3hWO5e">
                    <property role="TrG5h" value="alarm" />
                  </node>
                </node>
              </node>
              <node concept="3hXPlv" id="4BZl$1MJl32" role="3hXfLk">
                <property role="TrG5h" value="unlocked" />
                <node concept="3hXPlu" id="4BZl$1MJWUC" role="3hXfLq">
                  <node concept="3hWO4T" id="4BZl$1MJWUD" role="3hWO5x">
                    <property role="TrG5h" value="ticket" />
                  </node>
                  <node concept="3hWO4E" id="4BZl$1MJWWc" role="3hWO5e">
                    <property role="TrG5h" value="eject" />
                  </node>
                </node>
                <node concept="3hXPlu" id="4BZl$1MJWXd" role="3hXfLq">
                  <ref role="3hXfLZ" node="4BZl$1MJl15" resolve="locked" />
                  <node concept="3hWO4T" id="4BZl$1MJWXe" role="3hWO5x">
                    <property role="TrG5h" value="pass" />
                  </node>
                </node>
              </node>
              <node concept="3hXPlv" id="4BZl$1MJl55" role="3hXfLk">
                <property role="TrG5h" value="exception" />
                <node concept="3hXPlu" id="4BZl$1MJWZS" role="3hXfLq">
                  <node concept="3hWO4T" id="4BZl$1MJWZT" role="3hWO5x">
                    <property role="TrG5h" value="ticket" />
                  </node>
                  <node concept="3hWO4E" id="4BZl$1MJX11" role="3hWO5e">
                    <property role="TrG5h" value="eject" />
                  </node>
                </node>
                <node concept="3hXPlu" id="4BZl$1MJX25" role="3hXfLq">
                  <node concept="3hWO4T" id="4BZl$1MJX26" role="3hWO5x">
                    <property role="TrG5h" value="pass" />
                  </node>
                </node>
                <node concept="3hXPlu" id="4BZl$1MJX2K" role="3hXfLq">
                  <node concept="3hWO4T" id="4BZl$1MJX2L" role="3hWO5x">
                    <property role="TrG5h" value="mute" />
                  </node>
                </node>
                <node concept="3hXPlu" id="4BZl$1MJX3w" role="3hXfLq">
                  <ref role="3hXfLZ" node="4BZl$1MJl15" resolve="locked" />
                  <node concept="3hWO4T" id="4BZl$1MJX3x" role="3hWO5x">
                    <property role="TrG5h" value="release" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4BZl$1MKFXT" role="3cqZAp">
          <node concept="3cpWsn" id="4BZl$1MKFXR" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="output" />
            <node concept="10Q1$e" id="4BZl$1MKFZw" role="1tU5fm">
              <node concept="17QB3L" id="4BZl$1MKFYW" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="4BZl$1MKGak" role="33vP2m">
              <node concept="2ShNRf" id="4BZl$1MKG26" role="2Oq$k0">
                <node concept="1pGfFk" id="4BZl$1MKG7y" role="2ShVmc">
                  <ref role="37wK5l" to="l3u7:1NW7PbAXoO4" resolve="FsmlSimulator" />
                  <node concept="37vLTw" id="4BZl$1MKG9d" role="37wK5m">
                    <ref role="3cqZAo" node="4BZl$1MJkl6" resolve="turnstileFsm" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4BZl$1MKGdu" role="2OqNvi">
                <ref role="37wK5l" to="l3u7:1NW7PbAXpp2" resolve="run" />
                <node concept="37vLTw" id="4BZl$1MKGUF" role="37wK5m">
                  <ref role="3cqZAo" node="4BZl$1MJZzL" resolve="input" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="4BZl$1MKGhj" role="3cqZAp">
          <node concept="3clFbS" id="4BZl$1MKGhl" role="2LFqv$">
            <node concept="3clFbF" id="4BZl$1MKGBy" role="3cqZAp">
              <node concept="2OqwBi" id="4BZl$1MKGDO" role="3clFbG">
                <node concept="10M0yZ" id="4BZl$1MKGBx" role="2Oq$k0">
                  <ref role="1PxDUh" to="e2lb:~System" resolve="System" />
                  <ref role="3cqZAo" to="e2lb:~System.out" resolve="out" />
                </node>
                <node concept="liA8E" id="4BZl$1MKGNV" role="2OqNvi">
                  <ref role="37wK5l" to="fxg7:~PrintStream.println(java.lang.String):void" resolve="println" />
                  <node concept="37vLTw" id="4BZl$1MKGP7" role="37wK5m">
                    <ref role="3cqZAo" node="4BZl$1MKGhm" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="4BZl$1MKGhm" role="1Duv9x">
            <property role="TrG5h" value="o" />
            <node concept="17QB3L" id="4BZl$1MKGpw" role="1tU5fm" />
          </node>
          <node concept="37vLTw" id="4BZl$1MKG_P" role="1DdaDG">
            <ref role="3cqZAo" node="4BZl$1MKFXR" resolve="output" />
          </node>
        </node>
        <node concept="3clFbH" id="4BZl$1MKHxJ" role="3cqZAp" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3azPfsWKFvx" role="1B3o_S" />
  </node>
</model>

