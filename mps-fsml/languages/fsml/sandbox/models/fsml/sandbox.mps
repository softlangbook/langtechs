<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:991b0bc7-5f20-46b9-b57c-2a7ef5590f50(fsml.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="3ca542c6-0796-476b-b515-baf7e299923f" name="fsml" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
  </languages>
  <imports />
  <registry>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="3ca542c6-0796-476b-b515-baf7e299923f" name="fsml">
      <concept id="6212923611459668733" name="fsml.structure.Fsm" flags="ng" index="Vy7vA">
        <child id="6212923611459724317" name="states" index="Vyh$6" />
      </concept>
      <concept id="6212923611459724290" name="fsml.structure.State" flags="ng" index="Vyh$p">
        <child id="6212923611459724334" name="transitions" index="Vyh$P" />
        <child id="6212923611459734475" name="initial" index="Vynrg" />
      </concept>
      <concept id="6212923611459724293" name="fsml.structure.Transition" flags="ng" index="Vyh$u">
        <reference id="6212923611459724294" name="target" index="Vyh$t" />
        <child id="6212923611459724299" name="input" index="Vyh$g" />
        <child id="6212923611459724296" name="action" index="Vyh$j" />
      </concept>
      <concept id="6212923611459724259" name="fsml.structure.Input" flags="ng" index="VyhVS" />
      <concept id="6212923611459724258" name="fsml.structure.Action" flags="ng" index="VyhVT" />
      <concept id="6212923611459734502" name="fsml.structure.Initial" flags="ng" index="VynrX" />
    </language>
  </registry>
  <node concept="Vy7vA" id="5oSJhHHI99K">
    <node concept="Vyh$p" id="5oSJhHHI99L" role="Vyh$6">
      <property role="TrG5h" value="locked" />
      <node concept="Vyh$u" id="5oSJhHHIbw4" role="Vyh$P">
        <ref role="Vyh$t" node="5oSJhHHIbvQ" resolve="unlocked" />
        <node concept="VyhVS" id="5oSJhHHIbw5" role="Vyh$g">
          <property role="TrG5h" value="ticket" />
        </node>
        <node concept="VyhVT" id="5oSJhHHIbw8" role="Vyh$j">
          <property role="TrG5h" value="collect" />
        </node>
      </node>
      <node concept="Vyh$u" id="5oSJhHHIbwa" role="Vyh$P">
        <ref role="Vyh$t" node="5oSJhHHIbvU" resolve="exception" />
        <node concept="VyhVS" id="5oSJhHHIbwb" role="Vyh$g">
          <property role="TrG5h" value="pass" />
        </node>
        <node concept="VyhVT" id="5oSJhHHIbwh" role="Vyh$j">
          <property role="TrG5h" value="alarm" />
        </node>
      </node>
      <node concept="VynrX" id="5oSJhHHIbvO" role="Vynrg" />
    </node>
    <node concept="Vyh$p" id="5oSJhHHIbvQ" role="Vyh$6">
      <property role="TrG5h" value="unlocked" />
      <node concept="Vyh$u" id="5oSJhHHIbwz" role="Vyh$P">
        <node concept="VyhVS" id="5oSJhHHIbw$" role="Vyh$g">
          <property role="TrG5h" value="ticket" />
        </node>
        <node concept="VyhVT" id="5oSJhHHIbwB" role="Vyh$j">
          <property role="TrG5h" value="eject" />
        </node>
      </node>
      <node concept="Vyh$u" id="5oSJhHHIbwD" role="Vyh$P">
        <ref role="Vyh$t" node="5oSJhHHI99L" resolve="locked" />
        <node concept="VyhVS" id="5oSJhHHIbwE" role="Vyh$g">
          <property role="TrG5h" value="pass" />
        </node>
      </node>
    </node>
    <node concept="Vyh$p" id="5oSJhHHIbvU" role="Vyh$6">
      <property role="TrG5h" value="exception" />
      <node concept="Vyh$u" id="5oSJhHHIbwK" role="Vyh$P">
        <node concept="VyhVS" id="5oSJhHHIbwL" role="Vyh$g">
          <property role="TrG5h" value="ticket" />
        </node>
        <node concept="VyhVT" id="5oSJhHHIbwO" role="Vyh$j">
          <property role="TrG5h" value="eject" />
        </node>
      </node>
      <node concept="Vyh$u" id="5oSJhHHIbwQ" role="Vyh$P">
        <node concept="VyhVS" id="5oSJhHHIbwR" role="Vyh$g">
          <property role="TrG5h" value="pass" />
        </node>
      </node>
      <node concept="Vyh$u" id="5oSJhHHIbwX" role="Vyh$P">
        <node concept="VyhVS" id="5oSJhHHIbwY" role="Vyh$g">
          <property role="TrG5h" value="mute" />
        </node>
      </node>
      <node concept="Vyh$u" id="5oSJhHHIbx6" role="Vyh$P">
        <ref role="Vyh$t" node="5oSJhHHI99L" resolve="locked" />
        <node concept="VyhVS" id="5oSJhHHIbx7" role="Vyh$g">
          <property role="TrG5h" value="release" />
        </node>
      </node>
      <node concept="Vyh$u" id="5pMCu57jdmW" role="Vyh$P">
        <ref role="Vyh$t" node="5oSJhHHIbvU" resolve="exception" />
        <node concept="VyhVS" id="5pMCu57jdqn" role="Vyh$g">
          <property role="TrG5h" value="sadsad" />
        </node>
        <node concept="VyhVT" id="5pMCu57jdqq" role="Vyh$j">
          <property role="TrG5h" value="asdsada" />
        </node>
      </node>
    </node>
  </node>
</model>

